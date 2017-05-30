defmodule TalonExample.Models.User do
  use TalonExample.Models.Base, schema: TalonExample.Models.Schema.User

  alias __MODULE__, as: User

  def get_by_email(email) do
    Repo.get_by(User, email: email)
  end

  def preload(user, preloads) do
    Repo.preload(user, preloads)
  end
end
