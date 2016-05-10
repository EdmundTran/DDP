library(shiny)
newNumber <- function(number) number + 1
country <- c("China", "India", "United States", "Indonesia", "Brazil",
             "Pakistan", "Nigeria", "Bangladesh", "Russia", "Japan")
population <- c("1,376,430,000", "1,288,630,000", "323,426,000", "258,705,000", "206,044,000",
                "193,572,222", "186,988,000", "160,366,000", "146,544,710", "126,980,000")
data <- data.frame(country, population)
shinyServer(function(input, output) {
  output$population <- renderPrint({data[data$country == input$countrySelect, 2]})
  output$inputValue <- renderPrint({input$userNumber})
  output$nextNumber <- renderPrint({newNumber(input$userNumber)})
})