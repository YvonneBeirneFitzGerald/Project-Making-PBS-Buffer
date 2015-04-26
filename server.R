# Developing Data Projects Class Project
# Making PBS Buffer Stocks
# Complete

# Server.R file needed in the directory of ui.R

library(shiny)

PBSCalculator <- function(Concentration) Concentration
shinyServer(
        function(input, output) {
                output$Conc <- renderText({input$Concentration})
                output$mL <- renderText({input$mL})
               
                output$concWater <- renderText({input$goButton 
                                                isolate(paste(PBSCalculator (input$mL*.8)))})
                
           
                
                output$concWater <- renderText({PBSCalculator (input$mL*.8)})
                output$concNaCl <- renderText({PBSCalculator (input$Concentration*8*input$mL/1000)})
                output$concKCl <- renderText({PBSCalculator (input$Concentration*0.2*input$mL/1000)})
                output$concDiPhos <- renderText({PBSCalculator (input$Concentration*1.44*input$mL/1000)})
                output$concMonoPhos <- renderText({PBSCalculator (input$Concentration*0.24*input$mL/1000)})
                
                output$concCalChlDi <- renderText({PBSCalculator (input$Concentration*0.133*input$mL/1000)})
                output$concMagChlHyd <- renderText({PBSCalculator (input$Concentration*0.1*input$mL/1000)})
                
        }
)