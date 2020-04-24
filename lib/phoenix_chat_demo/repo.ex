defmodule PhoenixChatDemo.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_chat_demo,
    adapter: Ecto.Adapters.Postgres
end
