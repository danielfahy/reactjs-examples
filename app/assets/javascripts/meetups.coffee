# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

DOM = React.DOM


CreateNewMeetupForm = React.createClass
  displayName: "CreateNewMeetupForm"
  getInitialState: ->
    {
      title: ""
      description: ""
    }

  titleChanged: (event) ->
    @setState(title: event.target.value)

  descriptionChanged: (event) -> # Defining Handler
    @setState(description: event.target.value)

  render: ->
    DOM.form
      className: "form-horizontal",
        DOM.legend null, "New Meetup"

        DOM.div
          className: "form-group"
          DOM.label
            htmlFor: "title"
            className: "col-lg-2 control-label"
            "Title"
          DOM.div
            className: "col-lg-10"
            DOM.input # Setting Handler
              className: "form-control"
              placeholder: "Meetup title"
              id: "title"
              type: "text"
              value: @state.title
              onChange: @titleChanged
        DOM.div
          className: "form-group"
          DOM.label
            htmlFor: "description"
            className: "col-lg-2 control-label"
            "Description"
          DOM.div
            className: "col-lg-10"
            DOM.input
              className: "form-control"
              placeholder: "Meetup description"
              id: "description"
              type: "text"
              value: @state.description
              onChange: @descriptionChanged

createNewMeetupForm = React.createFactory(CreateNewMeetupForm)

$ ->
  React.render(
    createNewMeetupForm(),
    document.getElementById("CreateNewMeetup"))