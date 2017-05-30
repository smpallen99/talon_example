defmodule TalonExample.Models.Schema.Base do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      import Ecto.{Query, Changeset}
      alias TalonExample.Repo
    end
  end
end

