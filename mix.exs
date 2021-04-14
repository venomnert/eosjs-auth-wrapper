defmodule EosjsAuthWrapper.MixProject do
  use Mix.Project

  def project do
    [
      app: :eosjs_auth_wrapper,
      version: "0.1.7",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      aliases: aliases(),

      # Docs
      name: "EosjsAuthWrapper",
      source_url: "https://github.com/venomnert/eosjs-auth-wrappers",
      homepage_url: "https://github.com/venomnert/eosjs-auth-wrappers",
      # The main page in the docs
      docs: [main: "EosjsAuthWrapper", extras: ["README.md"]]
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
      {:nodejs, "~> 2.0"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Elixir wrapper around EOS ECDSA based authentication"
  end

  defp package() do
    [
      licenses: [:MIT],
      links: %{"GitHub" => "https://github.com/venomnert/eosjs-auth-wrapper"},
      files: ~w(lib/application.ex lib/eosjs_auth_wrapper.ex .formatter.exs mix.exs README* priv)
    ]
  end

  defp aliases do
    [
      publish: ["cmd yarn --cwd lib/nodejs_auth deploy", "hex.publish"],
      test: [
        "cmd yarn --cwd nodejs_auth develop",
        "test"
      ]
    ]
  end
end
