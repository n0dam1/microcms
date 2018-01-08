const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

environment.plugins.set(
  'Provide',
  new webpack.ProvidePlugin({
    jQuery: 'jquery/dist/jquery',
  })
)

module.exports = environment
