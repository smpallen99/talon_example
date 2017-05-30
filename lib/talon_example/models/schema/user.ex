defmodule TalonExample.Models.Schema.User do
  defmacro __using__(_) do
    quote do
      use TalonExample.Models.Schema.Base
      # use Coherence.Schema

      schema "users" do
        field :name, :string
        field :email, :string

        timestamps()
      end

      def changeset(model, params \\ %{}) do
        model
        |> cast(params, [:name, :email])
        |> validate_required([:name, :email])
        |> validate_format(:email, ~r/@/)
        |> unique_constraint(:email)
      end

    end
  end
end
