module.exports = {
    entry: './index.js',
    module: {
        rules: [
            {
                test: /\.elm$/,
                exclude: [/elm-stuff/, /node_modules/, /vendor/],
                use: [
                    { loader: 'elm-hot-loader' },
                    {
                        loader : 'elm-webpack-loader',
                        options: {
                            debug: true,
                            warn: true,
                        }
                    }
                ]
            },
            {
                exclude: [/elm-stuff/, /node_modules/, /vendor/],
                test: /\.styl$/,
                loader: 'style-loader!css-loader!stylus-loader'
            }
        ]
    },

    devServer: {
        inline: true,
        stats: {
            errors : true,
            warnings : true,
            colors: true,
            hash: false,
            cached: false,
            chunkModules: false,
            entrypoints: false,
            env: false,
            modules: false,
            version: false,
        }
    }
};
