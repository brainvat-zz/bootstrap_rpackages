#######
# A number of these packages described here:
# http://www.computerworld.com/article/2921176/business-intelligence/great-r-packages-for-data-import-wrangling-visualization.html
#
# To avoid Github rate limiting, set up your own personal
# access token and place it in your ~/.Renviron file
# GITHUB_PAT=<your_token>
#####

# If you're sure you have all of the database dependency
# libraries installed, change this flag to allow the
# corresponding R packages to be installed
prerequisites_installed <- TRUE

pkgTest <- function(x) {
  cat(paste0("Testing for package ", x, "\n"))
  not_found <-- (x %in% rownames(installed.packages()) == FALSE)
  if (!not_found) cat("Found ", x, " = ", paste0(packageVersion(x), "\n"))
  not_found
}

if (pkgTest("Rcpp")) { devtools::install_github("RcppCore/Rcpp") }
if (pkgTest("DBI")) { install.packages("DBI") }
if (pkgTest("devtools")) { devtools::install_github("hadley/devtools") } 
if (pkgTest("sqldf")) { devtools::install_github("ggrothendieck/sqldf") } 
if (pkgTest("forecast")) { install.packages("forecast") } 
if (pkgTest("plyr")) { devtools::install_github("hadley/plyr") } 
if (pkgTest("stringr")) { devtools::install_github("hadley/stringr") }

# you may have to install numerous libraries to get these packages to work
if (prerequisites_installed) {
    
  # (on Mac, try) brew install postgresql
  if (pkgTest("RPostgreSQL")) { install.packages("RPostgreSQL") }  
  
  # (on Mac, try) brew install mysql-connector-c
  if (pkgTest("RMySQL")) { 
    
    # DBI >= 0.3.1.9007 is required by ‘RMySQL’
    # packageVersion("DBI")
    devtools::install_github("rstats-db/DBI")
    devtools::install_github("rstats-db/RMySQL") 
  }

  if (pkgTest("RMongo")) { install.packages("RMongo") }
  
  # needs drat
  if (pkgTest("RODBC")) {
    if (pkgTest("drat")) { install.packages("drat") }
    install.packages("RODBC") 
  }
  
  if (pkgTest("RSQLite")) { install.packages("RSQLite") } 
}

if (pkgTest("lubridate")) { devtools::install_github("hadley/lubridate") } 
if (pkgTest("ggplot2")) { install.packages("ggplot2") } 
if (pkgTest("qcc")) { install.packages("qcc") } 
if (pkgTest("randomForest")) { install.packages("randomForest") } 
if (pkgTest("downloader")) { devtools::install_github("wch/downloader") } 
if (pkgTest("foreach")) { install.packages("foreach") } 
if (pkgTest("rcdimple")) { devtools::install_github("timelyportfolio/rcdimple") } 
if (pkgTest("car")) { install.packages("car") } 
if (pkgTest("gmodels")) { install.packages("gmodels") } 
if (pkgTest("openxlsx")) { devtools::install_github("awalker89/openxlsx") } 
if (pkgTest("shiny")) { devtools::install_github("rstudio/shiny") } 
if (pkgTest("rga")) { devtools::install_github("skardhamar/rga") } 
if (pkgTest("fitbitScraper")) { install.packages("fitbitScraper")  } 
if (pkgTest("tmap")) { install.packages("tmap") } 
if (pkgTest("choroplethr")) { devtools::install_github("arilamstein/choroplethr") } 
if (pkgTest("leaflet")) { devtools::install_github("rstudio/leaflet") } 
if (pkgTest("viridis")) { install.packages("viridis") } 
if (pkgTest("plotly")) { devtools::install_github("ropensci/plotly") } 
if (pkgTest("RColorBrewer")) { install.packages("RColorBrewer") } 
if (pkgTest("htmltools")) { install.packages("htmltools") } 
if (pkgTest("htmlwidgets")) { devtools::install_github("ramnathv/htmlwidgets") } 
if (pkgTest("metricsgraphics")) { install.packages("metricsgraphics") } 
if (pkgTest("googleVis")) { devtools::install_github("mages/googleVis") } 
if (pkgTest("dygraphs")) { install.packages("dygraphs") } 
if (pkgTest("DT")) { install.packages("DT") } 
if (pkgTest("jsonlite")) { devtools::install_github("jeroenooms/jsonlite") } 
if (pkgTest("knitr")) { devtools::install_github("yihui/knitr") } 
if (pkgTest("editR")) { devtools::install_github("swarm-lab/editR") } 
if (pkgTest("zoo")) { install_packages("zoo") } 
if (pkgTest("data.table")) { devtools::install_github("Rdatatable/data.table", build_vignettes = FALSE) } 
if (pkgTest("tidyr")) { devtools::install_github("hadley/tidyr") } 
if (pkgTest("reshape2")) { devtools::install_github("hadley/reshape") } 
if (pkgTest("dplyr")) { devtools::install_github("hadley/dplyr") } 
if (pkgTest("quantmod")) { install.packages("quantmod") } 
if (pkgTest("XML")) { install.packages("XML") } 
if (pkgTest("psych")) { install.packages("psych") } 
if (pkgTest("rio")) { install.packages("rio") } 
if (pkgTest("readr")) { devtools::install_github("hadley/readr") } 
if (pkgTest("googlesheets")) { devtools::install_github("jennybc/googlesheets") } 
if (pkgTest("readxl")) { devtools::install_github("hadley/readxl") } 
if (pkgTest("roxygen2")) { devtools::install_github("klutometis/roxygen") } 
if (pkgTest("RSiteCatalyst")) { devtools::install_github("randyzwitch/RSiteCatalyst") } 
if (pkgTest("httr")) { devtools::install_github("hadley/httr")}
