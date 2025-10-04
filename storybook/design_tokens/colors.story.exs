# storybook/design_tokens/colors.story.exs
defmodule Storybook.DesignTokens.Colors do
  use PhoenixStorybook.Story, :page

  def doc, do: "Color palette and design tokens"

  def render(assigns) do
    ~H"""
    <div class="p-8 bg-background text-white min-h-screen">
      <h1 class="text-4xl font-bold mb-8">Color System</h1>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Primary Colors</h2>
        <div class="grid grid-cols-2 gap-4">
          <div class="space-y-2">
            <div class="h-24 rounded-lg bg-primary"></div>
            <div class="text-sm">
              <p class="font-semibold">Primary</p>
              <p class="text-gray-400">#EED411</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 rounded-lg bg-primary-hover"></div>
            <div class="text-sm">
              <p class="font-semibold">Primary Hover</p>
              <p class="text-gray-400">rgb(216, 211, 61)</p>
            </div>
          </div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Surface Colors</h2>
        <div class="grid grid-cols-3 md:grid-cols-9 gap-2">
          <%= for level <- [100, 200, 300, 400, 500, 600, 700, 800, 900] do %>
            <div class="space-y-2">
              <div class={"h-20 rounded-lg bg-surface-#{level}"}></div>
              <p class="text-xs text-center">surface-<%= level %></p>
            </div>
          <% end %>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Semantic Colors</h2>
        <div class="grid grid-cols-2 md:grid-cols-3 gap-4">
          <div class="space-y-2">
            <div class="h-24 rounded-lg bg-success"></div>
            <div class="text-sm">
              <p class="font-semibold">Success</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 rounded-lg bg-warning"></div>
            <div class="text-sm">
              <p class="font-semibold">Warning</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 rounded-lg bg-failure"></div>
            <div class="text-sm">
              <p class="font-semibold">Failure</p>
            </div>
          </div>
        </div>
      </section>
    </div>
    """
  end
end
