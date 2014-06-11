library(shiny)
library(ggplot2)

shinyServer(function(input, output, session) {
   

output$plot1 <- renderPlot({
  p <- ggplot(mydata, aes_string(x=input$xcol, y=input$ycol, colour="State")) + geom_point()
  print(p)
  })
  
})