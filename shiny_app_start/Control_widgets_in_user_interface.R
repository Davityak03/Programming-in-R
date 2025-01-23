#adding widgets in the ui
#defining the ui

library(shiny)

ui<-page_fluid(
  titlePanel("Basic Widgets"),
  layout_columns(
    col_width=10,
    card(
      card_header("Buttons"),
      actionButton("action","Action"),
      submitButton("Submit")
    ),
    card(
      card_header("Single Checkbox"),
      checkboxInput("checkbox","Choice A",value=TRUE),
      checkboxInput("checkbox","Choice B",value=TRUE),
      checkboxInput("checkbox","Choice C",value=TRUE)
    ),
    card(
      card_header("Checkbox group"),
      checkboxGroupInput("checkbox","select all that apply",choices=list("choice1"=1,"choice2"=2,"choice3"=3),selected=1) 
    ),
    card(
      card_header("Date Input"),
      dateRangeInput("dates","Select Dates")
    ),
    card(
      card_header("File Input"),
      fileInput("file",label=NULL)
    ),
    card(
      card_header("Help Text"),
      helpText("note: it is of help and .......","isis:jsjsjsjjsjsj...............")
    ),
    card(
      card_header("Numeric input"),
      numericInput("num", "Input number", value = 1)
    ),
    card(
      card_header("Radio buttons"),
      radioButtons("radio","Select option",choices=list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),selected = 1)
    ),
    card(
      card_header("Select box"),
      selectInput("select","Select option",choices=list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),selected = 1)
    ),
    card(
      card_header("Sliders"),
      sliderInput("slider1","set value",min=0,max=100,value=50),
      sliderInput("slider2","set value range",min=0,max=100,value=c(25,75))# to get to pointer in the slider
    ),
    card(
      card_header("Text Input"),
      textInput("text",label=NULL)
    )
  )
)


# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)

