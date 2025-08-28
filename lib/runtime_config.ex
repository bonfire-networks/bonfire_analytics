defmodule Bonfire.Analytics.RuntimeConfig do
  use Bonfire.Common.Localise

  @behaviour Bonfire.Common.ConfigModule
  def config_module, do: true

  @doc """
  Sets runtime configuration for the extension (typically by reading ENV variables).
  """
  def config do
    import Config

    config :phoenix_analytics,
      repo: Bonfire.Common.Repo,
      app_domain: System.get_env("HOSTNAME", "localhost"),
      cache_ttl: System.get_env("CACHE_TTL") || 60

    # config :bonfire_analytics,
    #   modularity: System.get_env("ENABLE_bonfire_analytics") || :disabled
  end
end
