defmodule TalonExample.Repo.Migrations.CreateTalonExample.Blogs.Blog do
  use Ecto.Migration

  def change do
    create table(:blogs_blogs) do
      add :name, :string

      timestamps()
    end

  end
end
