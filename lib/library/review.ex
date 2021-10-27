defmodule Library.Review do
  @moduledoc false

  use Ecto.Schema

  alias Library.User
  alias Library.Author
  alias Library.Book

  schema "review" do
    field :title, :string
    field :comment, :string

    belongs_to :user, User
    belongs_to :author, Author
    belongs_to :book, Book

    timestamps()
  end
end
