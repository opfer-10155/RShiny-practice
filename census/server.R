library(shiny)
library(maps)
library(mapproj)

source("helpers.R")

counties <- readRDS("data/counties.rds")

shinyServer(function(input, output) {
    output$map <- renderPlot({
        data <- switch(
            input$var,
            "Percent White"   = counties$white,
            "Percent Black"   = counties$black,
            "Percent Hispanic"= counties$hispanic,
            "Percent Asian"   = counties$asian
        )

        title <- switch(
            input$var,
            "Percent White"    = "% White"
            "Percent Black"    = "% Black"
            "Percent Hispanic" = "% Hispanic"
            "Percent Hispanic" = "% Hispanic"
        )

        percent_map(
            data,
            color="darkgreen",
            legend.title=title,
            min=input$range[0]
            max=input$range[1]
        )
    })
})
