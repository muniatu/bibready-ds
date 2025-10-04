# lib/mix/tasks/storybook.ex
defmodule Mix.Tasks.Storybook do
  use Mix.Task

  @shortdoc "Runs the design system storybook"
  def run(_args) do
    Mix.Task.run("compile")
    Mix.Task.run("assets.build")

    Application.put_env(:phoenix, :serve_endpoints, true, persistent: true)

    {:ok, _} = Application.ensure_all_started(:bibready_ds)
    {:ok, _} = BibreadyDS.Storybook.Endpoint.start_link()

    Mix.shell().info("Storybook running at http://localhost:4000")

    # Keep the task running
    :timer.sleep(:infinity)
  end
end
