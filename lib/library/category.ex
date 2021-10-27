defmodule Library.Category do
  @moduledoc false

  use Ecto.Schema

  alias Library.Book

  schema "categories" do
    field :name, :string

    many_to_many :books, Book, join_through: "books_categories"
  end
end
