install.packages('plotly')
library('plotly')

#Create some data
classes <- c("INFO 201", "INFO 380", "INFO 102", "INFO 999")

GPA <- c(3.2, 3.3, 3.9, 3.2)

students <- c(1090, 300, 49, 21, 300)

data <- data.frame(classes, GPA, students)

plot_ly(data, x= ~classes, y= ~students, type= 'surface',
        mode = 'text', text= ~classes, textposition = 'center',
        textfront = list(color, '#000000', size = 14) %>%
  xaxis = list(title = "My Classes",
               zeroline = TRUE,
               range = c(0,7)),
  yaxis = list(title = "Students",
               zeroline = TRUE,
               range = c(0, 1090))
        )