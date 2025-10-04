# lib/bibready_ds/tokens.ex
defmodule BibreadyDS.Tokens do
  @moduledoc """
  Design tokens - single source of truth for all design decisions.
  """

  # ============================================================================
  # COLORS
  # ============================================================================

  @colors %{
    # Base colors
    background: "background",

    # Surface colors (grays)
    surface: %{
      100 => "surface-100",
      200 => "surface-200",
      300 => "surface-300",
      400 => "surface-400",
      500 => "surface-500",
      600 => "surface-600",
      700 => "surface-700",
      800 => "surface-800",
      900 => "surface-900"
    },

    # Brand colors
    primary: %{
      base: "primary",
      hover: "primary-hover"
    },

    # Semantic colors
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

    failure: %{
      base: "failure",
      lighter: "failure-lighter",
      darker: "failure-darker"
    },

    destructive: %{
      base: "destructive",
      foreground: "destructive-foreground"
    }
  }

  # ============================================================================
  # TYPOGRAPHY
  # ============================================================================

  @font_sizes %{
    xs: "text-xs",
    sm: "text-sm",
    base: "text-base",
    lg: "text-lg",
    xl: "text-xl",
    "2xl": "text-2xl",
    "3xl": "text-3xl",
    "4xl": "text-4xl",
    "6xl": "text-6xl",
    "11xl": "text-11xl"
  }

  @font_weights %{
    normal: "font-normal",
    medium: "font-medium",
    semibold: "font-semibold",
    bold: "font-bold"
  }

  # ============================================================================
  # SPACING
  # ============================================================================

  @spacing %{
    0 => "0",
    1 => "1",
    2 => "2",
    3 => "3",
    4 => "4",
    6 => "6",
    8 => "8",
    12 => "12",
    16 => "16",
    24 => "24"
  }

  # ============================================================================
  # BORDER RADIUS
  # ============================================================================

  @radii %{
    none: "rounded-none",
    sm: "rounded-sm",
    md: "rounded-md",
    lg: "rounded-lg",
    full: "rounded-full"
  }

  # ============================================================================
  # PUBLIC API
  # ============================================================================

  def color(key) when is_atom(key), do: Map.get(@colors, key)
  def color([parent | rest]) when is_atom(parent) do
    case Map.get(@colors, parent) do
      value when is_map(value) -> get_in(value, rest)
      value -> value
    end
  end

  def font_size(key), do: Map.get(@font_sizes, key)
  def font_weight(key), do: Map.get(@font_weights, key)
  def spacing(key), do: Map.get(@spacing, key)
  def radius(key), do: Map.get(@radii, key)

  # Utility helpers
  def text_color([_ | _] = path), do: "text-#{color(path)}"
  def text_color(key), do: "text-#{color(key)}"

  def bg_color([_ | _] = path), do: "bg-#{color(path)}"
  def bg_color(key), do: "bg-#{color(key)}"

  def border_color([_ | _] = path), do: "border-#{color(path)}"
  def border_color(key), do: "border-#{color(key)}"

  def padding(size), do: "p-#{spacing(size)}"
  def padding_x(size), do: "px-#{spacing(size)}"
  def padding_y(size), do: "py-#{spacing(size)}"

  def gap(size), do: "gap-#{spacing(size)}"
end
