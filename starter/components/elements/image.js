import { getStrapiMedia } from "utils/media"
import PropTypes from "prop-types"
import { mediaPropTypes } from "utils/types"

const Image = ({ media, className }) => {
  const { url, alternativeText } = media
  const fullUrl = getStrapiMedia(url)

  const alt = alternativeText || "An image uploaded to strapi"
  // TODO: https://github.com/strapi/strapi-starter-next-corporate/pull/44
  // eslint-disable-next-line 
  return <img src={fullUrl} alt={alt} className={className} />
}

Image.propTypes = {
  media: mediaPropTypes.isRequired,
  className: PropTypes.string,
}

export default Image
