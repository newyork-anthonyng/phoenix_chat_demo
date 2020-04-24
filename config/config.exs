# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_chat_demo,
  ecto_repos: [PhoenixChatDemo.Repo]

# Configures the endpoint
config :phoenix_chat_demo, PhoenixChatDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6bjy/c0ilyZzfmZiYedBsA84XoK/sF0vitP1EQNXSr4UIYW+Mew7pt1IuTdSQ6ZD",
  render_errors: [view: PhoenixChatDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixChatDemo.PubSub,
  live_view: [signing_salt: "Td4PtHAF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
