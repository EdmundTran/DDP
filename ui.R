library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("10 Most Populous Countries and Counting to 10"),
  sidebarPanel(
    p("In this section, you will select a country and a number."),
    selectInput("countrySelect", "Choose a country",
                c("Bangladesh", "Brazil", "China", "India", "Indonesia",
                  "Japan", "Nigeria", "Pakistan", "Russia", "United States")),
    numericInput('userNumber', 'Select a number', 5, min = 1, max = 10, step = 1)
  ),
  mainPanel(
    h3('Output'),
    p("This section will display some output depending on your inputted values."),
    h4('The population of the selected country is '),
    verbatimTextOutput("population"),
    h4('You entered '),
    verbatimTextOutput("inputValue"),
    h4('The next number is '),
    verbatimTextOutput("nextNumber")
  )
))
