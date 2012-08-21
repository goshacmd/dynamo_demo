defmodule DynamoDemo.App do
  use Dynamo.Router

  get "/hello" do
    conn.resp(200, "Hello World!")
  end
end
