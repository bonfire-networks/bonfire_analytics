defmodule Bonfire.Analytics do
  @moduledoc "./README.md" |> File.stream!() |> Enum.drop(1) |> Enum.join()

  use Bonfire.Common.Config
  use Bonfire.Common.Localise
  import Untangle
  import Bonfire.Common.Modularity.DeclareHelpers
  alias Bonfire.Common.Utils

  declare_extension(
    "Bonfire.Analytics",
    icon: "bi:app",
    description: l("An awesome extension")
    # default_nav: [
    #   Bonfire.Analytics.Web.HomeLive
    # ]
  )

  def repo, do: Config.repo()
end
