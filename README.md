# EosjsAuthWrapper

This package is a wrapper for [EOSJS](https://github.com/EOSIO/eosjs-ecc) authentication that utilize ECDSA.

## Prerequisites 
* NodeJS 14.0 and greater is required

## Installation
1. Set the following environment variable
  * `NODE_ENV=[development|production]`
  * `EOS_DEV_ENDPOINT="https://staging.nertsiv.dev"`
  * `EOS_PROD_ENDPOINT="https://prod.nertsiv.dev"`

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `eosjs_auth_wrapper` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:eosjs_auth_wrapper, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/eosjs_auth_wrapper](https://hexdocs.pm/eosjs_auth_wrapper).

