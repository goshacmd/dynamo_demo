defmodule DynamoDemo.App do
  use Dynamo.Router
  use Dynamo.App

  get "/" do
    conn.resp 200, "-----> It works."
  end

  get "/version" do
    conn.resp 200, DynamoDemo.version
  end

  get "/hello" do
    conn.resp 200, "Hello World!"
  end
end
