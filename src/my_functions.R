setup_libs = function(){ #read in my general use packages
  library(tidyverse)
  library(here)
  library(janitor)
  library(lubridate)
}

stats_libs = function(){ #read in packages for a specific purpose (e.g. your stats toolkit)
  library(tidybayes)
  library(rethinking)
  library(bayesplot)
  library(brms)
}

read_data = function(file){ #expedite your file loading! this saves a couple steps, though may be a bit silly
  require(tidyverse)
  require(here)
  require(janitor)
  
read_csv(here("data", file)) %>% 
    clean_names()
}

read_tree_data = function(file){
  require(tidyverse)
  require(here)
  require(janitor)
  
  read_csv(here("data", file)) %>% 
    clean_names() %>% 
    mutate() %>% 
    filter()
}


