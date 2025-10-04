# lib/bibready_ds/storybook/endpoint.ex
defmodule BibreadyDS.Storybook.Endpoint do
  use Phoenix.Endpoint, otp_app: :bibready_ds

  @session_options [
    store: :cookie,
    key: "_bibready_ds_key",
    signing_salt: "your-signing-salt",
    same_site: "Lax"
  ]

  socket "/live", Phoenix.LiveView.Socket,
    websocket: [connect_info: [session: @session_options]]

  socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket

  plug Phoenix.LiveReloader
  plug Phoenix.CodeReloader

  plug Plug.Static,
    at: "/",
    from: :bibready_ds,
    gzip: false,
    only: ~w(assets fonts images favicon.ico robots.txt)  # BACK TO THIS

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head
  plug Plug.Session, @session_options
  plug BibreadyDS.Storybook.Router
end
