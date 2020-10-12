install.packages('tidytuesdayR')
install.packages('ggpubr')
library(ggpubr)
library(tidytuesdayR)
library(tidyverse)
library(ggplot2)
library(usmap)

dairy = tt_load(2019,5)
clean_cheese = dairy$clean_cheese
fluid_milk_sales = dairy$fluid_milk_sales
milk_products_facts = dairy$milk_products_facts
milkcow_facts = dairy$milkcow_facts
state_milk_production = dairy$state_milk_production




states_by_year = pivot_wider(state_milk_production, names_from = year, values_from = milk_produced)


par(mfrow = c(3, 2))

a = plot_usmap(data = states_by_year, values = '1970', color = 'red' ) +
  scale_fill_continuous(low = 'white', high = 'blue', name = 'Milk 1970', label = scales::comma) +
  theme(legend.position = 'right')

b = plot_usmap(data = states_by_year, values = '1980', color = 'red' ) +
  scale_fill_continuous(low = 'white', high = 'blue', name = 'Milk 1970', label = scales::comma) +
  theme(legend.position = 'right')

c = plot_usmap(data = states_by_year, values = '1990', color = 'red' ) +
  scale_fill_continuous(low = 'white', high = 'blue', name = 'Milk 1970', label = scales::comma) +
  theme(legend.position = 'right')

d = plot_usmap(data = states_by_year, values = '2000', color = 'red' ) +
  scale_fill_continuous(low = 'white', high = 'blue', name = 'Milk 1970', label = scales::comma) +
  theme(legend.position = 'right')

f = plot_usmap(data = states_by_year, values = '2010', color = 'red' ) +
  scale_fill_continuous(low = 'white', high = 'blue', name = 'Milk 1970', label = scales::comma) +
  theme(legend.position = 'right')

g = plot_usmap(data = states_by_year, values = '2017', color = 'red' ) +
  scale_fill_continuous(low = 'white', high = 'blue', name = 'Milk 1970', label = scales::comma) +
  theme(legend.position = 'right')


#  scale_fill_continuous(low = 'white', high = 'blue', name = 'Milk 1970', label = scales::comma)


ggarrange(a, b, c, d, f, g, 
          labels = c('1970', '1980', '1990', '2000', '2010', '2017'),
          ncol = 2, nrow = 3)


ggarrange(a, b,
          ncol = 2, nrow = 1)


plot_usmap(data = states_by_year, values = '2017', color = 'black' ) +
  scale_fill_continuous(low = 'white', high = 'brown', name = 'Milk 1970', label = scales::comma) +
  theme(legend.position = 'right')
