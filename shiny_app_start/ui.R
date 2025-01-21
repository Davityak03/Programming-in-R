#Shiny 
install.packages("shiny")
#create user interface 
library(shiny)
library(bslib)

#define the ui for the app that draws the histogam 
ui<-page_sidebar(
  title="hello shiny",
  #sidebar panel for inputs
  sidebar=sidebar(
    sliderInput(
      inputId="bins",
      label="number of bins",
      min=1,
      max=50,
      value=30
    )
  ),
  plotOutput(outputId="distPlot")
)
