defmodule Library.Migrations.CreateReviews do
  use Ecto.Migration

  def up do
    create table("reviews") do
      add :title, :string
      add :user_id, references(:users)
      add :author_id, references(:authors)
      add :book_id, references(:books)
      add :comment, :text

      timestamps()
    end
  end

  def down do
    drop table("reviews")
  end
end
