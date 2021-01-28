import classNames from "classnames";
import PropTypes from "prop-types";
import { buttonLinkPropTypes } from "utils/types";

const Button = ({ button, appearance, compact = false, handleClick, loading = false }) => {
  
  const isLoading = () => {
    if (loading) {
      return (
        <svg
          viewBox="0 0 38 38"
          className="animate-spin h-5 w-5 stroke-current text-black-600 mr-2"
          xmlns="http://www.w3.org/2000/svg"
        >
          <g fill="none" fillRule="evenodd">
            <g transform="translate(1 1)" strokeWidth="2">
              <circle strokeOpacity=".5" cx="18" cy="18" r="18" />
              <path d="M36 18c0-9.94-8.06-18-18-18">
                <animateTransform
                  attributeName="transform"
                  type="rotate"
                  from="0 18 18"
                  to="360 18 18"
                  dur="1s"
                  repeatCount="indefinite"
                />
              </path>
            </g>
          </g>
        </svg>
      );
    }
  };

  return (
    <button link={button} onClick={handleClick}>
      <div
        className={classNames(
          // Common classes
          "flex w-full lg:w-auto text-center uppercase tracking-wide font-semibold text-base md:text-sm border-2 rounded-md",
          // Full-size button
          {
            "px-8 py-4": compact === false,
          },
          // Compact button
          {
            "px-6 py-2": compact === true,
          },
          // Specific to when the button is fully dark
          {
            "bg-primary-600 text-white border-primary-600":
              appearance === "dark",
          },
          // Specific to when the button is dark outlines
          {
            "text-primary-600 border-primary-600":
              appearance === "dark-outline",
          },
          // Specific to when the button is fully white
          {
            "bg-white text-primary-600 border-white": appearance === "white",
          },
          // Specific to when the button is white outlines
          {
            "text-white border-white": appearance === "white-outline",
          }
        )}
      >
        {isLoading()} {button.text}
      </div>
    </button>
  );
};

Button.propTypes = {
  button: buttonLinkPropTypes,
  appearance: PropTypes.oneOf([
    "dark",
    "white-outline",
    "white",
    "dark-outline",
  ]),
  compact: PropTypes.bool,
};

export default Button;
