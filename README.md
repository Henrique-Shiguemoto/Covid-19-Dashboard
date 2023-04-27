# Dashboard for Covid-19 cases Data Visualization

The dataset used is from this [link](https://www.kaggle.com/datasets/elemosjr/casos-de-coronavrus-em-maringpr)

It is about the Covid-19 cases from 03-17-2020 to 09-05-2021 from Maringá city in Paraná State, Brazil.

# What was Used

- RStudio
- R (Shiny, rio, ggplot2)

# Methodologies

The Usability Engineering activities (Jakob Nielsen, 1994) were used to develop the final design (from <code>finalDesign</code> folder)

I'm not gonna get into too much of the design theory, but one of the activies is to practice what is called parallel design. This is about creating multiple designs for the product (a dashboard in this case). These parallel designs are the ones in the folders <code>design1</code>, <code>design2</code> and <code>design3</code>.

Through the analysis of these parallel designs, I decided to bring them all together in the final design (<code>finalDesign</code>).

# How to Run Source Code

This project requires the R Programming Language and RStudio environment installed to run the source code of the design folders you see in this repo. 

Given the user has RStudio and R installed, this project needs to install a couple of packages first. Those would be <code>shiny</code>, <code>shinydashboard</code>, <code>rio</code>, <code>ggplot2</code> and <code>lubridate</code>. You can install them, in the RStudio Terminal, with the <code>install.packages(c("shiny", "shinydashboard", "rio", "ggplot2", "lubridate"))</code> command.

Open one of the design folders in RStudio and open the files <code>ui.R</code> and <code>server.R</code>.

Before running the app, make sure you set the working directory to the directory the files you opened are currently at. You can do this using the <code>setwd("insert your working directory here")</code> or you can click the "Session" button at the top of RStudio, then click on "Set Working Directory" and then click on "To Source File Location".

In RStudio, there should be a "Run App" button. Click that button and the dashboard application should execute.

# Example

Here's a [video](https://youtu.be/1I6zEZJT7L0) of me running the program