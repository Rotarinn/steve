# Pakkar
library(shiny)
library(tidyverse)
library(lubridate)
library(reactable)
library(readxl)
library(writexl)
library(janitor)

source("undirb.R")

# Workaround for Chromium Issue 468227
downloadButton <- function(...) {
  tag <- shiny::downloadButton(...)
  tag$attribs$download <- NULL
  tag
}

# Viðmót sett upp
ui <- fluidPage(
  
  titlePanel("Orkustöff"),
  
  br(),
  
  h2("Brandari"),
  
  textOutput("brandari"),
  
  fileInput("upload", "Hlaða upp skrá"),
  
  reactableOutput("preview"),
  
  br(),
  
  downloadButton("download", "Sækja .csv skrá")
)

# Bakendi
server <- function(input, output) {
  gogn <- reactive({
    req(input$upload)
    skjal <- read_excel(input$upload)
    
    tafla <- skjal |> 
      pivot_longer(
        !1:10,
        names_to = "dags",
        values_to = "magn"
      ) |> 
      mutate(dags = excel_numeric_to_date(as.numeric(dags)))
    
    tafla
  })
  
  output$preview <- renderReactable({
    reactable(
      head(gogn(), n = 10L),
      columns = list(
        dags = colDef(format = colFormat(date = TRUE))
      )
    )
  })
  
  output$brandari <- renderText(
    slice_sample(brandarar, n = 1)
  )
  
  output$download <- downloadHandler(
    filename = function() {
      paste0(input$upload, ".csv")
    },
    content = function(file) {
      write_xlsx(gogn(), file)
    }
  )
}

# Keyrsla á appi
shinyApp(ui = ui, server = server)