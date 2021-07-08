import { getPageData } from "utils/api"
import { parseCookies } from "utils/parse-cookies"

const preview = async (req, res) => {
  // Check the secret and next parameters
  // This secret should only be known to this API route and the CMS
  if (req.query.secret !== (process.env.PREVIEW_SECRET || "secret-token")) {
    return res.status(401).json({ message: "Invalid token" })
  }

  const cookies = parseCookies(req)
  const slugArray = req.query.slug.split("/")
  // Fetch the headless CMS to check if the provided `slug` exists
  const pageData = await getPageData(
    { slug: slugArray },
    cookies.NEXT_LOCALE,
    true
  )

  // If the slug doesn't exist prevent preview mode from being enabled
  if (!pageData) {
    return res.status(401).json({ message: "Invalid slug" })
  }

  // Enable Preview Mode by setting the cookies
  res.setPreviewData({})

  // Redirect to the path from the fetched post
  // We don't redirect to req.query.slug as that might lead to open redirect vulnerabilities
  // Prefix with locale so previews are available in all languages
  res.writeHead(307, {
    Location: `/${pageData.locale}/${pageData.slug}`,
  })
  res.end()
}

export default preview

// You can view Preview pages with URLs like this:
// http://localhost:3000/api/preview?secret=<preview-secret>&slug=<slug>
// where <preview-secret> is the secret token defined in your .env config
// and where <slug> is the slug you entered in Strapi for your page
// The slug must match the current locale
