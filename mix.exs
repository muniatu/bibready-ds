defmodule BibreadyDS.MixProject do
  use Mix.Project

  def project do
    [
      app: :bibready_ds,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),

      # Package info (for Hex)
      description: "BibReady Design System - UI components and tokens",
      package: package(),

      # Docs
      name: "BibreadyDS",
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {BibreadyDS.Application, []}
    ]
  end

  defp deps do
    [
      # Core Phoenix dependencies
      {:phoenix, "~> 1.7"},
      {:phoenix_html, "~> 4.1"},
      {:phoenix_live_view, "~> 1.0"},
      {:phoenix_pubsub, "~> 2.1"},
      {:plug_cowboy, "~> 2.5"},
      {:bandit, "~> 1.5"},
      {:jason, "~> 1.2"},

      # For components
      {:heroicons,
       github: "tailwindlabs/heroicons",
       tag: "v2.1.1",
       sparse: "optimized",
       app: false,
       compile: false,
       depth: 1},

      # Storybook (dev only)
      {:phoenix_storybook, "~> 0.9.0", only: :dev},
      {:phoenix_live_reload, "~> 1.2", only: :dev},

      # Assets
      {:tailwind, "~> 0.2", runtime: Mix.env() == :dev},
      {:esbuild, "~> 0.8", runtime: Mix.env() == :dev},

      # Dev/test
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      setup: ["deps.get", "assets.setup", "assets.build"],
      "assets.setup": ["tailwind.install --if-missing", "esbuild.install --if-missing"],
      "assets.build": ["tailwind storybook", "esbuild storybook"],
      "assets.deploy": ["tailwind storybook --minify", "esbuild storybook --minify"]
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/your-org/bibready_design_system"}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end
end
