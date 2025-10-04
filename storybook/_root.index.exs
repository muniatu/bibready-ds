# storybook/_root.index.exs
defmodule Storybook.Root do
  use PhoenixStorybook.Index

  def folder_icon, do: {:fa, "book-open", :light}
  def folder_name, do: "Bibready Design System"
  def folder_open?, do: true
end
