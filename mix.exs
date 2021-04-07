defmodule EosjsAuthWrapper.MixProject do
  use Mix.Project

  def project do
    [
      app: :eosjs_auth_wrapper,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      aliases: aliases(),
      deps: deps()
    ]
  end

  def application do
    [
      mod: {EosjsAuthWrapper.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:nodejs, "~> 2.0"}
    ]
  end

  defp description() do
    "Elixir wrapper around EOS ECDSA based authentication"
  end

  defp package() do
    [
      licenses: [:MIT],
      links: %{"GitHub" => "https://github.com/venomnert/eosjs-auth-wrapper"}
    ]
  end

  defp aliases do
    [
      test: [
        "cmd npm run --prefix nodejs_auth develop",
        "test"
      ]
    ]
  end
end
