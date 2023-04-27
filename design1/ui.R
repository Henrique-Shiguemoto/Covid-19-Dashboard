# Carregamento de pacotes necessários
library(shiny)
library(shinydashboard)
library(rio)

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
                fluidRow(column(width = 8, 
                                box(title = "Dashboard Casos Confirmados", width = NULL, plotOutput(outputId = "dashboard1", height = 385)), 
                                box(sliderInput(inputId = "slider1", "Number of observations:", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))
                                                ), 
                                    width = NULL)
                                ),
                         column(width = 4, 
                                infoBoxOutput(outputId = "infoBox11", width = NULL),
                                infoBoxOutput(outputId = "infoBox12", width = NULL),
                                infoBoxOutput(outputId = "infoBox13", width = NULL),
                                infoBoxOutput(outputId = "infoBox14", width = NULL),
                                infoBoxOutput(outputId = "infoBox15", width = NULL)
                                )
                         )
                ),
        tabItem(tabName = "ativos", 
                fluidRow(column(width = 8,
                                box(title = "Dashboard Casos Ativos", width = NULL, plotOutput(outputId = "dashboard2", height = 385)),
                                box(sliderInput(inputId = "slider2", "Number of observations:", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))), 
                                    width = NULL)
                                ),
                         column(width = 4,
                                infoBoxOutput(outputId = "infoBox21", width = NULL),
                                infoBoxOutput(outputId = "infoBox22", width = NULL),
                                infoBoxOutput(outputId = "infoBox23", width = NULL),
                                infoBoxOutput(outputId = "infoBox24", width = NULL),
                                infoBoxOutput(outputId = "infoBox25", width = NULL)
                                )
                         )
                ),
        tabItem(tabName = "recuperados", 
                fluidRow(column(width = 8, 
                                box(title = "Dashboard Casos Recuperados", width = NULL, plotOutput(outputId = "dashboard3", height = 385)),
                                box(sliderInput(inputId = "slider3", "Number of observations:", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))), 
                                    width = NULL)
                                ), 
                         column(width = 4, 
                                infoBoxOutput(outputId = "infoBox31", width = NULL),
                                infoBoxOutput(outputId = "infoBox32", width = NULL),
                                infoBoxOutput(outputId = "infoBox33", width = NULL),
                                infoBoxOutput(outputId = "infoBox34", width = NULL),
                                infoBoxOutput(outputId = "infoBox35", width = NULL)
                                )
                         )
                ),
        tabItem(tabName = "obitos", 
                fluidRow(column(width = 8, 
                                box(title = "Dashboard Casos de Óbito", width = NULL, plotOutput(outputId = "dashboard4", height = 385)),
                                box(sliderInput(inputId = "slider4", "Number of observations:", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))),
                                    width = NULL)
                                ),
                         column(width = 4,
                                infoBoxOutput(outputId = "infoBox41", width = NULL),
                                infoBoxOutput(outputId = "infoBox42", width = NULL),
                                infoBoxOutput(outputId = "infoBox43", width = NULL),
                                infoBoxOutput(outputId = "infoBox44", width = NULL),
                                infoBoxOutput(outputId = "infoBox45", width = NULL)
                                )
                         )
                ),
        tabItem(tabName = "novos",
                fluidRow(column(width = 8,
                                box(title = "Dashboard Casos Novos", width = NULL, plotOutput(outputId = "dashboard5", height = 385)),
                                box(sliderInput(inputId = "slider5", "Number of observations:", 
                                                min = as.Date("2020-03-17"), 
                                                max = as.Date("2021-09-05"), 
                                                value = c(as.Date("2020-03-17"), as.Date("2021-09-05"))), 
                                    width = NULL)
                                ),
                         column(width = 4, 
                                infoBoxOutput(outputId = "infoBox51", width = NULL),
                                infoBoxOutput(outputId = "infoBox52", width = NULL),
                                infoBoxOutput(outputId = "infoBox53", width = NULL),
                                infoBoxOutput(outputId = "infoBox54", width = NULL),
                                infoBoxOutput(outputId = "infoBox55", width = NULL)
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
?infoBoxOutput()
?infoBox()
?sliderInput()
?column()

