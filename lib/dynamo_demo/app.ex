defmodule DynamoDemo.App do
  use Dynamo.Router
  use Dynamo.App

  get "/" do
    conn.resp 200, "-----> It works.\n"
  end

  get "/version" do
    conn.resp 200, "#{DynamoDemo.version}\n"
  end

  get "/hello" do
    conn.resp 200, "Hello World!\n"
  end
end
