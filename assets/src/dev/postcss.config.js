module.exports = {
  plugins: [
    require('postcss-import')({ path: '.' }),
    require('postcss-nested'),
    require('autoprefixer'),
  ]
}
