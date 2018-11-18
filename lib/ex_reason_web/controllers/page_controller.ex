defmodule ExReasonWeb.PageController do
  use ExReasonWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
