defmodule Library.User do
  @moduledoc false

  use Ecto.Schema

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
  end
end
