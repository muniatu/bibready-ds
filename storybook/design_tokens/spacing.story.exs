# storybook/design_tokens/spacing.story.exs
defmodule Storybook.DesignTokens.Spacing do
  use PhoenixStorybook.Story, :page

  def doc, do: "Spacing scale based on 4px grid system"

  def render(assigns) do
    ~H"""
    <div class="p-8 bg-background text-light-primary font-sans min-h-screen">
      <h1 class="text-4xl font-bold mb-2">Spacing System</h1>
      <p class="text-light-secondary mb-8">4px grid system with 2px exception</p>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-6">Spacing Scale</h2>
        <div class="space-y-6">
          <div>
            <p class="text-light-secondary text-sm mb-2">0 (0px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-0"></div>
              <span class="text-light-tertiary text-sm">0px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">px (1px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-px"></div>
              <span class="text-light-tertiary text-sm">1px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">0.5 (2px) - Exception</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-0.5"></div>
              <span class="text-light-tertiary text-sm">2px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">1 (4px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-1"></div>
              <span class="text-light-tertiary text-sm">4px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">2 (8px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-2"></div>
              <span class="text-light-tertiary text-sm">8px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">3 (12px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-3"></div>
              <span class="text-light-tertiary text-sm">12px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">4 (16px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-4"></div>
              <span class="text-light-tertiary text-sm">16px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">5 (20px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-5"></div>
              <span class="text-light-tertiary text-sm">20px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">6 (24px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-6"></div>
              <span class="text-light-tertiary text-sm">24px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">7 (28px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-7"></div>
              <span class="text-light-tertiary text-sm">28px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">8 (32px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-8"></div>
              <span class="text-light-tertiary text-sm">32px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">9 (36px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-9"></div>
              <span class="text-light-tertiary text-sm">36px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">10 (40px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-10"></div>
              <span class="text-light-tertiary text-sm">40px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">11 (44px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-11"></div>
              <span class="text-light-tertiary text-sm">44px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">12 (48px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-12"></div>
              <span class="text-light-tertiary text-sm">48px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">16 (64px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-16"></div>
              <span class="text-light-tertiary text-sm">64px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">20 (80px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-20"></div>
              <span class="text-light-tertiary text-sm">80px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">24 (96px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-24"></div>
              <span class="text-light-tertiary text-sm">96px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">32 (128px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-32"></div>
              <span class="text-light-tertiary text-sm">128px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">40 (160px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-40"></div>
              <span class="text-light-tertiary text-sm">160px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">48 (192px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-48"></div>
              <span class="text-light-tertiary text-sm">192px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">56 (224px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-56"></div>
              <span class="text-light-tertiary text-sm">224px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">64 (256px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-64"></div>
              <span class="text-light-tertiary text-sm">256px</span>
            </div>
          </div>

          <div>
            <p class="text-light-secondary text-sm mb-2">96 (384px)</p>
            <div class="flex items-center gap-4">
              <div class="bg-primary h-12 w-96"></div>
              <span class="text-light-tertiary text-sm">384px</span>
            </div>
          </div>
        </div>
      </section>

      <section class="mb-12">
        <h2 class="text-2xl font-semibold mb-6">Common Usage Examples</h2>

        <div class="space-y-8">
          <div>
            <h3 class="text-lg font-semibold text-light-secondary mb-4">Padding</h3>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
              <div class="bg-surface-900 border border-surface-700">
                <div class="bg-primary-disabled p-2">
                  <div class="bg-surface-800 h-12 flex items-center justify-center text-sm">
                    p-2 (8px)
                  </div>
                </div>
              </div>
              <div class="bg-surface-900 border border-surface-700">
                <div class="bg-primary-disabled p-4">
                  <div class="bg-surface-800 h-12 flex items-center justify-center text-sm">
                    p-4 (16px)
                  </div>
                </div>
              </div>
              <div class="bg-surface-900 border border-surface-700">
                <div class="bg-primary-disabled p-6">
                  <div class="bg-surface-800 h-12 flex items-center justify-center text-sm">
                    p-6 (24px)
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div>
            <h3 class="text-lg font-semibold text-light-secondary mb-4">Gap</h3>
            <div class="bg-surface-900 p-6 border border-surface-700">
              <div class="flex gap-4">
                <div class="bg-primary h-12 w-12"></div>
                <div class="bg-primary h-12 w-12"></div>
                <div class="bg-primary h-12 w-12"></div>
              </div>
              <p class="text-light-tertiary text-sm mt-2">gap-4 (16px)</p>
            </div>
          </div>

          <div>
            <h3 class="text-lg font-semibold text-light-secondary mb-4">Margin</h3>
            <div class="bg-surface-900 p-6 border border-surface-700">
              <div class="bg-primary-disabled inline-block">
                <div class="bg-primary h-12 w-24 mb-4"></div>
              </div>
              <div class="bg-primary-disabled inline-block">
                <div class="bg-primary h-12 w-24"></div>
              </div>
              <p class="text-light-tertiary text-sm mt-2">mb-4 (16px) between items</p>
            </div>
          </div>
        </div>
      </section>

      <section>
        <h2 class="text-2xl font-semibold mb-6">4px Grid Benefits</h2>
        <div class="bg-surface-900 p-6 border border-surface-700">
          <ul class="space-y-2 text-light-secondary">
            <li>✓ Consistent vertical rhythm</li>
            <li>✓ Easy mental math (multiples of 4)</li>
            <li>✓ Compatible with 8px grid systems</li>
            <li>✓ Works well with most screen densities</li>
            <li>✓ 2px exception for fine-tuning when needed</li>
          </ul>
        </div>
      </section>
    </div>
    """
  end
end
