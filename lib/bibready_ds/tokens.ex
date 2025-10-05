# lib/bibready_ds/tokens.ex
defmodule BibreadyDS.Tokens do
  @moduledoc """
  Design tokens - single source of truth for all design decisions.
  Organized by: Typography, Colors, Spacing, Border, Shadows, Animation
  """

  # ============================================================================
  # TYPOGRAPHY
  # ============================================================================

  @font_families %{
    sans: "font-sans",  # Overused Grotesk
    mono: "font-mono"   # Fallback monospace
  }

  @font_sizes %{
    xs: "text-xs",      # 12px
    sm: "text-sm",      # 14px
    base: "text-base",  # 16px
    lg: "text-lg",      # 18px
    xl: "text-xl",      # 20px
    "2xl": "text-2xl",  # 24px
    "3xl": "text-3xl",  # 30px
    "4xl": "text-4xl",  # 36px
    "5xl": "text-5xl",  # 48px
    "6xl": "text-6xl",  # 60px
    "7xl": "text-7xl",  # 72px
    "8xl": "text-8xl",  # 96px
    "9xl": "text-9xl"   # 128px
  }

  @font_weights %{
    light: "font-light",         # 300
    book: "font-book",           # 350 (custom)
    normal: "font-normal",       # 400
    medium: "font-medium",       # 500
    semibold: "font-semibold",   # 600
    bold: "font-bold",           # 700
    extrabold: "font-extrabold", # 800
    black: "font-black"          # 900
  }

  @line_heights %{
    none: "leading-none",       # 1
    tight: "leading-tight",     # 1.25
    snug: "leading-snug",       # 1.375
    normal: "leading-normal",   # 1.5
    relaxed: "leading-relaxed", # 1.625
    loose: "leading-loose"      # 2
  }

  @letter_spacing %{
    tighter: "tracking-tighter", # -0.05em
    tight: "tracking-tight",     # -0.025em
    normal: "tracking-normal",   # 0
    wide: "tracking-wide",       # 0.025em
    wider: "tracking-wider",     # 0.05em
    widest: "tracking-widest"    # 0.1em
  }

  # ============================================================================
  # COLORS
  # ============================================================================

  @colors %{
    # Base
    background: "background",
    foreground: "foreground",

    # Surface (grays scale)
    surface: %{
      50 => "surface-50",
      100 => "surface-100",
      200 => "surface-200",
      300 => "surface-300",
      400 => "surface-400",
      500 => "surface-500",
      600 => "surface-600",
      700 => "surface-700",
      800 => "surface-800",
      900 => "surface-900",
      950 => "surface-950"
    },

    dark: %{
      primary: "dark-primary",
      secondary: "dark-secondary",
      tertiary: "dark-tertiary"
    },

    light: %{
      primary: "light-primary",
      secondary: "light-secondary",
      tertiary: "light-tertiary"
    },

    # Brand
    primary: %{
      base: "primary",
      hover: "primary-hover",
      active: "primary-active",
      disabled: "primary-disabled"
    },

    # Semantic
    success: %{
      base: "success",
      lighter: "success-lighter",
      darker: "success-darker"
    },
    warning: %{
      base: "warning",
      lighter: "warning-lighter",
      darker: "warning-darker"
    },
    error: %{
      base: "error",
      lighter: "error-lighter",
      darker: "error-darker"
    },
    info: %{
      base: "info",
      lighter: "info-lighter",
      darker: "info-darker"
    },

    # Special
    destructive: %{
      base: "destructive",
      foreground: "destructive-foreground"
    }
  }

  # ============================================================================
  # SPACING
  # ============================================================================

    @spacing %{
      0 => "0",           # 0px
      :px => "px",        # 1px
      :"0.5" => "0.5",    # 2px - Exception
      1 => "1",           # 4px
      2 => "2",           # 8px
      3 => "3",           # 12px
      4 => "4",           # 16px
      5 => "5",           # 20px
      6 => "6",           # 24px
      7 => "7",           # 28px
      8 => "8",           # 32px
      9 => "9",           # 36px
      10 => "10",         # 40px
      11 => "11",         # 44px
      12 => "12",         # 48px
      13 => "13",         # 52px
      14 => "14",         # 56px
      15 => "15",         # 60px
      16 => "16",         # 64px
      20 => "20",         # 80px
      24 => "24",         # 96px
      28 => "28",         # 112px
      32 => "32",         # 128px
      36 => "36",         # 144px
      40 => "40",         # 160px
      44 => "44",         # 176px
      48 => "48",         # 192px
      52 => "52",         # 208px
      56 => "56",         # 224px
      60 => "60",         # 240px
      64 => "64",         # 256px
      72 => "72",         # 288px
      80 => "80",         # 320px
      96 => "96"          # 384px
    }

  # ============================================================================
  # BORDER
  # ============================================================================

  @border_width %{
    0 => "border-0",
    :default => "border",
    2 => "border-2",
    4 => "border-4",
    8 => "border-8"
  }

  # ============================================================================
  # SHADOWS
  # ============================================================================

  @shadows %{
    none: "shadow-none",
    sm: "shadow-sm",
    base: "shadow",
    md: "shadow-md",
    lg: "shadow-lg",
    xl: "shadow-xl",
    "2xl": "shadow-2xl",
    inner: "shadow-inner"
  }

  # ============================================================================
  # ANIMATION
  # ============================================================================

  @transitions %{
    none: "transition-none",
    all: "transition-all",
    colors: "transition-colors",
    opacity: "transition-opacity",
    shadow: "transition-shadow",
    transform: "transition-transform"
  }

  @durations %{
    75 => "duration-75",
    100 => "duration-100",
    150 => "duration-150",
    200 => "duration-200",
    300 => "duration-300",
    500 => "duration-500",
    700 => "duration-700",
    1000 => "duration-1000"
  }

  @easings %{
    linear: "ease-linear",
    in: "ease-in",
    out: "ease-out",
    in_out: "ease-in-out"
  }

  # ============================================================================
  # Z-INDEX
  # ============================================================================

  @z_index %{
    0 => "z-0",
    10 => "z-10",
    20 => "z-20",
    30 => "z-30",
    40 => "z-40",
    50 => "z-50",
    auto: "z-auto"
  }

  # ============================================================================
  # PUBLIC API
  # ============================================================================

  # Typography
  def font_family(key), do: Map.get(@font_families, key)
  def font_size(key), do: Map.get(@font_sizes, key)
  def font_weight(key), do: Map.get(@font_weights, key)
  def line_height(key), do: Map.get(@line_heights, key)
  def letter_spacing(key), do: Map.get(@letter_spacing, key)

  # Colors
  def color(key) when is_atom(key), do: Map.get(@colors, key)
  def color([parent | rest]) when is_atom(parent) do
    case Map.get(@colors, parent) do
      value when is_map(value) -> get_in(value, rest)
      value -> value
    end
  end

  # Spacing
  def spacing(key), do: Map.get(@spacing, key)

  # Border
  def radius(key), do: Map.get(@border_radius, key)
  def border_width(key), do: Map.get(@border_width, key)

  # Effects
  def shadow(key), do: Map.get(@shadows, key)
  def z_index(key), do: Map.get(@z_index, key)

  # Animation
  def transition(key), do: Map.get(@transitions, key)
  def duration(key), do: Map.get(@durations, key)
  def easing(key), do: Map.get(@easings, key)

  # ============================================================================
  # UTILITY HELPERS
  # ============================================================================

  # Color utilities
  def text_color([_ | _] = path), do: "text-#{color(path)}"
  def text_color(key), do: "text-#{color(key)}"

  def bg_color([_ | _] = path), do: "bg-#{color(path)}"
  def bg_color(key), do: "bg-#{color(key)}"

  def border_color([_ | _] = path), do: "border-#{color(path)}"
  def border_color(key), do: "border-#{color(key)}"

  # Spacing utilities
  def padding(size), do: "p-#{spacing(size)}"
  def padding_x(size), do: "px-#{spacing(size)}"
  def padding_y(size), do: "py-#{spacing(size)}"
  def padding_top(size), do: "pt-#{spacing(size)}"
  def padding_bottom(size), do: "pb-#{spacing(size)}"
  def padding_left(size), do: "pl-#{spacing(size)}"
  def padding_right(size), do: "pr-#{spacing(size)}"

  def margin(size), do: "m-#{spacing(size)}"
  def margin_x(size), do: "mx-#{spacing(size)}"
  def margin_y(size), do: "my-#{spacing(size)}"
  def margin_top(size), do: "mt-#{spacing(size)}"
  def margin_bottom(size), do: "mb-#{spacing(size)}"
  def margin_left(size), do: "ml-#{spacing(size)}"
  def margin_right(size), do: "mr-#{spacing(size)}"

  def gap(size), do: "gap-#{spacing(size)}"
end
