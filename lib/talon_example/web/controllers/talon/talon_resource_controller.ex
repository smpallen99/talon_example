defmodule TalonExample.Web.TalonResourceController do
  use TalonExample.Web, :controller
  use Talon.Controller, repo: TalonExample.Repo, context: TalonExample.Talon

  plug Talon.Plug.TalonResource
  plug Talon.Plug.LoadResource
  plug Talon.Plug.LoadAssociations
  plug Talon.Plug.LoadAssociatedCollections when action in [:new, :edit]
  plug Talon.Plug.Theme
  plug Talon.Plug.Layout
  plug Talon.Plug.View
  
  # Each of the controller actions can be overridden in this module

  # Override the show action
  # def show(conn, params) do
  #   IO.inspect params, label: params
  #   conn
  #   |> assign(:something, "something")
  #   |> super(paams)
  # end
  
end
