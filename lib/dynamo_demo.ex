defmodule DynamoDemo do
  def start do
    :ok = :application.start(:dynamo_demo)
    Dynamo.Cowboy.run DynamoDemo.App
  end
end
