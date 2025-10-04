# storybook/design_tokens/typography.story.exs
defmodule Storybook.DesignTokens.Typography do
  use PhoenixStorybook.Story, :page

  def doc, do: "Typography scale and font weights"

  def render(assigns) do
    ~H"""
    <div class="p-8 bg-background text-white min-h-screen">
      <h1 class="text-4xl font-bold mb-8">Typography</h1>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Font Sizes</h2>
        <div class="space-y-4">
          <div class="text-xs">text-xs: The quick brown fox jumps</div>
          <div class="text-sm">text-sm: The quick brown fox jumps</div>
          <div class="text-base">text-base: The quick brown fox jumps</div>
          <div class="text-lg">text-lg: The quick brown fox jumps</div>
          <div class="text-xl">text-xl: The quick brown fox jumps</div>
          <div class="text-2xl">text-2xl: The quick brown fox jumps</div>
          <div class="text-4xl">text-4xl: The quick brown fox</div>
          <div class="text-6xl">text-6xl: Quick Fox</div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Font Weights</h2>
        <div class="space-y-2 text-xl">
          <div class="font-normal">font-normal: The quick brown fox</div>
          <div class="font-medium">font-medium: The quick brown fox</div>
          <div class="font-semibold">font-semibold: The quick brown fox</div>
          <div class="font-bold">font-bold: The quick brown fox</div>
        </div>
      </section>
    </div>
    """
  end
end
