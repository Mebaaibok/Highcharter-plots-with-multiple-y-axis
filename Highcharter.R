
#Sample data
data
> head(data)
  Time BC PM2.5   CO     PM10    TNMHC Day
1    0  6   147 0.82 177.3333 235.2360  12
2    1  7   137 0.73 176.3333 232.9437  12
3    2  6   115 0.64 149.6667 219.5217  12
4    3  6   108 0.57 148.0000 211.4050  12
5    4  9    83 0.50 108.6667 211.5773  12
6    5  9    94 0.52 131.0000 254.4057  12

#Create data
x1<-data12$CO
x2<-data12$BC
x3<-data12$PM2.5
x4<-data12$PM10
x5<-data12$TNMH

#Create plot
highchart() %>% 
  hc_chart(style = list(fontFamily = "arial",
                        fontWeight = "bold", fontColor = "black"))%>%
  hc_add_series(data = x1, color = "black", name = "CO") %>% 
  hc_add_series(data = x2, yAxis = 1, color ='#7cb5ec', name = "BC") %>% 
  hc_add_series(data = x3, yAxis = 2, color ='purple', name = "PM2.5") %>%
  hc_add_series(data = x4, yAxis = 3, color ='#90ed7d', name = "PM10") %>%
  hc_add_series(data = x5, yAxis = 4, color ='#f7a35c', name = "TNMHC") %>%
  hc_yAxis_multiples(
    list(lineWidth = 3, lineColor='black', title=list(text="CO", style = list(color= "black", fontFamily = "arial", fontFace = "bold"))),
    list(lineWidth = 3, lineColor='#7cb5ec', title=list(text="BC",style = list(color= "black", fontFamily = "arial", fontFace = "bold"))),
    list(lineWidth = 3, lineColor="purple", title=list(text="PM2.5",style = list(color= "black", fontFamily = "arial", fontFace = "bold"))),
    list(lineWidth = 3, lineColor="#90ed7d", title=list(text="PM10",style = list(color= "black", fontFamily = "arial", fontFace = "bold"))),
    list(lineWidth = 3, lineColor="#f7a35c", title=list(text="TNMHC",style = list(color= "black", fontFamily = "arial", fontFace = "bold"))))
