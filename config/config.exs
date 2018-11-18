# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ex_reason,
  ecto_repos: [ExReason.Repo]

# Configures the endpoint
config :ex_reason, ExReasonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OGpJa9ZNLzHtgm5g+Y0Oe3vEGgPeJU8Q4AQ2IrsI2HGS6X0TVzhVRi/DDCHLDOME",
  render_errors: [view: ExReasonWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExReason.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
