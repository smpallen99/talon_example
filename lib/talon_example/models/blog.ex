defmodule TalonExample.Models.Blog do
  use TalonExample.Models.Base, schema: TalonExample.Models.Schema.Blog

  alias __MODULE__, as: Blog

  # def get_by_email(email) do
  #   Repo.get_by(User, email: email)
  # end

  def preload(blog, preloads) do
    Repo.preload(blog, preloads)
  end
end
