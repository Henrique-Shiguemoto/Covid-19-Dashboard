# Carregamento de pacotes necessários
library(shiny)
library(shinydashboard)
library(rio)

# Importação e sumarização do dataset
casosCovid <- import("casos_covid_maringa.csv")
summary(casosCovid)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Covid-19: Maringá"),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Casos Confirmados", tabName = "confirmados"),
        menuItem("Casos Ativos", tabName = "ativos"),
        menuItem("Casos Recuperados", tabName = "recuperados"),
        menuItem("Casos de Óbito", tabName = "obitos"),
        menuItem("Casos Novos", tabName = "novos")
      )
    ),
    dashboardBody(
      tabItems(
        tabItem(tabName = "confirmados", 
                fluidRow(infoBoxOutput(outputId = "infoBox11"),
                         infoBoxOutput(outputId = "infoBox12"),
                         infoBoxOutput(outputId = "infoBox13")
                         ),
                fluidRow(column(width = 8, box(title = "Casos Confirmados", plotOutput(outputId = "plot1", height = 260), width = NULL)),
                         column(width = 4, box(title = "Breve Explicação", footer = "Explicação Explicação Explicação Explicação Explicação", width = NULL, height = 325))
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
                fluidRow(column(width = 8, box(title = "Casos Ativos", plotOutput(outputId = "plot2", height = 260), width = NULL)),
                         column(width = 4, box(title = "Breve Explicação", footer = "Explicação Explicação Explicação Explicação Explicação", width = NULL, height = 325))
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
                fluidRow(column(width = 8, box(title = "Casos Recuperados", plotOutput(outputId = "plot3", height = 260), width = NULL)),
                         column(width = 4, box(title = "Breve Explicação", footer = "Explicação Explicação Explicação Explicação Explicação", width = NULL, height = 325))
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
                fluidRow(column(width = 8, box(title = "Casos de Óbito", plotOutput(outputId = "plot4", height = 260), width = NULL)),
                         column(width = 4, box(title = "Breve Explicação", footer = "Explicação Explicação Explicação Explicação Explicação", width = NULL, height = 325))
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
                fluidRow(column(width = 8, box(title = "Casos Novos", plotOutput(outputId = "plot5", height = 260), width = NULL)),
                         column(width = 4, box(title = "Breve Explicação", footer = "Explicação Explicação Explicação Explicação Explicação", width = NULL, height = 325))
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
