defmodule SimpleAssert.MixProject do
  use Mix.Project

  @source_url "https://github.com/miolab/simple_assert"
  @version "0.2.0"

  def project do
    [
      app: :simple_assert,
      version: @version,
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      description: "SimpleAssert asserts the given parameter is true or false.",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.1", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.28", only: :dev, runtime: false},
      {:mix_test_watch, "~> 1.1", only: [:dev, :test], runtime: false}
    ]
  end

  defp docs do
    [
      main: "SimpleAssert",
      source_ref: "v#{@version}",
      source_url: @source_url
    ]
  end

  defp package do
    [
      maintainers: ["imaima"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
