# storybook/design_tokens/typography.story.exs
defmodule Storybook.DesignTokens.Typography do
  use PhoenixStorybook.Story, :page

  def doc, do: "Typography scale and font weights using Overused Grotesk"

  def render(assigns) do
    ~H"""
    <div class="p-8 bg-background text-foreground min-h-screen font-sans">
      <h1 class="text-4xl font-bold mb-2">Typography</h1>
      <p class="text-surface-400 mb-8">Overused Grotesk Variable Font</p>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-4">Font Sizes</h2>
        <div class="space-y-4">
          <p class="text-light-secondary">text-xs (0.790rem / 12.64px)</p>
          <div class="text-xs truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-sm (0.889rem / 14.22px)</p>
          <div class="text-sm truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-base (1rem / 16px)</p>
          <div class="text-base truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-lg (1.125rem / 18px)</p>
          <div class="text-lg truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-xl (1.266rem / 20.26px)</p>
          <div class="text-xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-2xl (1.424rem / 22.78px)</p>
          <div class="text-2xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-3xl (1.602rem / 25.63px)</p>
          <div class="text-3xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-4xl (1.802rem / 28.83px)</p>
          <div class="text-4xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-5xl (2.027rem / 32.43px)</p>
          <div class="text-5xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-6xl (2.281rem / 36.50px)</p>
          <div class="text-6xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-7xl (2.566rem / 41.06px)</p>
          <div class="text-7xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-8xl (3.247rem / 51.95px)</p>
          <div class="text-8xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-9xl (3.653rem / 58.45px)</p>
          <div class="text-9xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-10xl (4.110rem / 65.76px)</p>
          <div class="text-10xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-11xl (4.623rem / 73.97px)</p>
          <div class="text-11xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">text-12xl (5.201rem / 83.22px)</p>
          <div class="text-12xl truncate">The quick brown fox jumps over the lazy dog</div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-6">Font Weights</h2>
        <div class="space-y-4">
          <p class="text-light-secondary">font-light (300)</p>
          <div class="font-light text-xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">font-book (350)</p>
          <div class="font-book text-xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">font-normal (400)</p>
          <div class="font-normal text-xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">font-medium (500)</p>
          <div class="font-medium text-xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">font-semibold (600)</p>
          <div class="font-semibold text-xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">font-bold (700)</p>
          <div class="font-bold text-xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">font-extrabold (800)</p>
          <div class="font-extrabold text-xl truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">font-black (900)</p>
          <div class="font-black text-xl truncate">The quick brown fox jumps over the lazy dog</div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-6">Line Heights</h2>
        <div class="grid grid-cols-2 gap-8">
          <div>
            <p class="text-light-secondary mb-2">Tight (1.25)</p>
            <p class="text-base leading-tight">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
          </div>
          <div>
            <p class="text-light-secondary mb-2">Normal (1.5)</p>
            <p class="text-base leading-normal">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
          </div>
          <div>
            <p class="text-light-secondary mb-2">Relaxed (1.625)</p>
            <p class="text-base leading-relaxed">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
          </div>
          <div>
            <p class="text-light-secondary mb-2">Loose (2)</p>
            <p class="text-base leading-loose">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
          </div>
        </div>
      </section>

      <section>
        <h2 class="text-2xl font-semibold mb-6">Letter Spacing</h2>
        <div class="space-y-4">
          <p class="text-light-secondary">tracking-tighter (-0.05em)</p>
          <div class="tracking-tighter text-lg truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">tracking-tight (-0.025em)</p>
          <div class="tracking-tight text-lg truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">tracking-normal (0em)</p>
          <div class="tracking-normal text-lg truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">tracking-wide (0.025em)</p>
          <div class="tracking-wide text-lg truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">tracking-wider (0.05em)</p>
          <div class="tracking-wider text-lg truncate">The quick brown fox jumps over the lazy dog</div>

          <p class="text-light-secondary">tracking-widest (0.1em)</p>
          <div class="tracking-widest text-lg truncate">The quick brown fox jumps over the lazy dog</div>
        </div>
      </section>
    </div>
    """
  end
end
