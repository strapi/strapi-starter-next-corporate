import { getStrapiMedia } from "utils/media"
import NextImage from "next/image"
import PropTypes from "prop-types"
import { mediaPropTypes } from "utils/types"

const Image = ({ media }) => {
  const { url, alternativeText } = media

  const loader = ({ src }) => {
    return getStrapiMedia(src)
  }

  // TODO add placeholder
  return (
    <NextImage
      loader={loader}
      layout="responsive"
      width={media.width}
      height={media.height}
      objectFit="contain"
      src={url}
      alt={alternativeText || ""}
    />
  )
}

Image.propTypes = {
  media: mediaPropTypes.isRequired,
  className: PropTypes.string,
}

export default Image
