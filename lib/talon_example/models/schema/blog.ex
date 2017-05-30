defmodule TalonExample.Models.Schema.Blog do
  defmacro __using__(_) do
    quote do
      use TalonExample.Models.Schema.Base

      schema "blogs_blogs" do
        field :name, :string

        timestamps()
      end

      @doc false
      def changeset(model, attrs \\ %{}) do
        model
        |> cast(attrs, [:name])
        |> validate_required([:name])
      end
    end
  end
end
