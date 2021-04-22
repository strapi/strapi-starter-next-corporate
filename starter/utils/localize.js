import { fetchAPI } from "./api"

export async function getLocalizedPage(targetLocale, pageContext) {
  const localization = pageContext.localizations.find(
    (localization) => localization.locale === targetLocale
  )
  const localePage = await fetchAPI(`/pages/${localization.id}`)
  return localePage
}

export function localizePath(page) {
  const { locale, defaultLocale, slug } = page

  if (locale === defaultLocale) {
    // The default locale is not prefixed
    return `/${slug}`
  }

  // The slug should have a localePrefix
  return `/${locale}/${slug}`
}

export async function listLocalizedPaths(pageContext) {
  const currentPage = {
    locale: pageContext.locale,
    href: localizePath(pageContext),
  }

  const paths = await Promise.all(
    pageContext.localizations.map(async (localization) => {
      const localePage = await fetchAPI(`/pages/${localization.id}`)
      const page = { ...pageContext, ...localePage }
      return {
        locale: page.locale,
        href: localizePath(page),
      }
    })
  )

  const localizedPaths = [currentPage, ...paths]

  // Check the default locale is first
  const defaultLocaleIndex = localizedPaths.findIndex(
    (path) => path.locale === pageContext.defaultLocale
  )

  if (defaultLocaleIndex !== 0) {
    // Grab the default locale by mutating the localizedPaths array
    const [defaultLoc] = localizedPaths.splice(defaultLocaleIndex, 1)
    // Add it to the front
    localizedPaths.unshift(defaultLoc)
  }

  return localizedPaths
}
