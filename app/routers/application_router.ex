defmodule ApplicationRouter do
  use Dynamo.Router

  # Example of `prepare/1` callback.
  prepare do
    conn = conn.set_resp_header "X-Powered-By", "Dynamo"
    conn = conn.set_resp_header "Content-Type", "application/json"
  end

  get "/" do
    conn.resp 200, JSON.generate []
  end

  get "/version" do
    conn.resp 200, JSON.generate [version: DynamoDemo.version]
  end

  get "/readme" do
    conn = conn.set_resp_header "Content-Type", "text/plain"
    conn.sendfile "README.md"
  end

  get "/hello" do
    conn.resp 200, JSON.generate [hello: "world"]
  end

  get "/hello/:name" do
    conn.resp 200, JSON.generate [hello: name]
  end

  get "/restricted" do
    conn.resp 451, "Unavailable For Legal Reasons"
  end
end
