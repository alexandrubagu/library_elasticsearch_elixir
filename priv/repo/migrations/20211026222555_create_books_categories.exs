defmodule Library.Migrations.CreateBooksCategories do
  use Ecto.Migration

  def up do
    create table("books_categories") do
      add :book_id, references(:books)
      add :category_id, references(:categories)

      timestamps()
    end
  end

  def down do
    drop table("books_categories")
  end
end
