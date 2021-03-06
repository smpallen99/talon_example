# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :talon_example,
  ecto_repos: [TalonExample.Repo]

# Configures the endpoint
config :talon_example, TalonExample.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6ISb2/B7l5W3f1XDn7qTMOxt1lYMYxVOl+MeSMDi0N19NvPKBGLw/Q/eiFC9RS1K",
  render_errors: [view: TalonExample.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TalonExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine

import_config "talon.exs"

