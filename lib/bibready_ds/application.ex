# lib/bibready_ds/application.ex
defmodule BibreadyDS.Application do
  use Application

  def start(_type, _args) do
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: BibreadyDS.PubSub}
    ]

    opts = [strategy: :one_for_one, name: BibreadyDS.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
