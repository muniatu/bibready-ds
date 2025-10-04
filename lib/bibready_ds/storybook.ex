defmodule BibreadyDS.Storybook do
  use PhoenixStorybook,
    otp_app: :bibready_ds,
    content_path: Path.expand("../../storybook", __DIR__),
    css_path: "/assets/app.css",
    js_path: "/assets/storybook.js",
    sandbox_class: "bibrace-sandbox",
    title: "Bibready Design System",
    compilation_mode: :eager,
    themes: [
      default: [name: "Default"],
      dark: [name: "Dark", dropdown_class: "dark"]
    ]
end
