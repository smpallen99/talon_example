defmodule TalonExample.Web.PageController do
  use TalonExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
