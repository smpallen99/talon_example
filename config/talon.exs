use Mix.Config

config :talon, resources: [
  ],
  module: TalonExample,
  messages_backend: TalonExample.Web.Gettext,
  theme: "admin_lte",
  
  web_namespace: Web,
  
  schema_adapter: Talon.Schema.Adapters.Ecto
