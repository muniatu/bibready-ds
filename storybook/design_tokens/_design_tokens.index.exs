# storybook/design_tokens/_design_tokens.index.exs
defmodule Storybook.DesignTokens do
  use PhoenixStorybook.Index

  def folder_name, do: "Design Tokens"
  def folder_icon, do: {:fa, "palette", :light}
  def folder_open?, do: true

  def entry("colors"), do: [name: "Colors", icon: {:fa, "droplet", :thin}]
  def entry("typography"), do: [name: "Typography", icon: {:fa, "font", :thin}]
end
