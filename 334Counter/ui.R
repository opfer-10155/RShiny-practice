library(shiny)

shinyUI(
    fluidPage(

        titlePanel(
            h1("334-counter")
        ),

        sidebarPanel(
            h3("33-4"),
            actionButton("action", label = "Action")
        ),

        mainPanel(
            h3("output"),
            uiOutput("count")
        )

    )
)
