template = require 'views/templates/contact'
PageView = require 'views/base/page_view'

module.exports = class ContactPageView extends PageView
  template: template
  className: 'contact-page'

  initialize: ->
    super
    console.log 'contact_page_view#initialize'
    @delegate 'click', '#send', @send

  send: ->
    if $("#questioninput").val()
      console.log 'send! ' + $("#lnameinput").val()
