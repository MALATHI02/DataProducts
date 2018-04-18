#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Household Expenses"),
  sidebarPanel(
    h4('Income (Monthly'),
    numericInput('Income', 'Price ($)', 5000),
    h5('Expenses'),
    numericInput('Grocery', 'Grocery ($ per week)', 200),
    numericInput('CarLoan', 'Car Loan(s) ($ per month)', 180),
    numericInput('Util', 'Utilities ($ per week)', 200),
    numericInput('Cable', 'Cable ($ per month)', 200),
    numericInput('MisExp', 'Miscellaneous expenses ($ per week)', 200)
 ),
  mainPanel(
    h4('Monthly Expenses ($)'),
    textOutput("monExp"),
    h4('Cash Remaining Per Month ($)'),
    textOutput("remBal"),
    br(),
    h4('Instructions'),
    helpText("This application is designed to calculate the potential expenses to income"),
    code("Monthly Expense"),
    helpText("Enter the itemised expenses to calculate the monthly expense."),
    code("Cash Remaining"),
    helpText("This is the Income minus the expenses.")
  )
))
