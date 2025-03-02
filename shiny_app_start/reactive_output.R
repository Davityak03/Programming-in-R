
library(shiny)

ui <- fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with information from the 2010 US Census."),
      selectInput(
        "var",
        label = "Choose a variable to display:",
        choices = c("Percent White", "Percent Black", "Percent Hispanic", "Percent Asian"),
        selected = "Percent White"
      ),
      sliderInput(
        "range",
        label = "Range of interest:",
        min = 0,
        max = 100,
        value = c(0, 100)
      )
    ),
    mainPanel(
      textOutput("selected_var")
    )
  )
)

server <- function(input, output) {
  output$selected_var <- renderText({
    paste("You have selected", input$var)
  })
}

shinyApp(ui = ui, server = server)
