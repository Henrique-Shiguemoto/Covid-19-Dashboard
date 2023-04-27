# Carregamento de pacotes necessários
library(shiny)
library(shinydashboard)
library(rio)
library(ggplot2)
library(lubridate)

shinyServer(function(input, output) {
  # Importação e sumarização do dataset
  casosCovid <- import("casosCovid.csv")
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
  
  lineColor = "#1a45c7"
  
  # Preparando os plots para cada aba
  output$plot01 <- renderPlot({
    temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider0[1]):
                                                which(datasXconfirmados$data == input$slider0[2])), ], 
                   aes(x = data, y = confirmados, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot02 <- renderPlot({
    temp <- ggplot(data = datasXativos[c(which(datasXativos$data == input$slider0[1]):
                                           which(datasXativos$data == input$slider0[2])), ], 
                   aes(x = data, y = ativos, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot03 <- renderPlot({
    temp <- ggplot(data = datasXrecuperados[c(which(datasXrecuperados$data == input$slider0[1]):which(datasXrecuperados$data == input$slider0[2])), ], 
                   aes(x = data, y = recuperados, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot04 <- renderPlot({
    temp <- ggplot(data = datasXobitos[c(which(datasXobitos$data == input$slider0[1]):which(datasXobitos$data == input$slider0[2])), ], 
                   aes(x = data, y = obitos, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot05 <- renderPlot({
    temp <- ggplot(data = datasXnovos[c(which(datasXnovos$data == input$slider0[1]):which(datasXnovos$data == input$slider0[2])), ], 
                   aes(x = data, y = novos, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot1 <- renderPlot({
    temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider1[1]):which(datasXconfirmados$data == input$slider1[2])), ], 
                   aes(x = data, y = confirmados, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot2 <- renderPlot({
    temp <- ggplot(data = datasXativos[c(which(datasXativos$data == input$slider2[1]):which(datasXativos$data == input$slider2[2])), ], 
                   aes(x = data, y = ativos, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot3 <- renderPlot({
    temp <- ggplot(data = datasXrecuperados[c(which(datasXrecuperados$data == input$slider3[1]):which(datasXrecuperados$data == input$slider3[2])), ], 
                   aes(x = data, y = recuperados, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot4 <- renderPlot({
    temp <- ggplot(data = datasXobitos[c(which(datasXobitos$data == input$slider4[1]):which(datasXobitos$data == input$slider4[2])), ], 
                   aes(x = data, y = obitos, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot5 <- renderPlot({
    temp <- ggplot(data = datasXnovos[c(which(datasXnovos$data == input$slider5[1]):which(datasXnovos$data == input$slider5[2])), ], 
                   aes(x = data, y = novos, color = "smooth")) + theme(legend.position="none")
    temp <- temp + geom_line(linewidth = 1)
    temp <- temp + scale_color_manual(values = c(lineColor))
    temp
  })
  output$plot61 <- renderPlot({
    if(input$select1 == "select11"){
      temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider6[1]):which(datasXconfirmados$data == input$slider6[2])), ], 
                     aes(x = data, y = confirmados, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }else if(input$select1 == "select12"){
      temp <- ggplot(data = datasXativos[c(which(datasXativos$data == input$slider6[1]):which(datasXativos$data == input$slider6[2])), ], 
                     aes(x = data, y = ativos, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }else if(input$select1 == "select13"){
      temp <- ggplot(data = datasXrecuperados[c(which(datasXrecuperados$data == input$slider6[1]):which(datasXrecuperados$data == input$slider6[2])), ], 
                     aes(x = data, y = recuperados, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }else if(input$select1 == "select14"){
      temp <- ggplot(data = datasXobitos[c(which(datasXobitos$data == input$slider6[1]):which(datasXobitos$data == input$slider6[2])), ], 
                     aes(x = data, y = obitos, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }else if(input$select1 == "select15"){
      temp <- ggplot(data = datasXnovos[c(which(datasXnovos$data == input$slider6[1]):which(datasXnovos$data == input$slider6[2])), ], 
                     aes(x = data, y = novos, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }
  })
  output$plot62 <- renderPlot({
    if(input$select2 == "select21"){
      temp <- ggplot(data = datasXconfirmados[c(which(datasXconfirmados$data == input$slider6[1]):which(datasXconfirmados$data == input$slider6[2])), ], 
                     aes(x = data, y = confirmados, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }else if(input$select2 == "select22"){
      temp <- ggplot(data = datasXativos[c(which(datasXativos$data == input$slider6[1]):which(datasXativos$data == input$slider6[2])), ], 
                     aes(x = data, y = ativos, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }else if(input$select2 == "select23"){
      temp <- ggplot(data = datasXrecuperados[c(which(datasXrecuperados$data == input$slider6[1]):which(datasXrecuperados$data == input$slider6[2])), ], 
                     aes(x = data, y = recuperados, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }else if(input$select2 == "select24"){
      temp <- ggplot(data = datasXobitos[c(which(datasXobitos$data == input$slider6[1]):which(datasXobitos$data == input$slider6[2])), ], 
                     aes(x = data, y = obitos, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }else if(input$select2 == "select25"){
      temp <- ggplot(data = datasXnovos[c(which(datasXnovos$data == input$slider6[1]):which(datasXnovos$data == input$slider6[2])), ], 
                     aes(x = data, y = novos, color = "smooth")) + theme(legend.position="none")
      temp <- temp + geom_line(linewidth = 1)
      temp <- temp + scale_color_manual(values = c(lineColor))
      temp
    }
  })
  
  # Preparando as infoBoxes da primeira aba
  output$infoBox11 <- renderInfoBox({
    dataForInfoBoxes = datasXconfirmados[c(which(datasXconfirmados$data == input$slider1[1]):which(datasXconfirmados$data == input$slider1[2])), 2]
    nElements = length(dataForInfoBoxes)
    taxaMudanca = (dataForInfoBoxes[nElements] - dataForInfoBoxes[1]) / nElements
    taxaMudanca = taxaMudanca * 100
    taxaMudanca = round(taxaMudanca)
    taxaMudanca = taxaMudanca / 100
    infoBox("Taxa Média de Mudança", taxaMudanca, icon = icon("viruses"), color = "light-blue", fill = TRUE)
  })
  output$infoBox12 <- renderInfoBox({
    dataForInfoBoxes = datasXconfirmados[c(which(datasXconfirmados$data == input$slider1[1]):which(datasXconfirmados$data == input$slider1[2])), 2]
    infoBox("Máximo", max(dataForInfoBoxes), icon = icon("arrow-up"), color = "light-blue", fill = TRUE)
  })
  output$infoBox13 <- renderInfoBox({
    dataForInfoBoxes = datasXconfirmados[c(which(datasXconfirmados$data == input$slider1[1]):which(datasXconfirmados$data == input$slider1[2])), 2]
    infoBox("Mínimo", min(dataForInfoBoxes), icon = icon("arrow-down"), color = "light-blue", fill = TRUE)
  })
  
  # Preparando as infoBoxes da segunda aba
  output$infoBox21 <- renderInfoBox({
    dataForInfoBoxes = datasXativos[c(which(datasXativos$data == input$slider2[1]):which(datasXativos$data == input$slider2[2])), 2]
    infoBox("Média de Casos Ativos Diários", round(mean(dataForInfoBoxes)), icon = icon("viruses"), color = "light-blue", fill = TRUE)
  })
  output$infoBox22 <- renderInfoBox({
    dataForInfoBoxes = datasXativos[c(which(datasXativos$data == input$slider2[1]):which(datasXativos$data == input$slider2[2])), 2]
    infoBox("Máximo", max(dataForInfoBoxes), icon = icon("arrow-up"), color = "light-blue", fill = TRUE)
  })
  output$infoBox23 <- renderInfoBox({
    dataForInfoBoxes = datasXativos[c(which(datasXativos$data == input$slider2[1]):which(datasXativos$data == input$slider2[2])), 2]
    infoBox("Mínimo", min(dataForInfoBoxes), icon = icon("arrow-down"), color = "light-blue", fill = TRUE)
  })
  
  # Preparando as infoBoxes da terceira aba
  output$infoBox31 <- renderInfoBox({
    dataForInfoBoxes = datasXrecuperados[c(which(datasXrecuperados$data == input$slider3[1]):which(datasXrecuperados$data == input$slider3[2])), 2]
    nElements = length(dataForInfoBoxes)
    taxaMudanca = (dataForInfoBoxes[nElements] - dataForInfoBoxes[1]) / nElements
    taxaMudanca = taxaMudanca * 100
    taxaMudanca = round(taxaMudanca)
    taxaMudanca = taxaMudanca / 100
    infoBox("Taxa Média de Mudança", taxaMudanca, icon = icon("viruses"), color = "light-blue", fill = TRUE)
  })
  output$infoBox32 <- renderInfoBox({
    dataForInfoBoxes = datasXrecuperados[c(which(datasXrecuperados$data == input$slider3[1]):which(datasXrecuperados$data == input$slider3[2])), 2]
    infoBox("Máximo", max(dataForInfoBoxes), icon = icon("arrow-up"), color = "light-blue", fill = TRUE)
  })
  output$infoBox33 <- renderInfoBox({
    dataForInfoBoxes = datasXrecuperados[c(which(datasXrecuperados$data == input$slider3[1]):which(datasXrecuperados$data == input$slider3[2])), 2]
    infoBox("Mínimo", min(dataForInfoBoxes), icon = icon("arrow-down"), color = "light-blue", fill = TRUE)
  })
  
  # Preparando as infoBoxes da quarta aba
  output$infoBox41 <- renderInfoBox({
    dataForInfoBoxes = datasXobitos[c(which(datasXobitos$data == input$slider4[1]):which(datasXobitos$data == input$slider4[2])), 2]
    nElements = length(dataForInfoBoxes)
    taxaMudanca = (dataForInfoBoxes[nElements] - dataForInfoBoxes[1]) / nElements
    taxaMudanca = taxaMudanca * 100
    taxaMudanca = round(taxaMudanca)
    taxaMudanca = taxaMudanca / 100
    infoBox("Taxa Média de Mudança", taxaMudanca, icon = icon("viruses"), color = "light-blue", fill = TRUE)
  })
  output$infoBox42 <- renderInfoBox({
    dataForInfoBoxes = datasXobitos[c(which(datasXobitos$data == input$slider4[1]):which(datasXobitos$data == input$slider4[2])), 2]
    infoBox("Máximo", max(dataForInfoBoxes), icon = icon("arrow-up"), color = "light-blue", fill = TRUE)
  })
  output$infoBox43 <- renderInfoBox({
    dataForInfoBoxes = datasXobitos[c(which(datasXobitos$data == input$slider4[1]):which(datasXobitos$data == input$slider4[2])), 2]
    infoBox("Mínimo", min(dataForInfoBoxes), icon = icon("arrow-down"), color = "light-blue", fill = TRUE)
  })
  
  # Preparando as infoBoxes da quinta aba
  output$infoBox51 <- renderInfoBox({
    dataForInfoBoxes = datasXnovos[c(which(datasXnovos$data == input$slider5[1]):which(datasXnovos$data == input$slider5[2])), 2]
    infoBox("Média de Casos Novos Diários", round(mean(dataForInfoBoxes)), icon = icon("viruses"), color = "light-blue", fill = TRUE)
  })
  output$infoBox52 <- renderInfoBox({
    dataForInfoBoxes = datasXnovos[c(which(datasXnovos$data == input$slider5[1]):which(datasXnovos$data == input$slider5[2])), 2]
    infoBox("Máximo", max(dataForInfoBoxes), icon = icon("arrow-up"), color = "light-blue", fill = TRUE)
  })
  output$infoBox53 <- renderInfoBox({
    dataForInfoBoxes = datasXnovos[c(which(datasXnovos$data == input$slider5[1]):which(datasXnovos$data == input$slider5[2])), 2]
    infoBox("Mínimo", min(dataForInfoBoxes), icon = icon("arrow-down"), color = "light-blue", fill = TRUE)
  })
})

?renderInfoBox()
?infoBox()
?ggplot()
?icon
