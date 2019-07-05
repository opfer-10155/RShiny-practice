library(shiny)

count1 <- 0
count2 <- 0

shinyServer(function(input, output) {

    # イベントハンドラではないらしい
    output$count <- renderUI({
        count1 <- count1 + 33
        count2 <- count2 + 4

        h1(input.action)
    })
})
# paste(count1, " - ", count2)