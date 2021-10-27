defmodule Library.Author do
  @moduledoc false

  use Ecto.Schema

  alias Library.Book
  alias Library.Review

  schema "authors" do
    field :first_name, :string
    field :last_name, :string

    has_many :books, Book
    has_many :reviews, Review
  end
end
