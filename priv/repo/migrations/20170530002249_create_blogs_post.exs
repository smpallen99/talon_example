defmodule TalonExample.Repo.Migrations.CreateTalonExample.Blogs.Post do
  use Ecto.Migration

  def change do
    create table(:blogs_posts) do
      add :title, :string
      add :body, :text
      add :blog_id, references(:blogs_blogs, on_delete: :delete_all)

      timestamps()
    end

    create index(:blogs_posts, [:blog_id])
  end
end
