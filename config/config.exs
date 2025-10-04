# config/config.exs
import Config

config :bibready_ds, BibreadyDS.Storybook.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [html: PhoenixStorybook.ErrorHTML],
    layout: false
  ],
  pubsub_server: BibreadyDS.PubSub,
  live_view: [signing_salt: "bibready_ds_storybook"],
  secret_key_base: "lWocDjDYvAR+pzOCJRTGmocsKiUcV3bbT3xqpFYuOvEyFMx62A8Wmeos4cZWgP+T",
  http: [ip: {127, 0, 0, 1}, port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:storybook, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:storybook, ~w(--watch)]}
  ],
  live_reload: [
    patterns: [
      ~r"priv/static/(?!uploads/).*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"lib/bibready_ds/(components)/.*(ex|heex)$",
      ~r"storybook/.*(exs)$"
    ]
  ]

config :esbuild,
  version: "0.17.11",
  storybook: [
    args: ~w(js/storybook.js --bundle --target=es2017 --outdir=../priv/static/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

config :tailwind,
  version: "3.4.3",
  storybook: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]

config :phoenix, :json_library, Jason

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]
