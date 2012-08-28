defmodule DynamoDemo.Mixfile do
  use Mix.Project

  def project do
    [ app: :dynamo_demo,
      version: "0.0.1",
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  defp deps do
    [ { :mimetypes, git: "https://github.com/spawngrid/mimetypes.git" },
      { :cowboy, "0.6.1", git: "https://github.com/josevalim/cowboy.git" },
      { :dynamo, "0.1.0.dev", git: "https://github.com/josevalim/dynamo.git" },
      { :exjson, git: "https://github.com/guedes/exjson.git" } ]
  end
end
