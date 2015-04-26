# ui.R  needs server.R in the same directory
# Developing Data Projects Class Project
# Making PBS Buffer Stocks
# Complete

library(shiny)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Making PBS Buffer Stock Solution Calculator"),
                sidebarPanel(
                        numericInput('Concentration', 'Select the concentration (X) of the buffer stock you want to make', 1, min = 0, max = 10, step = 1),
                        numericInput('mL', 'Select the volumne (ml) of the buffer  you want to make', 1000, min = 0, max = 2000, step = 100),
                        
                        submitButton('Submit')
                    
                ),
                mainPanel(
                        
                        p('Tool to help scientist make different Concentrations (X)  and Volume (mL) of a PBS Buffer stock.'),
                        p('Enter the desire Concentration (X) and Volume (mL) to the left.'),
                        p('With Concentration 1x being standard concentration and 10x being 10 fold more concentrated solution'),
                        p('Recipe below will change dynamically based on the Concentration (X) and Volume (mL) selected'),
                        
                        h4('Your Recipe'),
                        h6('You entered Stock Concentration X'),
                        verbatimTextOutput("Conc"),
                        h6('You entered mL '),
                        verbatimTextOutput("mL"),
                        
                        
                        h4('Need To Add:'),
                        
                        h6('Water H20 (mL)'),
                        verbatimTextOutput ("concWater"),
                        h6('Sodium chloride NaCl (g)'),
                        verbatimTextOutput ("concNaCl"),
                        h6('Potassium chloride KCl (g)'),
                        verbatimTextOutput("concKCl"),
                        h6('Disodium phosphate Na2HPO4 (g)'),
                        verbatimTextOutput("concDiPhos"),
                        h6('Monopotassium phosphate KH2PO4 (g)'),
                        verbatimTextOutput("concMonoPhos"),
                      
                        h4('May Need To Add:'),
                        h6('Calcium Chloride Dihydrate CaCl2•2H2O (g)'),
                        verbatimTextOutput("concCalChlDi"),
                        h6('Magnesium Chloride Hexahydrate MgCl2•6H2O (g)'),
                        verbatimTextOutput("concMagChlHyd"),
                        
                        h4('Directions'),
                        p('1. Add component above to your bottle'),
                        p('2. Adjust your pH to 7.4 or your desired pH with Hydrochloric acid (HCL)'),
                        p('3. Add Water (H20) to bring the volumne up to final volume you selected'),
                        p('4. Sterile by autoclaving for 20 mins 15 psi (1.05 kg/cm2) on liquid cylce'),
                        p('5. Alternate sterilaztion method is by filter.'),
                        p('6. Store at room temperature.'),
        
                        
                        h4('Reference'),
                        p('Cold Spring Harbor Protocols'),
                        p('http://cshprotocols.cshlp.org/content/2006/1/pdb.rec8247')
                )
        )
)