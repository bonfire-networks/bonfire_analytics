defmodule Bonfire.Analytics.Web.Routes do
  @behaviour Bonfire.UI.Common.RoutesModule

  defmacro __using__(_) do
    quote do
      use PhoenixAnalytics.Web, :router
      
      # pages anyone can view
      scope "/", Bonfire.UI.Me do
        pipe_through(:browser)
      end

      # pages only guests can view
      scope "/", Bonfire.UI.Me do
        pipe_through(:browser)
        pipe_through(:guest_only)
      end

      # pages you need an account to view
      scope "/", Bonfire.Search.Web do
        pipe_through(:browser)
        pipe_through(:account_required)

        
      end

      # pages you need to view as a user
      scope "/", Bonfire.UI.Me do
        pipe_through(:browser)
        pipe_through(:user_required)
      end

      # pages only admins can view
      scope "/", Bonfire.UI.Me do
        pipe_through(:browser)
        pipe_through(:admin_required)

        phoenix_analytics_dashboard "/admin/analytics"
      end
    end
  end
end
