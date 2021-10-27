defmodule Library.Repo do
  @moduledoc false

  use Ecto.Repo,
    otp_app: :library,
    adapter: Ecto.Adapters.Postgres
end
