// assets/tailwind.config.js
const plugin = require("tailwindcss/plugin");

module.exports = {
  content: ["../lib/**/*.{ex,heex}", "../storybook/**/*.exs"],
  theme: {
    extend: {
      fontSize: {
        xs: "0.790rem",
        sm: "0.889rem",
        base: "1rem",
        lg: "1.125rem",
        xl: "1.266rem",
        "2xl": "1.424rem",
        "3xl": "1.602rem",
        "4xl": "1.802rem",
        "6xl": "2.281rem",
        "11xl": "4.110rem",
      },
      colors: {
        background: "#071022",
        surface: {
          100: "#E4E6E9",
          200: "#C3C6CF",
          300: "#9EA3B1",
          400: "#7E8495",
          500: "#60677A",
          600: "#444C60",
          700: "#2C3448",
          800: "#192134",
          900: "#071022",
        },
        primary: {
          DEFAULT: "#EED411",
          hover: "rgb(216, 211, 61)",
        },
        success: {
          DEFAULT: "rgb(70, 190, 59)",
          lighter: "rgb(130, 194, 124)",
          darker: "rgb(32, 158, 20)",
        },
        warning: {
          DEFAULT: "#e79a42",
          lighter: "rgb(231, 178, 117)",
          darker: "rgb(199, 114, 17)",
        },
        failure: {
          DEFAULT: "rgb(235, 66, 60)",
          lighter: "rgb(231, 130, 127)",
          darker: "rgb(207, 29, 23)",
        },
        destructive: {
          DEFAULT: "#FF3030",
          foreground: "#F4F6F8",
        },
      },
      borderRadius: {
        lg: "8px",
        md: "4px",
        sm: "2px",
      },
    },
  },
  plugins: [],
};
