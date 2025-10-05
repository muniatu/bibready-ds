# storybook/design_tokens/colors.story.exs
defmodule Storybook.DesignTokens.Colors do
  use PhoenixStorybook.Story, :page

  def doc, do: "Color palette and design tokens"

  def render(assigns) do
    ~H"""
    <div class="p-8 bg-background text-light-primary font-sans min-h-screen">
      <h1 class="text-4xl font-bold mb-8">Color System</h1>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Primary Colors</h2>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
          <div class="space-y-2">
            <div class="h-24 bg-primary"></div>
            <div class="text-sm">
              <p class="font-semibold text-light-primary">Primary</p>
              <p class="text-light-tertiary">#EED411</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 bg-primary-hover"></div>
            <div class="text-sm">
              <p class="font-semibold text-light-primary">Primary Hover</p>
              <p class="text-light-tertiary">#d8d33d</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 bg-primary-active"></div>
            <div class="text-sm">
              <p class="font-semibold text-light-primary">Primary Active</p>
              <p class="text-light-tertiary">#c2bb35</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 bg-primary-disabled"></div>
            <div class="text-sm">
              <p class="font-semibold text-light-primary">Primary Disabled</p>
              <p class="text-light-tertiary">#75680d</p>
            </div>
          </div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Surface Colors (Gray Scale)</h2>
        <div class="grid grid-cols-2 md:grid-cols-6 gap-4">
          <div class="space-y-2">
            <div class="h-20 bg-surface-50 border border-surface-900"></div>
            <p class="text-xs text-center text-light-secondary">surface-50</p>
            <p class="text-xs text-center text-light-tertiary">#f5f5f5</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-100"></div>
            <p class="text-xs text-center text-light-secondary">surface-100</p>
            <p class="text-xs text-center text-light-tertiary">#e8e8e8</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-200"></div>
            <p class="text-xs text-center text-light-secondary">surface-200</p>
            <p class="text-xs text-center text-light-tertiary">#d1d1d1</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-300"></div>
            <p class="text-xs text-center text-light-secondary">surface-300</p>
            <p class="text-xs text-center text-light-tertiary">#b4b4b4</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-400"></div>
            <p class="text-xs text-center text-light-secondary">surface-400</p>
            <p class="text-xs text-center text-light-tertiary">#888888</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-500"></div>
            <p class="text-xs text-center text-light-secondary">surface-500</p>
            <p class="text-xs text-center text-light-tertiary">#6b6b6b</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-600"></div>
            <p class="text-xs text-center text-light-secondary">surface-600</p>
            <p class="text-xs text-center text-light-tertiary">#4e4e4e</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-700"></div>
            <p class="text-xs text-center text-light-secondary">surface-700</p>
            <p class="text-xs text-center text-light-tertiary">#3a3a3a</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-800"></div>
            <p class="text-xs text-center text-light-secondary">surface-800</p>
            <p class="text-xs text-center text-light-tertiary">#2a2a2a</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-900"></div>
            <p class="text-xs text-center text-light-secondary">surface-900</p>
            <p class="text-xs text-center text-light-tertiary">#1f1f1f</p>
          </div>
          <div class="space-y-2">
            <div class="h-20 bg-surface-950"></div>
            <p class="text-xs text-center text-light-secondary">surface-950</p>
            <p class="text-xs text-center text-light-tertiary">#161616</p>
          </div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Text Colors</h2>

        <div class="mb-8">
          <h3 class="text-lg font-semibold mb-4 text-light-secondary">light Text (for light backgrounds)</h3>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div class="bg-surface-950 p-6">
              <p class="text-light-primary text-lg mb-2">text-light-primary</p>
              <p class="text-light-tertiary text-sm">#f5f5f5 - Body text, headings</p>
            </div>
            <div class="bg-surface-950 p-6">
              <p class="text-light-secondary text-lg mb-2">text-light-secondary</p>
              <p class="text-light-tertiary text-sm">#b4b4b4 - Labels, supporting text</p>
            </div>
            <div class="bg-surface-950 p-6">
              <p class="text-light-tertiary text-lg mb-2">text-light-tertiary</p>
              <p class="text-light-tertiary text-sm">#888888 - Captions, disabled</p>
            </div>
          </div>
        </div>

        <div>
          <h3 class="text-lg font-semibold mb-4 text-light-secondary">Dark Text (for dark backgrounds)</h3>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div class="bg-surface-50 p-6 border border-surface-900">
              <p class="text-dark-primary text-lg mb-2">text-dark-primary</p>
              <p class="text-dark-tertiary text-sm">#161616 - Body text, headings</p>
            </div>
            <div class="bg-surface-50 p-6 border border-surface-900">
              <p class="text-dark-secondary text-lg mb-2">text-dark-secondary</p>
              <p class="text-dark-tertiary text-sm">#4e4e4e - Labels, supporting text</p>
            </div>
            <div class="bg-surface-50 p-6 border border-surface-900">
              <p class="text-dark-tertiary text-lg mb-2">text-dark-tertiary</p>
              <p class="text-dark-tertiary text-sm">#6b6b6b - Captions, disabled</p>
            </div>
          </div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Text on Primary</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
          <div class="bg-primary p-6">
            <p class="text-dark-primary text-lg mb-2">text-dark-primary</p>
            <p class="text-dark-primary opacity-70 text-sm">#161616 - Main text on primary buttons</p>
          </div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Semantic Colors</h2>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
          <div class="space-y-2">
            <div class="h-24 bg-success"></div>
            <div class="text-sm">
              <p class="font-semibold text-light-primary">Success</p>
              <p class="text-light-tertiary">#46be3b</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 bg-warning"></div>
            <div class="text-sm">
              <p class="font-semibold text-light-primary">Warning</p>
              <p class="text-light-tertiary">#e79a42</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 bg-error"></div>
            <div class="text-sm">
              <p class="font-semibold text-light-primary">Error</p>
              <p class="text-light-tertiary">#eb423c</p>
            </div>
          </div>
          <div class="space-y-2">
            <div class="h-24 bg-info"></div>
            <div class="text-sm">
              <p class="font-semibold text-light-primary">Info</p>
              <p class="text-light-tertiary">#3b82f6</p>
            </div>
          </div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Semantic Variants</h2>
        <div class="space-y-6">
          <div>
            <p class="text-sm text-light-tertiary mb-2">Success Variants</p>
            <div class="grid grid-cols-3 gap-4">
              <div class="space-y-2">
                <div class="h-20 bg-success-lighter"></div>
                <p class="text-xs text-center text-light-secondary">success-lighter</p>
              </div>
              <div class="space-y-2">
                <div class="h-20 bg-success"></div>
                <p class="text-xs text-center text-light-secondary">success</p>
              </div>
              <div class="space-y-2">
                <div class="h-20 bg-success-lighter"></div>
                <p class="text-xs text-center text-light-secondary">success-lighter</p>
              </div>
            </div>
          </div>

          <div>
            <p class="text-sm text-light-tertiary mb-2">Warning Variants</p>
            <div class="grid grid-cols-3 gap-4">
              <div class="space-y-2">
                <div class="h-20 bg-warning-lighter"></div>
                <p class="text-xs text-center text-light-secondary">warning-lighter</p>
              </div>
              <div class="space-y-2">
                <div class="h-20 bg-warning"></div>
                <p class="text-xs text-center text-light-secondary">warning</p>
              </div>
              <div class="space-y-2">
                <div class="h-20 bg-warning-lighter"></div>
                <p class="text-xs text-center text-light-secondary">warning-lighter</p>
              </div>
            </div>
          </div>

          <div>
            <p class="text-sm text-light-tertiary mb-2">Error Variants</p>
            <div class="grid grid-cols-3 gap-4">
              <div class="space-y-2">
                <div class="h-20 bg-error-lighter"></div>
                <p class="text-xs text-center text-light-secondary">error-lighter</p>
              </div>
              <div class="space-y-2">
                <div class="h-20 bg-error"></div>
                <p class="text-xs text-center text-light-secondary">error</p>
              </div>
              <div class="space-y-2">
                <div class="h-20 bg-error-lighter"></div>
                <p class="text-xs text-center text-light-secondary">error-lighter</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section>
        <h2 class="text-2xl font-semibold mb-4">Real World Examples</h2>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div class="bg-surface-900 p-6">
            <h3 class="text-light-primary text-xl font-semibold mb-2">light Surface Card</h3>
            <p class="text-light-secondary mb-4">This card uses light text colors on a light surface background.</p>
            <p class="text-light-tertiary text-sm">Updated 2 hours ago</p>
          </div>

          <div class="bg-surface-50 p-6 border border-surface-900">
            <h3 class="text-dark-primary text-xl font-semibold mb-2">dark Surface Card</h3>
            <p class="text-dark-secondary mb-4">This card uses dark text colors on a light surface background.</p>
            <p class="text-dark-tertiary text-sm">Updated 2 hours ago</p>
          </div>
        </div>

        <div class="mt-6">
          <button class="bg-primary px-6 py-3 text-dark-primary font-medium">
            Primary Button with Foreground Text
          </button>
        </div>
      </section>
    </div>
    """
  end
end
