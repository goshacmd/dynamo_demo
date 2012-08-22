defmodule DynamoDemo.App do
  use Dynamo.Router
  use Dynamo.App

  get "/" do
    conn.resp 200, "-----> It works."
  end

  get "/version" do
    version = Keyword.get DynamoDemo.Mixfile.project, :version
    conn.resp 200, version
  end

  get "/hello" do
    conn.resp 200, "Hello World!"
  end
end
