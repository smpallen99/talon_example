use Mix.Config

config :talon, resources: [
    TalonExample.Talon.Models.User,
    TalonExample.Talon.Models.Blog,
    TalonExample.Talon.Models.Post,
  ],
  module: TalonExample,
  messages_backend: TalonExample.Web.Gettext,
  theme: "admin_lte",

  web_namespace: Web,

  schema_adapter: Talon.Schema.Adapters.Ecto
