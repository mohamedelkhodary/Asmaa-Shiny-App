library(shiny)
shinyUI(fluidPage(
  
  titlePanel("Star Graph App"),
  
  tabsetPanel(
    
    ##########Documentation
    tabPanel("Documentation",
             
             h1("Star Graph App"),
             br(),
             h4("This is a simple star graph demonstration app,
                where you can change star graph size,
                node color and size as well as edge color and width."),
             br(),
             h4("Input fields will be avaiable to user in order to ernter his
                desired value for each variable and changes will automatically
                appear")
             
             ),
    
    #########App
    tabPanel("App",
             
             sidebarLayout(
               sidebarPanel(
                 numericInput('n', 'Star Graph Size', 5, min = 2, max = 20),
                 selectizeInput("nodecolor","Node Color:",c("green","red","blue")),
                 selectizeInput("edgecolor","Edge Color",c("red","green","blue")),
                 sliderInput('nodesize', 'Node size', min = 10, max = 35, value = 15),
                 sliderInput('edgewidth', 'Edge Width', min = 1, max = 10, value = 5),
                 hr(),
                 helpText("by Asmaa Altnanay July 16 2017")
               ),
               
               mainPanel(
                 plotOutput('plot1')
               )
             )
             
    )
             )
  
    ))