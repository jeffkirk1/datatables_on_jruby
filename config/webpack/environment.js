const { environment } = require('@rails/webpacker')
const datatables = require('./loaders/datatables')
environment.loaders.append('datatables', datatables)

const webpack = require('webpack')
environment.plugins.append('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment
