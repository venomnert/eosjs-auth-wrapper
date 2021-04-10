defmodule EosjsAuthWrapper.Application do
  @moduledoc false

  use Application

  require Logger

  def start(_type, _args) do
    node_path = :code.priv_dir(:eosjs_auth_wrapper) |> to_string()

    children = [
      %{
        id: NodeJS,
        start:
          {NodeJS, :start_link,
           [
             [
               path: node_path,
               pool_size: 4
             ]
           ]}
      }
    ]

    opts = [strategy: :one_for_one, name: EosjsAuthWrapper.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
