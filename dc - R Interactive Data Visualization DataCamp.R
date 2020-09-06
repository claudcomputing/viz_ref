#R_To_transfer.R

______________________________________________________________________________________________
SKILL TRACK
Interactive Data Visualization in R

1
Interactive Maps with leaflet in R
Learn how to produce interactive web maps with ease using leaflet.

2
Interactive Data Visualization with plotly in R
Learn to create interactive graphics entirely in R with plotly.

3
Intermediate Interactive Data Visualization with plotly
Learn to create animated graphics and linked views entirely in R with plotly.
  1. Introduction to plotly 
  100%
  In this chapter, you will receive an introduction to basic graphics with plotly. 
  • Plotly also loads ggplot2 and dplyr
  • You will create your first interactive graphics (#Convert the scatterplot to a plotly graphic is as easy as ggplotly(scatter_ggplot)) 
  • displaying both univariate (histogram, bar) and bivariate (scatterplot, stacked bar chart, box plot) distributions.
  2. Styling and customizing your graphics
  0%
  In this chapter, you will learn how to customize the appearance of your graphics and use opacity, symbol, and color to clarify your message. You will also learn how to transform axes, label your axes, and customize the hover information of your graphs.
  3. Advanced charts
  0%
  In this chapter, you move past basic plotly charts to explore more-complex relationships and larger datasets. You will learn how to layer traces, create faceted charts and scatterplot matrices, and create binned scatterplots.
  4. Case Study
  0%
  In the final chapter, you use your plotly toolkit to explore the results of the 2018 United States midterm elections, learning how to create maps in plotly along the way.
  
  
4
Visualizing Big Data with Trelliscope
Learn how to visualize big data in R using ggplot2 and trelliscopejs.

5
Interactive Data Visualization with rbokeh
Learn rbokeh: a visualization library for interactive web-based plots.


#1. Introduction to plotly 
# Create a scatter plot of User_Score against Critic_Score
vgsales %>% 
  plot_ly(x = ~Critic_Score, y = ~User_Score) %>%
  add_markers()

  # Filter out the 2016 video games
vg2016 <- vgsales %>%
	filter(Year == 2016)

# Create a stacked bar chart of Rating by Genre
vg2016 %>%
	count(Genre, Rating) %>%
	plot_ly(x = ~Genre, y = ~n, color = ~Rating) %>%
  	add_bars() %>%
  	layout(barmode = "stack")

  # Filter out the 2016 video games
vg2016 <- vgsales %>%
	filter(Year == 2016)

# Create boxplots of Global_Sales by Genre for above data
vg2016 %>% 
  plot_ly(x=~Global_Sales, y=~Genre)%>%
  add_boxplot()