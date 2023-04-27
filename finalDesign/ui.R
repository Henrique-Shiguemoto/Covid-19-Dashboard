# Verifique se o working directory está correto
getwd()
setwd("C:/dev/R/tcc/finalDesign")

# Carregamento de pacotes necessários
library(shiny)
library(shinydashboard)
library(rio)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Covid-19: Maringá"),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Visão Geral", tabName = "geral"),
        menuItem("Casos Confirmados", tabName = "confirmados"),
        menuItem("Casos Ativos", tabName = "ativos"),
        menuItem("Casos Recuperados", tabName = "recuperados"),
        menuItem("Casos de Óbito", tabName = "obitos"),
        menuItem("Casos Novos", tabName = "novos"),
        menuItem("Comparação entre Gráficos", tabName = "comparacao")
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
        tabItem(tabName = "geral",
                fluidRow(column(width = 4, offset = 0, box(title = "Casos Confirmados", 
                                                           plotOutput(outputId = "plot01", height = 150), 
                                                           width = NULL, background = "light-blue")),
                         column(width = 4, offset = 0, box(title = "Casos Ativos", 
                                                           plotOutput(outputId = "plot02", height = 150),
                                                           width = NULL, background = "light-blue")),
                         column(width = 4, offset = 0, box(title = "Casos Recuperados", 
                                                           plotOutput(outputId = "plot03", height = 150), 
                                                           width = NULL, background = "light-blue"))),
                fluidRow(column(width = 6, offset = 0, box(title = "Casos de Óbito", 
                                                           plotOutput(outputId = "plot04", height = 150), 
                                                           width = NULL, background = "light-blue")),
                         column(width = 6, offset = 0, box(title = "Casos Novos", 
                                                           plotOutput(outputId = "plot05", height = 150), 
                                                           width = NULL, background = "light-blue"))),
                fluidRow(column(width = 10, offset = 1,box(width = NULL, 
                                                           sliderInput(inputId = "slider0", label = "Controle de Data", 
                                                              min = as.Date("2020-03-17"), 
                                                              max = as.Date("2021-09-05"), 
                                                              value = c(as.Date("2020-03-17"), as.Date("2021-09-05")
                                                                        )))))),
        tabItem(tabName = "confirmados", 
                fluidRow(infoBoxOutput(outputId = "infoBox11"),
                         infoBoxOutput(outputId = "infoBox12"),
                         infoBoxOutput(outputId = "infoBox13")
                         ),
                fluidRow(column(width = 12, offset = 0, box(title = "Casos Confirmados", plotOutput(outputId = "plot1", height = 280), width = NULL, background = "light-blue"))
                         ),
                fluidRow(column(width = 10, allign = "center", offset = 1, 
                                box(width = NULL, sliderInput(inputId = "slider1", label = "Controle de Data", 
                                                              min = as.Date("2020-03-17"), 
                                                              max = as.Date("2021-09-05"), 
                                                              value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                              )
                                    )
                                )
                         )
                ),
        tabItem(tabName = "ativos", 
                fluidRow(infoBoxOutput(outputId = "infoBox21"),
                         infoBoxOutput(outputId = "infoBox22"),
                         infoBoxOutput(outputId = "infoBox23")
                         ),
                fluidRow(column(width = 12, offset = 0, box(title = "Casos Ativos", plotOutput(outputId = "plot2", height = 280), width = NULL, background = "light-blue"))
                         ),
                fluidRow(column(width = 10, allign = "center", offset = 1, 
                                box(width = NULL, sliderInput(inputId = "slider2", label = "Controle de Data", 
                                                              min = as.Date("2020-03-17"), 
                                                              max = as.Date("2021-09-05"), 
                                                              value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                              )
                                    )
                                )
                         )
                ),
        tabItem(tabName = "recuperados", 
                fluidRow(infoBoxOutput(outputId = "infoBox31"),
                         infoBoxOutput(outputId = "infoBox32"),
                         infoBoxOutput(outputId = "infoBox33")
                         ),
                fluidRow(column(width = 12, offset = 0, box(title = "Casos Recuperados", plotOutput(outputId = "plot3", height = 280), width = NULL, background = "light-blue"))
                         ),
                fluidRow(column(width = 10, allign = "center", offset = 1, 
                                box(width = NULL, sliderInput(inputId = "slider3", label = "Controle de Data", 
                                                              min = as.Date("2020-03-17"), 
                                                              max = as.Date("2021-09-05"), 
                                                              value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                              )
                                    )
                                )
                         )
                ),
        tabItem(tabName = "obitos", 
                fluidRow(infoBoxOutput(outputId = "infoBox41"),
                         infoBoxOutput(outputId = "infoBox42"),
                         infoBoxOutput(outputId = "infoBox43")
                         ),
                fluidRow(column(width = 12, offset = 0, box(title = "Casos de Óbito", plotOutput(outputId = "plot4", height = 280), width = NULL, background = "light-blue"))
                         ),
                fluidRow(column(width = 10, allign = "center", offset = 1, 
                                box(width = NULL, sliderInput(inputId = "slider4", label = "Controle de Data", 
                                                              min = as.Date("2020-03-17"), 
                                                              max = as.Date("2021-09-05"), 
                                                              value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                              )
                                    )
                                )
                         )
                ),
        tabItem(tabName = "novos",
                fluidRow(infoBoxOutput(outputId = "infoBox51"),
                         infoBoxOutput(outputId = "infoBox52"),
                         infoBoxOutput(outputId = "infoBox53")
                         ),
                fluidRow(column(width = 12, offset = 0, box(title = "Casos Novos", plotOutput(outputId = "plot5", height = 280), width = NULL, background = "light-blue"))
                         ),
                fluidRow(column(width = 10, allign = "center", offset = 1, 
                                box(width = NULL, sliderInput(inputId = "slider5", label = "Controle de Data", 
                                                              min = as.Date("2020-03-17"), 
                                                              max = as.Date("2021-09-05"), 
                                                              value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                              )
                                    )
                                )
                         )
                ),
        tabItem(tabName = "comparacao",
                fluidRow(column(width = 4, offset = 0, selectInput(inputId = "select1", label = "Primeiro Gráfico",
                                                                       c("Casos Confirmados" = "select11", 
                                                                         "Casos Ativos" = "select12",
                                                                         "Casos Recuperados" = "select13",
                                                                         "Casos de Óbito" = "select14",
                                                                         "Casos Novos" = "select15"), width = NULL)
                                ),
                          column(width = 4, offset = 2, selectInput(inputId = "select2", label = "Segundo Gráfico",
                                                                       c("Casos Confirmados" = "select21", 
                                                                         "Casos Ativos" = "select22",
                                                                         "Casos Recuperados" = "select23",
                                                                         "Casos de Óbito" = "select24",
                                                                         "Casos Novos" = "select25"), 
                                                                    selected = "select22",
                                                                    width = NULL)
                                 )
                         ),
                fluidRow(box(title = "Primeiro Gráfico", plotOutput(outputId = "plot61", height = 305), width = 6, background = "light-blue"), 
                         box(title = "Segundo Gráfico", plotOutput(outputId = "plot62", height = 305), width = 6, background = "light-blue")
                ),
                fluidRow(column(width = 10, allign = "center", offset = 1,
                                box(width = NULL, sliderInput(inputId = "slider6", label = "Controle de Data",
                                                              min = as.Date("2020-03-17"),
                                                              max = as.Date("2021-09-05"),
                                                              value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                              )
                                    )
                                )
                         )
        )
      )
    )
  )
)

?plotOutput()
?box()
?tabItem()
?fluidRow()
?infoBoxOutput()
?infoBox()
?sliderInput()
?column()
?dashboardPage()
?navbarPage()
?selectInput()
