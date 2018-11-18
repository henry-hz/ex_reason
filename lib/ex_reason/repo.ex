defmodule ExReason.Repo do
  use Ecto.Repo,
    otp_app: :ex_reason,
    adapter: Ecto.Adapters.Postgres
end
