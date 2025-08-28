defmodule Bonfire.Common.Repo.Migrations.AddPhoenixAnalytics do
  use Ecto.Migration

  def up, do: PhoenixAnalytics.Migration.up()
  def down, do: PhoenixAnalytics.Migration.down()
end
defmodule Bonfire.Common.Repo.Migrations.AddPhoenixAnalyticsIndexes do
  use Ecto.Migration

  def change do
    PhoenixAnalytics.Migration.add_indexes()
  end
end
