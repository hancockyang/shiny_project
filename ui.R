library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Circle"),
  sidebarPanel(
    numericInput('id1', 'Radius: R ( <10 )', 0, min = 0, max = 10, step = 1),
    fluidRow(
        column(8, 
               selectInput("subject", 
                           "Caculation:", 
                           c("Circumference","Area") 
                             )
        )
    ),
    submitButton('Submit')
  ),
  mainPanel(
        h3('This is use to calculate circumference or area of a circle by given radius'),
        h4('The radius you enter:'),
        verbatimTextOutput("oid1"),
        h4('The subject you want to calculate'),
        verbatimTextOutput("oid2"),
        h4('Which resulted in a prediction of '),
        verbatimTextOutput("prediction")
  )
))
