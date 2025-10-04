# lib/bibready_ds/styles.ex
defmodule BibreadyDS.Styles do
  @moduledoc """
  Style composer - builds component styles using design tokens.
  """

  alias BibreadyDS.Tokens

  @button_variants %{
    primary: [
      "bg-primary",
      "text-dark-primary",
      "hover:bg-primary-hover"
    ],
    secondary: [
      "bg-surface-600",
      "text-light-primary",
      "hover:bg-surface-700"
    ],
    outline: [
      "bg-transparent",
      "border",
      "border-surface-400",
      "hover:bg-surface-700"
    ],
    destructive: [
      "bg-destructive",
      "text-destructive-foreground",
      "hover:opacity-90"
    ]
  }

  @button_sizes %{
    sm: ["text-sm", "px-4", "py-2"],
    md: ["text-base", "px-6", "py-3"],
    lg: ["text-lg", "px-8", "py-4"]
  }

  # Button styles
  def button(variant \\ :primary, size \\ :md, extra \\ []) do
    base = [
      "rounded-md",
      "font-medium",
      "transition-colors",
      "inline-flex",
      "items-center",
      "justify-center",
      "cursor-pointer",
      "disabled:opacity-50",
      "disabled:cursor-not-allowed"
    ]

    variant_styles = Map.get(@button_variants, variant, @button_variants.primary)
    size_styles = Map.get(@button_sizes, size, @button_sizes.md)

    (base ++ variant_styles ++ size_styles ++ extra)
    |> Enum.join(" ")
  end

  # Input styles
  def input(state \\ :default, extra \\ []) do
    base = [
      "border",
      "rounded-md",
      "px-4",
      "py-2",
      "w-full",
      "focus:outline-none",
      "focus:ring-2"
    ]

    state_styles = case state do
      :error -> ["border-failure", "focus:border-failure", "focus:ring-failure"]
      _ -> ["border-surface-400", "focus:border-primary", "focus:ring-primary"]
    end

    (base ++ state_styles ++ extra)
    |> Enum.join(" ")
  end

  # Card styles
  def card(extra \\ []) do
    base = ["bg-surface-600", "rounded-lg", "p-4"]
    (base ++ extra) |> Enum.join(" ")
  end
end
