defmodule DebugMe.MixProject do
  use Mix.Project

  # @external_resource version_path = "VERSION"
  version_path = "VERSION"
  @version File.read!(version_path)

  def project do
    [
      app: :debug_me,
      version: @version,
      _version: @version,
      elixir: "~> 1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
    ]
  end
end
