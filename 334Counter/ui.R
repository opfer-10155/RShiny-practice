library(shiny)

shinyUI(
    fluidPage(

        titlePanel(
            h1("334-counter")
        ),

        sidebarPanel(
            h3("33-4"),
            actionButton("action", label = "33-4")
        ),

        mainPanel(
            h3("ウ  ン  チ  ー  コ  ン  グ"),
            htmlOutput("count")
        )

    )
)
