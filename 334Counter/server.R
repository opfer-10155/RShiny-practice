library(shiny)

count1 = 0
count2 = 0

shinyServer(function(input, output) {
    output$count <- renderUI({
        count1 += 33
        count2 += 4

        h1(paste(count1, " - ", count2))
    })
}