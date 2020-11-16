library(shiny)
library(dplyr)
source("data.R")

ui <- fluidPage(
  tags$style(type="text/css", ".recalculating { opacity: 1.0; }"),
  titlePanel("Gapminder"),
  tabsetPanel(id = "continent", 
              tabPanel("All", 
                       plotOutput("all_plot"),
                       sliderInput("all_year", "Select Year", value = 1952, min = 1952, 
                                   max = 2007, step = 5, animate = animationOptions(interval = 500))
              ),
              tabPanel("Africa", 
                       plotOutput("africa_plot"),
                       sliderInput("africa_year", "Select Year", value = 1952, min = 1952, 
                                   max = 2007, step = 5, animate = animationOptions(interval = 500))
              ),
              tabPanel("Americas", 
                       plotOutput("americas_plot"),
                       sliderInput("americas_year", "Select Year", value = 1952, min = 1952, 
                                   max = 2007, step = 5, animate = animationOptions(interval = 500))
              ),
              tabPanel("Asia", 
                       plotOutput("asia_plot"),
                       sliderInput("asia_year", "Select Year", value = 1952, min = 1952, 
                                   max = 2007, step = 5, animate = animationOptions(interval = 500))
              ),
              tabPanel("Europe", 
                       plotOutput("europe_plot"),
                       sliderInput("europe_year", "Select Year", value = 1952, min = 1952, 
                                   max = 2007, step = 5, animate = animationOptions(interval = 500))
              ),
              tabPanel("Oceania", 
                       plotOutput("oceania_plot"),
                       sliderInput("oceania_year", "Select Year", value = 1952, min = 1952, 
                                   max = 2007, step = 5, animate = animationOptions(interval = 500))
              )
  )
)

