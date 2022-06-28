# Visualize data in R with ggplot2 <br/>
## ggplot2 <br/>

The ggplot2 package lets us make high quality, customizable plots of the data. <br/>
The ggplot2 is based on [the grammar of graphics](https://www.amazon.com/Grammar-Graphics-Statistics-Computing/dp/0387245448), so we can build any plot from the same basic components, like building blocks. <br/>

Building blocks include:

 - **A dataset**
 - **A set of geoms:** A geom refers to the geometric object used to represent our data. For example, we can use points to create a scatterplot, bars to create a bar chart, lines to create a line diagram, etc. 
 - **A set of aesthetic attributes:** An aesthetic is a visual property of an object in our plot. We can think of an aesthetic as a connection, or mapping, between a visual feature in our plot and a variable in our data. For example, in a scatterplot, aesthetics include things like the size, shape, color, or location (x-axis, y-axis) of our data points. 


### Preparing the data
We will use R code to specify the dataset, geom, and aesthetics of the plot.
Once we decide on a dataset, which is about [the Paris Metro trafic](https://www.data.gouv.fr/fr/datasets/trafic-annuel-entrant-par-station-du-reseau-ferre-2021/)) in this example and from https://www.data.gouv.fr website, we then open RStudio :

 1. We need to install and then load this packege: <br/>

 - library(ggplot2)
 - library(stplanr)
 - library(dplyr)
 - library(tidyverse)
 - library(readr)
 - library(skimr)
 - library(tibble)


After uploading the .csv file from , we read its data into a variable named "Metro": <br/>
`Metro <- read.csv("Metro_Paris.csv")`

And check the data : <br/>
`View(Metro)`

Sort the 5 most frequent stations:

`Metro_pipe <- Metro %>%` <br/>
`#group_by(trafic) %>%` <br/>
`arrange(desc(trafic)) %>%` <br/>  
`slice(1:5)` <br/>

plotting the data: <br/>  

`ggplot` <br/> 
`(data = Metro_pipe, mapping = aes(reorder(x = station, -trafic), y = (trafic/1000000))) + ` <br/> 
  `geom_col(aes(fill =station)) +` <br/>  
  `scale_fill_manual(values = c("#931111", "#BF1616", "#420000", "#790000", "#600000")) +` <br/> 
  `labs(x = "station", y = "annual traffic in millions") +` <br/> 
  `theme(legend.position = "none") +` <br/>  
  `theme(axis.line = element_line(),` <br/> 
        `panel.grid.major = element_blank(),` <br/> 
        `panel.grid.minor = element_blank(),` <br/> 
        `panel.border = element_blank(),` <br/> 
        `panel.background = element_blank()` <br/> 
  `)` <br/> 
        
<p align="center">
  <img width="800" height="679" src="https://user-images.githubusercontent.com/35872299/176253580-c1b36fae-4a5e-44e6-8bba-ea54e4afcd91.png">
</p>
<br/> 
Link: https://rpubs.com/sydibyd/919797
