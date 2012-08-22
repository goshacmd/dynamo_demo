defmodule DynamoDemo do
  def version do
    Keyword.get DynamoDemo.Mixfile.project, :version
  end

  def start do
    :ok = :application.start(:dynamo_demo)
    Dynamo.Cowboy.run DynamoDemo.App, port: System.get_env("PORT") || 3000
  end
end
