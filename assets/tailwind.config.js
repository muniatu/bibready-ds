// assets/tailwind.config.js
const plugin = require("tailwindcss/plugin");

module.exports = {
  content: ["../lib/**/*.{ex,heex}", "../storybook/**/*.exs"],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Overused Grotesk", "system-ui", "sans-serif"],
        mono: ["ui-monospace", "monospace"],
      },
      fontWeight: {
        light: "300",
        book: "350",
        normal: "400",
        medium: "500",
        semibold: "600",
        bold: "700",
        extrabold: "800",
        black: "900",
      },
      fontSize: {
        xs: "0.790rem", // 12.64px
        sm: "0.889rem", // 14.22px
        base: "1rem", // 16px
        lg: "1.125rem", // 18px
        xl: "1.266rem", // 20.26px
        "2xl": "1.424rem", // 22.78px
        "3xl": "1.602rem", // 25.63px
        "4xl": "1.802rem", // 28.83px
        "5xl": "2.027rem", // 32.43px
        "6xl": "2.281rem", // 36.50px
        "7xl": "2.566rem", // 41.06px
        "8xl": "3.247rem", // 51.95px
        "9xl": "3.653rem", // 58.45px
        "10xl": "4.110rem", // 65.76px
        "11xl": "4.623rem", // 73.97px
        "12xl": "5.201rem", // 83.22px
      },
      colors: {
        background: "#161616",
        foreground: "#ffffff",
        surface: {
          50: "#f5f5f5",
          100: "#e8e8e8",
          200: "#d1d1d1",
          300: "#b4b4b4",
          400: "#888888",
          500: "#6b6b6b",
          600: "#4e4e4e",
          700: "#3a3a3a",
          800: "#2a2a2a",
          900: "#1f1f1f",
          950: "#161616",
        },
        // Text on dark surfaces (800-950)
        light: {
          primary: "#f5f5f5", // Body text, headings
          secondary: "#b4b4b4", // Labels, supporting text
          tertiary: "#888888", // Captions, disabled
        },

        // Text on light surfaces (50-200)
        dark: {
          primary: "#161616", // Body text, headings
          secondary: "#4e4e4e", // Labels, supporting text
          tertiary: "#6b6b6b", // Captions, disabled
        },
        primary: {
          DEFAULT: "#F9F91C",
          hover: "#E0E01A", // Slightly darker
          active: "#C7C718", // Even darker for active state
          disabled: "#7D7D0E", // Muted version
          foreground: "#161616", // Text on primary buttons
        },
        success: {
          DEFAULT: "#40FD4C",
          lighter: "#7DFE86", // Lighter, more pastel green
          darker: "#33CA3D", // Darker, more saturated green
        },
        warning: {
          DEFAULT: "#FFA72B",
          lighter: "#FFC266", // Lighter, softer orange
          darker: "#E68A0F", // Darker, more intense orange
        },
        error: {
          DEFAULT: "#FF4343",
          lighter: "#FF7A7A", // Lighter, softer red
          darker: "#E62E2E", // Darker, more intense red
        },
        info: {
          DEFAULT: "#29BFFF",
          lighter: "#6DD5FF", // Lighter, sky blue
          darker: "#1A9FE0", // Darker, deeper blue
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
