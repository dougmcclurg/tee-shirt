Model = require 'models/base/model'

module.exports = class Home extends Model
  defaults:
    sizes: [
      {option: 'Choose a size', value: ''},
      {option: 'Small', value: 'small'},
      {option: 'Medium', value: 'medium'},
      {option: 'Large', value: 'large'},
      {option: 'Gangster!', value: 'gangster'},
    ]

    colors: [
      {option: 'Choose a color', value: ''},
      {option: 'gray', value: 'gray'},
      {option: 'purple', value: 'purple'},
      {option: 'pink', value: 'pink'},
      {option: 'goldenrod', value: 'goldenrod'},
    ]

