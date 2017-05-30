defmodule TalonExample.Models.Base do
  defmacro __using__(opts) do
    schema = Keyword.fetch!(opts, :schema)

    quote do
      use unquote(schema)
      alias TalonExample.Repo

      def list do
        Repo.all(__MODULE__)
      end

      def get!(id), do: Repo.get!(__MODULE__, id)

      def create(attrs \\ %{}) do
        %__MODULE__{}
        |> __MODULE__.changeset(attrs)
        |> Repo.insert()
      end

      def update(%__MODULE__{} = model, attrs) do
        model
        |> __MODULE__.changeset(attrs)
        |> Repo.update()
      end

      def delete(%__MODULE__{} = model) do
        Repo.delete(model)
      end
    end
  end
end
