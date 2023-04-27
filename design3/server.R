# Carregamento de pacotes necessários
library(shiny)
library(shinydashboard)
library(rio)
library(ggplot2)
library(lubridate)

shinyServer(function(input, output) {
  # Importação e sumarização do dataset
  casosCovid <- import("casos_covid_maringa_dataEng.csv")
  t1 <- casosCovid[, c("data", "confirmados")]
  t2 <- casosCovid[, c("data", "ativos")]
  t3 <- casosCovid[, c("data", "recuperados")]
  t4 <- casosCovid[, c("data", "obitos")]
  t5 <- casosCovid[, c("data", "novos")]

  as.Date("3/4/2020")
  
  datasXconfirmados       <- t1
  datasXconfirmados$data  <- as.Date(t1$data)
  datasXativos            <- t2
  datasXativos$data       <- as.Date(t2$data)
  datasXrecuperados       <- t3
  datasXrecuperados$data  <- as.Date(t3$data)
  datasXobitos            <- t4
  datasXobitos$data       <- as.Date(t4$data)
  datasXnovos             <- t5
  datasXnovos$data        <- as.Date(t5$data)
  
  # Preparando os plots para cada aba
  output$plot11 <- renderPlot({
    temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider1[1]):which(datasXconfirmados$data == input$slider1[2])), ], 
                   aes(x = data, y = confirmados))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  output$plot12 <- renderPlot({
    temp <- ggplot(data = datasXativos[c(which(datasXconfirmados$data == input$slider1[1]):which(datasXconfirmados$data == input$slider1[2])), ], 
                   aes(x = data, y = ativos))
    temp <- temp + geom_line(colour = "green", size = 1)
    temp
  })
  output$plot21 <- renderPlot({
    temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider2[1]):which(datasXconfirmados$data == input$slider2[2])), ], 
                   aes(x = data, y = confirmados))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  output$plot22 <- renderPlot({
    temp <- ggplot(data = datasXrecuperados[c(which(datasXconfirmados$data == input$slider2[1]):which(datasXconfirmados$data == input$slider2[2])), ], 
                   aes(x = data, y = recuperados))
    temp <- temp + geom_line(colour = "blue", size = 1)
    temp
  })
  output$plot31 <- renderPlot({
    temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider3[1]):which(datasXconfirmados$data == input$slider3[2])), ], 
                   aes(x = data, y = confirmados))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  output$plot32 <- renderPlot({
    temp <- ggplot(data = datasXobitos[c(which(datasXconfirmados$data == input$slider3[1]):which(datasXconfirmados$data == input$slider3[2])), ], 
                   aes(x = data, y = obitos))
    temp <- temp + geom_line(colour = "purple", size = 1)
    temp
  })
  output$plot41 <- renderPlot({
    temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider4[1]):which(datasXconfirmados$data == input$slider4[2])), ], 
                   aes(x = data, y = confirmados))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  output$plot42 <- renderPlot({
    temp <- ggplot(data = datasXnovos[c(which(datasXconfirmados$data == input$slider4[1]):which(datasXconfirmados$data == input$slider4[2])), ], 
                   aes(x = data, y = novos))
    temp <- temp + geom_line(colour = "black", size = 1)
    temp
  })
  
  # Preparando as infoBoxOutputs de cada aba
  output$infoBox11 <- renderInfoBox({
    infoBox(title = "Info Box 1", 3, icon = icon("bar-chart"), color = "aqua")
  })
  output$infoBox12 <- renderInfoBox({
    infoBox(title = "Info Box 2", 3, icon = icon("bar-chart"), color = "aqua")
  })
  output$infoBox13 <- renderInfoBox({
    infoBox(title = "Info Box 3", 3, icon = icon("bar-chart"), color = "aqua")
  })
  output$infoBox21 <- renderInfoBox({
    infoBox(title = "Info Box 1", 3, icon = icon("bar-chart"), color = "green")
  })
  output$infoBox22 <- renderInfoBox({
    infoBox(title = "Info Box 2", 3, icon = icon("bar-chart"), color = "green")
  })
  output$infoBox23 <- renderInfoBox({
    infoBox(title = "Info Box 3", 3, icon = icon("bar-chart"), color = "green")
  })
  output$infoBox31 <- renderInfoBox({
    infoBox(title = "Info Box 1", 3, icon = icon("bar-chart"), color = "purple")
  })
  output$infoBox32 <- renderInfoBox({
    infoBox(title = "Info Box 2", 3, icon = icon("bar-chart"), color = "purple")
  })
  output$infoBox33 <- renderInfoBox({
    infoBox(title = "Info Box 3", 3, icon = icon("bar-chart"), color = "purple")
  })
  output$infoBox41 <- renderInfoBox({
    infoBox(title = "Info Box 1", 3, icon = icon("bar-chart"), color = "black")
  })
  output$infoBox42 <- renderInfoBox({
    infoBox(title = "Info Box 2", 3, icon = icon("bar-chart"), color = "black")
  })
  output$infoBox43 <- renderInfoBox({
    infoBox(title = "Info Box 3", 3, icon = icon("bar-chart"), color = "black")
  })
})

?renderInfoBox()
?sliderInput()
?infoBox()
?plot
?ggplot

rm(list=ls())
