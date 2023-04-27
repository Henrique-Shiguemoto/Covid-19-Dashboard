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
  output$plot1 <- renderPlot({
    temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider1[1]):which(datasXconfirmados$data == input$slider1[2])), ], 
                   aes(x = data, y = confirmados))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  output$plot2 <- renderPlot({
    temp <- ggplot(data = datasXativos[c(which(datasXativos$data == input$slider2[1]):which(datasXativos$data == input$slider2[2])), ], 
                   aes(x = data, y = ativos))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  output$plot3 <- renderPlot({
    temp <- ggplot(data = datasXrecuperados[c(which(datasXrecuperados$data == input$slider3[1]):which(datasXrecuperados$data == input$slider3[2])), ], 
                   aes(x = data, y = recuperados))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  output$plot4 <- renderPlot({
    temp <- ggplot(data = datasXobitos[c(which(datasXobitos$data == input$slider4[1]):which(datasXobitos$data == input$slider4[2])), ], 
                   aes(x = data, y = obitos))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  output$plot5 <- renderPlot({
    temp <- ggplot(data = datasXnovos[c(which(datasXnovos$data == input$slider5[1]):which(datasXnovos$data == input$slider5[2])), ], 
                   aes(x = data, y = novos))
    temp <- temp + geom_line(colour = "red", size = 1)
    temp
  })
  
  # Preparando as infoBoxes da primeira aba
  output$infoBox11 <- renderInfoBox({
    infoBox("Info Box 11", 3, icon = icon("credit-card"), color = "red")
  })
  output$infoBox12 <- renderInfoBox({
    infoBox("Info Box 12", 3, icon = icon("credit-card"), color = "red")
  })
  output$infoBox13 <- renderInfoBox({
    infoBox("Info Box 13", 3, icon = icon("credit-card"), color = "red")
  })
  
  # Preparando as infoBoxes da segunda aba
  output$infoBox21 <- renderInfoBox({
    infoBox("Info Box 21", 3, icon = icon("credit-card"), color = "green")
  })
  output$infoBox22 <- renderInfoBox({
    infoBox("Info Box 22", 3, icon = icon("credit-card"), color = "green")
  })
  output$infoBox23 <- renderInfoBox({
    infoBox("Info Box 23", 3, icon = icon("credit-card"), color = "green")
  })
  
  # Preparando as infoBoxes da terceira aba
  output$infoBox31 <- renderInfoBox({
    infoBox("Info Box 31", 3, icon = icon("credit-card"), color = "blue")
  })
  output$infoBox32 <- renderInfoBox({
    infoBox("Info Box 32", 3, icon = icon("credit-card"), color = "blue")
  })
  output$infoBox33 <- renderInfoBox({
    infoBox("Info Box 33", 3, icon = icon("credit-card"), color = "blue")
  })
  
  # Preparando as infoBoxes da quarta aba
  output$infoBox41 <- renderInfoBox({
    infoBox("Info Box 41", 3, icon = icon("credit-card"), color = "black")
  })
  output$infoBox42 <- renderInfoBox({
    infoBox("Info Box 42", 3, icon = icon("credit-card"), color = "black")
  })
  output$infoBox43 <- renderInfoBox({
    infoBox("Info Box 43", 3, icon = icon("credit-card"), color = "black")
  })
  
  # Preparando as infoBoxes da quinta aba
  output$infoBox51 <- renderInfoBox({
    infoBox("Info Box 51", 3, icon = icon("credit-card"), color = "purple")
  })
  output$infoBox52 <- renderInfoBox({
    infoBox("Info Box 52", 3, icon = icon("credit-card"), color = "purple")
  })
  output$infoBox53 <- renderInfoBox({
    infoBox("Info Box 53", 3, icon = icon("credit-card"), color = "purple")
  })
})

?renderInfoBox()
?infoBox()
?ggplot
