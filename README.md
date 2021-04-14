# EosjsAuthWrapper

This package is a wrapper for [EOSJS](https://github.com/EOSIO/eosjs-ecc) authentication that utilize ECDSA.

# Installation
## Prerequisites 
1. NodeJS 14.0 and greater is required
2. Set the following environment variable
  * `EOS_DEV_ENDPOINT=`
  * `EOS_PROD_ENDPOINT=`

## Include package
```elixir
def deps do
  [
    {:eosjs_auth_wrapper, "~> 0.1.7"}
  ]
end
```

# Extra API info
* `get_account_info/1` returns the result as [EOS](https://developers.eos.io/manuals/eos/latest/nodeos/plugins/chain_api_plugin/api-reference/index)
