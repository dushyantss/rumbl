defmodule RumblWeb.UserController do
  use RumblWeb, :controller

  alias Rumbl.Accounts

  def index(conn, _params) do
    render(conn, "index.html", users: Accounts.list_users())
  end

  def show(conn, %{"id" => id}) do
    render(conn, "show.html", user: Accounts.get_user(id))
  end
end
