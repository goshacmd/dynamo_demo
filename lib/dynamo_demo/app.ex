defmodule DynamoDemo.App do
  use Dynamo.Router
  use Dynamo.App

  # Example of `prepare/1` callback.
  prepare do
    conn = conn.set_resp_header "X-Powered-By", "Dynamo"
    conn = conn.set_resp_header "Content-Type", "application/json"
  end

  get "/" do
    conn.resp 200, "{}\n"
  end

  get "/version" do
    conn.resp 200, "{\"version\":\"#{DynamoDemo.version}\"}\n"
  end

  get "/hello" do
    conn.resp 200, "{\"hello\":\"world\"}\n"
  end

  get "/hello/:name" do
    conn.resp 200, "{\"hello\":\"#{name}\"}\n"
  end
end
