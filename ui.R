library(shiny)
library(dplyr)
source("data.R")
source("gapModule.R")

ui <- fluidPage(
  tags$style(type="text/css", ".recalculating { opacity: 1.0; }"),
  titlePanel("Gapminder"),
  tabsetPanel(id = "continent", 
              tabPanel("All", gapModuleUI("all")),
              tabPanel("Africa", gapModuleUI("africa")),
              tabPanel("Americas", gapModuleUI("americas")),
              tabPanel("Asia", gapModuleUI("asia")),
              tabPanel("Europe", gapModuleUI("europe")),
              tabPanel("Oceania", gapModuleUI("oceania"))
  )
)