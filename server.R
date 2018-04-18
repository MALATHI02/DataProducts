#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(
  function(input, output){
    output$monExp <- renderText({ calculateMonExp(input$Grocery, input$CarLoan,input$Util, input$Cable, input$MisExp) })
    output$remBal <- renderText({(input$Income -(calculateMonExp(input$Grocery, input$CarLoan,input$Util, input$Cable, input$MisExp)) )})

  }
)

calculateMonExp <- function (Grocery, CarLoan,Util,Cable,MisExp)
{
  result <- (Grocery * 4) + CarLoan + Util + Cable + (MisExp * 4)
  expense <- result
  return(round(result, digits = 2))
}

