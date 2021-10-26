defmodule Library.Migrations.CreateCategories do
  use Ecto.Migration

  def up do
    create table("categories") do
      add :name, :string

      timestamps()
    end
  end

  def down do
    drop table("categories")
  end
end
