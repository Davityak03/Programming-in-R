#building a user interface
library(shiny)
library(bslib)
library(bsicons)

#defining the ui
ui2<-page_sidebar(
  title="2 nd part",
  sidebar=sidebar("sidebar",position="right"),#to put the sidebar in right
  value_box(
    title="value box",
    value=100,
    showcase=bsicons::bs_icon("bar-chart"),
    theme="teal"
  ),
  card(
    card_header("Card Header"),
    #card_image("www/shiny.svg", height = "300px"),#to add a image
    "card_body",
    card_footer("card end part")
  ),#to add a container like layout in main content area
  card("Another card")
)

#defining the server logic 
server2<-function(input,output){
  
}

#running the app
shinyApp(ui=ui2,server=server2)

