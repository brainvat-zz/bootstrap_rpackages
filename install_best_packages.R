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

# Pay attention to R compiler warnings
# You may need to install supporting libraries outside of R
# ex:
#  brew install webp
#  brew install librsvg
#
if (pkgTest("webp")) { devtools::install_github("jeroenooms/webp")}
if (pkgTest("jpeg")) { devtools::install_github("s-u/jpeg")}
if (pkgTest("svglite")) { devtools::install_github("hadley/svglite")}
if (pkgTest("rsvg")) { devtools::install_github("jeroenooms/rsvg")}

# text
if (pkgTest("showtextdb")) { devtools::install_github("cran/showtextdb")}
if (pkgTest("sysfonts")) { devtools::install_github("yixuan/sysfonts")}
if (pkgTest("showtext")) { devtools::install_github("yixuan/showtext")}
if (pkgTest("extrafont")) { devtools::install_github("wch/extrafont")}
if (pkgTest("fontcm")) { devtools::install_github("wch/fontcm")}

# databases
if (pkgTest("Rcpp")) { devtools::install_github("RcppCore/Rcpp") }
if (pkgTest("DBI")) { install.packages("DBI") }
if (pkgTest("devtools")) { devtools::install_github("hadley/devtools") } 
if (pkgTest("sqldf")) { devtools::install_github("ggrothendieck/sqldf") } 
if (pkgTest("forecast")) { install.packages("forecast") } 
if (pkgTest("plyr")) { devtools::install_github("hadley/plyr") } 
if (pkgTest("stringr")) { devtools::install_github("hadley/stringr") }
if (pkgTest("ggvis")) { devtools::install_github("rstudio/ggvis") }

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

# hadley and other stuff

if (pkgTest("scales")) { devtools::install_github("hadley/scales")}
if (pkgTest("lubridate")) { devtools::install_github("hadley/lubridate") } 
if (pkgTest("ggplot2")) { install.packages("ggplot2") } 
if (pkgTest("littler")) { install.packages("littler") }
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
if (pkgTest("GGally")) { devtools::install_github("cran/GGally")}
if (pkgTest("rpart.plot")) { devtools::install_github("cran/rpart.plot")}
if (pkgTest("partykit")) { devtools::install_github("cran/partykit")}
if (pkgTest("dict")) { devtools::install_github("mkuhn/dict")}

# h2o
# 
if (pkgTest("h2o")) { 
  # from: http://www.h2o.ai/download/h2o/r
  # The following two commands remove any previously installed H2O packages for R.
  if ("package:h2o" %in% search()) { detach("package:h2o", unload=TRUE) }
  if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }
  
  # Next, we download packages that H2O depends on.
  pkgs <- c("methods","statmod","stats","graphics","RCurl","jsonlite","tools","utils")
  for (pkg in pkgs) {
    if (! (pkg %in% rownames(installed.packages()))) { install.packages(pkg) }
  }
  
  # Now we download, install and initialize the H2O package for R.
  install.packages("h2o", type="source", repos=(c("http://h2o-release.s3.amazonaws.com/h2o/rel-tibshirani/8/R")))
}
if (pkgTest("doMC")) { devtools::install_github("cran/doMC")}
if (pkgTest("xgboost")) { install.packages("xgboost") }
if (pkgTest("Matrix")) { install.packages("Matrix") }
if (pkgTest("survey")) { install.packages("survey") }
if (pkgTest("ganalytics")) { devtools::install_github("jdeboer/ganalytics") }

