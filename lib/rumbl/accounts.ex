defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Dushyant", username: "dushyantss"},
      %User{id: "2", name: "Falguni", username: "fagunia"},
      %User{id: "3", name: "Aditya", username: "adityaxxx"}
    ]
  end

  def get_user(id) do
    list_users()
    |> Enum.find(fn user -> user.id == id end)
  end

  def get_user_by(params) do
    list_users()
    |> Enum.find(fn user ->
      Enum.all?(params, fn {key, val} -> Map.get(user, key) == val end)
    end)
  end
end
