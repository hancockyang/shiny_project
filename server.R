library(shiny)

circle <- function(r) 2*pi*r
area <- function(r)  pi*r^2

shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$subject})
    
    #else (input$goButton == 1) output$prediction <- renderPrint({circle(input$id1)})
    output$prediction <- renderPrint({
        data <- 0
        if (input$subject =="Circumference") {
            data <- circle(input$id1)
        }
        if (input$subject =="Area") {
            data <- area(input$id1)
        }
        data
        
        })
  }
  
)
