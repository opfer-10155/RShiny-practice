library(shiny)

count1 <- 33
count2 <- 4

shinyServer(function(input, output) {

    # イベントハンドラではないらしい
    output$count <- renderUI({

        h1(paste(count1*input$action, " - ", count2*input$action))
    })
})
