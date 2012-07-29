Controller = require 'controllers/base/controller'
HomePageView = require 'views/home_page_view'
Home = require 'models/home'

module.exports = class HomeController extends Controller
  initialize: ->
    super
    @model = new Home()
    @view = new HomePageView({@model})

  historyURL: 'home'

  index: ->
    # @view = new HomePageView()

    $("body").addClass("loaded")
    $("#tshirt_size").focus()

    $("#tshirt_size").change ->
      $("#t-container strong").fadeIn("fast")
      txt = ""
      $("#tshirt_size option:selected").each ->
        txt += $(this).val().charAt(0)
        $("#t-container strong").html(txt)

    $("#tshirt_color").change ->
      str = ""
      $("#tshirt_color option:selected").each ->
        str += $(this).val()
        $("#t-container").css("background-color", str)

    $("#prints li").click ->
      $("#prints li").removeClass("selected");
      $("#t-container div").removeClass()
      thePrint = $(this).attr("class")
      $("#t-container div").addClass(thePrint)

      $(this).addClass("selected");

    $("#tee-form").validate
      rules:
        tshirt_amount:
          required: true
          digits : true
        tshirt_color:
          required: true
        tshirt_size:
          required: true

      messages:
        tshirt_amount:
          required: "Really, Zero T-shirts, please enter an amount."
          digits: "Please enter a number."
        tshirt_color:
          required: "Emporers new clothes? Go on choose a color."
        tshirt_size:
          required: "Size does matter, choose your fit"

      highlight: (label) ->
        $(label).closest(".control-group").addClass "error"

      success: (label) ->
        label.addClass("valid").closest(".control-group").addClass "success"

      submitHandler: (form) ->
        serialized = $(form).serialize()
        console.log "T shirt specifics: " + serialized
        console.log "T shirt print style: " + $("#t-container div").attr("class")
        alert "Submitted. Check the console for output"

