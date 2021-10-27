defmodule Library.Book do
  @moduledoc false

  use Ecto.Schema

  alias Library.Author
  alias Library.Review
  alias Library.Category

  schema "books" do
    field :title, :string
    field :price, :float
    field :published_at, :naive_datetime

    belongs_to :author, Author
    has_many :reviews, Review
    many_to_many :categories, Category, join_through: "books_categories"

    timestamps()
  end
end
