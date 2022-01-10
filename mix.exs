defmodule Membrane.CMAF.MixProject do
  use Mix.Project

  @version "0.5.0"
  @github_url "https://github.com/membraneframework/membrane_cmaf_format"

  def project do
    [
      app: :membrane_cmaf_format,
      version: @version,
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      description: "Membrane CMAF format",
      package: package(),
      name: "Membrane CMAF format",
      source_url: @github_url,
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: []
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      source_ref: "v#{@version}"
    ]
  end

  defp package do
    [
      maintainers: ["Membrane Team"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => @github_url,
        "Membrane Framework Homepage" => "https://membraneframework.org"
      }
    ]
  end

  defp deps do
    [
      {:membrane_core, "~> 0.8.0"},
      {:ex_doc, "~> 0.24.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.1.0", only: [:dev, :test], runtime: false}
    ]
  end
end
