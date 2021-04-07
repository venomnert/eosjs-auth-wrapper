defmodule EosjsAuthWrapper.Application do
  @moduledoc false

  use Application

  require Logger

  def start(_type, _args) do
    children = [
      %{
        id: NodeJS,
        # start: {NodeJS, :start_link, [[path: "./nodejs_auth/dist/js", pool_size: 4]]}
        start: {NodeJS, :start_link, [[path: "./nodejs_auth/js/", pool_size: 4]]}
      }
    ]

    opts = [strategy: :one_for_one, name: EosjsAuthWrapper.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
