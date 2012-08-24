defmodule DynamoDemo.Mixfile do
  use Mix.Project

  def project do
    [ app: :dynamo_demo,
      version: "0.0.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [ { :dynamo, git: "https://github.com/josevalim/dynamo.git" },
      { :cowboy, git: "https://github.com/josevalim/cowboy.git" },
      { :exjson, git: "https://github.com/guedes/exjson.git" } ]
  end
end
