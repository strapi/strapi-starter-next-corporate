import { useEffect, useState, useRef } from "react"
import { useRouter } from "next/router"
import PropTypes from "prop-types"
import Link from "next/link"

import WorldIcon from "./icons/world"

import { useOnClickOutside } from "../utils/hooks"
import {
  listLocalizedPaths,
  getLocalizedPage,
  localizePath,
} from "../utils/localize"

import { parseCookies } from "utils/parse-cookies"
import Cookies from "js-cookie"
import { MdExpandMore } from "react-icons/md"

const LocaleSwitch = ({ pageContext }) => {
  const isMounted = useRef(false)
  const select = useRef()
  const router = useRouter()
  const [locale, setLocale] = useState()
  const [showing, setShowing] = useState(false)
  const [localizedPaths, setLocalizedPaths] = useState()

  const handleLocaleChange = async (selectedLocale) => {
    // Persist the user's language preference
    // https://nextjs.org/docs/advanced-features/i18n-routing#leveraging-the-next_locale-cookie
    Cookies.set("NEXT_LOCALE", selectedLocale)
    setLocale(selectedLocale)
  }

  useOnClickOutside(select, () => setShowing(false))

  useEffect(() => {
    const changeLocale = async () => {
      if (
        !isMounted.current &&
        cookies.NEXT_LOCALE &&
        cookies.NEXT_LOCALE !== pageContext.locale
      ) {
        // Redirect to locale page if locale mismatch
        const localePage = await getLocalizedPage(
          cookies.NEXT_LOCALE,
          pageContext
        )

        router.push(
          `${localizePath({ ...pageContext, ...localePage })}`,
          `${localizePath({ ...pageContext, ...localePage })}`,
          { locale: localePage.locale }
        )
      }

      setShowing(false)
      const localizations = await listLocalizedPaths(pageContext)
      setLocalizedPaths(localizations)
    }

    const cookies = parseCookies()
    setLocale(cookies.NEXT_LOCALE || router.locale)
    changeLocale()

    return () => {
      isMounted.current = true
    }
  }, [locale, router])

  return (
    <div ref={select} className="relative ml-4 ">
      <button
        className="hover:bg-primary-50 hover:text-primary-600 focus:bg-primary-50 focus:text-primary-600 focus:outline-none flex items-center justify-between px-2 py-2 cursor-pointer h-full rounded-md w-20"
        onClick={() => setShowing(!showing)}
      >
        <WorldIcon />
        <span className="capitalize">{locale}</span>
        <MdExpandMore className="ml-1 text-primary-600" />
      </button>
      <div
        className={`w-full bg-white p-1 mt-1 shadow-lg rounded-md ${
          showing ? "absolute" : "hidden"
        }`}
      >
        {localizedPaths &&
          localizedPaths.map(({ href, locale }) => {
            return (
              <Link href={href} key={locale} locale={locale} role="option">
                <p
                  onClick={() => handleLocaleChange(locale)}
                  className="capitalize hover:bg-primary-50 hover:text-primary-600  cursor-pointer p-2 rounded-md text-center hover:text-primary-600"
                >
                  {locale}
                </p>
              </Link>
            )
          })}
      </div>
    </div>
  )
}

LocaleSwitch.propTypes = {
  initialLocale: PropTypes.string,
}

export default LocaleSwitch
