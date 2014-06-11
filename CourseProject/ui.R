shinyUI(pageWithSidebar(
  headerPanel('Wind of Australian states'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(mydata),selected=names(mydata)[[3]]),
    selectInput('ycol', 'Y Variable', names(mydata),
                selected=names(mydata)[[4]])
    
  ),
  mainPanel(
    plotOutput('plot1')
  )
))