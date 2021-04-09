const development = {
    eosOptions: {
        httpEndpoint: process.env.EOS_DEV_ENDPOINT
    },
}

const production = {
    eosOptions: {
        httpEndpoint: process.env.EOS_PROD_ENDPOINT
    },
}

exports.development = development
exports.production = production
