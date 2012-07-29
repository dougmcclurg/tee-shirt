Model = require 'models/base/model'

module.exports = class Header extends Model
  defaults:
    items: [
      {href: '/', title: 'Home', class: 'active'},
      {href: '/about', title: 'About'},
      {href: '/contact', title: 'Contact'},
      {href: 'http://brunch.readthedocs.org/', title: 'Documentation'},
      {href: 'https://github.com/brunch/brunch/issues', title: 'Github Issues'},
      {href: 'https://github.com/brunch/twitter', title: 'Twitter Example App'},
    ]
