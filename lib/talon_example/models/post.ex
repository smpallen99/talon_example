defmodule TalonExample.Models.Post do
  use TalonExample.Models.Base, schema: TalonExample.Models.Schema.Post

  alias __MODULE__, as: Post

  # def get_by_email(email) do
  #   Repo.get_by(User, email: email)
  # end

  def preload(post, preloads) do
    Repo.preload(post, preloads)
  end
end
