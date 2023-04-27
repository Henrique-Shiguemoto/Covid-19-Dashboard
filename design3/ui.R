# Carregamento de pacotes necessários
library(shiny)
library(shinydashboard)
library(rio)
library(ggplot2)
library(lubridate)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Covid-19: Maringá"),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Casos Confirmados x Ativos", tabName = "confirmadosXativos"),
        menuItem("Casos Confirmados x Recuperados", tabName = "confirmadosXrecuperados"),
        menuItem("Casos Confirmados x Óbitos", tabName = "confirmadosXobitos"),
        menuItem("Casos Confirmados x Novos", tabName = "confirmadosXnovos")
      )
    ),
    dashboardBody(
      # This code is only for disabling vertical scrolling
      tags$head(
        tags$style(
          "body {overflow-y: hidden;}"
          )
        ),
      tabItems(
        tabItem(tabName = "confirmadosXativos", 
                fluidRow(box(title = "Casos Confirmados", plotOutput(outputId = "plot11", height = 280), width = 6), 
                         box(title = "Casos Ativos", plotOutput(outputId = "plot12", height = 280), width = 6)
                         ),
                fluidRow(column(width = 10, offset = 1, 
                                box(sliderInput(inputId = "slider1", label = "Intervalo de Datas", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                ), 
                                    width = NULL)
                                )
                         ),
                fluidRow(infoBoxOutput(outputId = "infoBox11"),
                         infoBoxOutput(outputId = "infoBox12"),
                         infoBoxOutput(outputId = "infoBox13")
                         )
                ),
        tabItem(tabName = "confirmadosXrecuperados", 
                fluidRow(box(title = "Casos Confirmados", plotOutput(outputId = "plot21", height = 280), width = 6), 
                         box(title = "Casos Recuperados", plotOutput(outputId = "plot22", height = 280), width = 6)
                         ),
                fluidRow(column(width = 10, offset = 1, 
                                box(sliderInput(inputId = "slider2", label = "Intervalo de Datas", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                ),
                                    width = NULL)
                                )
                         ),
                fluidRow(infoBoxOutput(outputId = "infoBox21"),
                         infoBoxOutput(outputId = "infoBox22"),
                         infoBoxOutput(outputId = "infoBox23")
                         )
                ),
        tabItem(tabName = "confirmadosXobitos", 
                fluidRow(box(title = "Casos Confirmados", plotOutput(outputId = "plot31", height = 280), width = 6), 
                         box(title = "Casos de Óbitos", plotOutput(outputId = "plot32", height = 280), width = 6)
                         ),
                fluidRow(column(width = 10, offset = 1, 
                                box(sliderInput(inputId = "slider3", label = "Intervalo de Datas", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                ),
                                    width = NULL)
                                )
                         ),
                fluidRow(infoBoxOutput(outputId = "infoBox31"),
                         infoBoxOutput(outputId = "infoBox32"),
                         infoBoxOutput(outputId = "infoBox33")
                         )
                ),
        tabItem(tabName = "confirmadosXnovos", 
                fluidRow(box(title = "Casos Confirmados", plotOutput(outputId = "plot41", height = 280), width = 6), 
                         box(title = "Casos Novos", plotOutput(outputId = "plot42", height = 280), width = 6)
                         ),
                fluidRow(column(width = 10, offset = 1, 
                                box(sliderInput(inputId = "slider4", label = "Intervalo de Datas", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                ), 
                                    width = NULL)
                                )
                         ),
                fluidRow(infoBoxOutput(outputId = "infoBox41"),
                         infoBoxOutput(outputId = "infoBox42"),
                         infoBoxOutput(outputId = "infoBox43")
                         )
                )
      )
    )
  )
)

?plotOutput()
?box()
?tabItem()
?infoBoxOutput()
?infoBox()
?sliderInput()
?column()
?fluidRow()
?dashboardHeader
