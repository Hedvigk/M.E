# Energiregnskap. Produksjon og forbruk av energiprodukter, 
# etter næring og husholdninger, 2000 - siste år. 2000 - siste år
options(encoding="UTF-8")
library(PxWebApiData)
library(httr)
library(rjstat)
url <- "https://data.ssb.no/api/v0/no/table/11558/"

data.tmp <- '
{
  "query": [
    {
      "code": "Energiregnpost",
      "selection": {
        "filter": "item",
        "values": [
          "T01",
          "A01",
          "A01ur"
        ]
      }
    },
    {
      "code": "Energiprodukter",
      "selection": {
        "filter": "item",
        "values": [
          "EPTOT03",
          "EPTOT04",
          "EP00",
          "EP99",
          "EP990"
        ]
      }
    },
    {
      "code": "NaringMiljo",
      "selection": {
        "filter": "item",
        "values": [
          "A.00",
          "A.00.00",
          "A.00.00.00",
          "N.10.00.00",
          "H.00.00.00"
        ]
      }
    },
    {
      "code": "ContentsCode",
      "selection": {
        "filter": "item",
        "values": [
          "Mengde1",
          "Mengde2",
          "Mengde3"
        ]
      }
    },
    {
      "code": "Tid",
      "selection": {
        "filter": "item",
        "values": [
          "1990",
          "1991",
          "1992",
          "2020",
          "2021"
        ]
      }
    }
  ],
  "response": {
    "format": "json-stat2"
  }
}

'
d.tmp <- POST(url , body = data.tmp, encode = "json", verbose())
ds <- fromJSONstat(content(d.tmp, "text"))

data <- ApiData(url, returnMetaData = TRUE)
PxwebApiData::Ap

ApiData(url, )


data <- ApiData(url, Energiregnpost = list("vs:HelseRegion4",c("H12_F","H01_F","983971652","983971636","983971660","983971679","983971687","983971695","983971709","993467049","983971717","983971725","983971733","983971741","983971680","983971700","983971768","883971752","983971776","983971784","894166762","H01_P","H02_F","983975208","883975162","983975178","983975305","983975224","983975186","987399708","983975348","883975332","983975216","983975283","983975267","983975259","983975200","983975240","H02_P","H12_P","H12_AV","H03_F","983974724","983974694","983974732","983974678","H03_P","H03_AV","H04_F","983974791","983974767","983974759","983974856","983974872","997005562","986523065","883974832","H04_P","H04_AV","H05_F","983974929","983974880","983974902","983974910","983974899","H05_P","H05_AV")), 
                ContentsCode = list("item",c("Dognplass", "Liggedag", "Polikliniske","Dag")),
                Tid= list("item", c("2010","2011","2012","2013","2014","2015","2016","2017","2018","2019","2020","2021")),
                HelseTjenomr = FALSE,
                returnApiQuery = TRUE )
d.tmp <- POST(url , body = data, encode = "json", verbose())

install.packages("RJSONIO")
require(RJSONIO)
## Loading required package: RJSONIO

json_file <- fromJSON("https://data.ssb.no/api/v0/dataset/928196.json?lang=no")

json_file <- lapply(json_file, function(x) {
  x[sapply(x, is.null)] <- NA
  unlist(x)
})


url <- https://data.ssb.no/api/v0/en/table/11558
