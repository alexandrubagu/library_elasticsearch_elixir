defmodule Library.Migrations.CreateBooks do
  use Ecto.Migration

  def up do
    create table("books") do
      add :title, :string
      add :author_id, references(:authors)
      add :price, :float
      add :published_at, :naive_datetime

      timestamps()
    end
  end

  def down do
    drop table("books")
  end
end
