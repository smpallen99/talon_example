defmodule TalonExample.Models.Schema.Post do
  defmacro __using__(_) do
    quote do
      use TalonExample.Models.Schema.Base

      schema "blogs_posts" do
        field :title, :string
        field :body, :string
        # field :blog_id, :id
        belongs_to :blog, TalonExample.Models.Blog

        timestamps()
      end

      def changeset(model, params \\ %{}) do
        model
        |> cast(params, [:body, :title, :blog_id])
        |> validate_required([:body, :title, :blog_id])
      end
    end
  end
end
