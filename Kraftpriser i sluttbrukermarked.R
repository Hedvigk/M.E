# Kraftpriser i sluttbrukermarkedet (øre/kWh),husholdning samlet, år

options(encoding="UTF-8")
library(PxWebApiData)
library(httr)
library(rjstat)
library(tidyverse)
url <- "https://data.ssb.no/api/v0/no/table/09366/"

data.tmp <- '
{
  "query": [
    {
      "code": "Kraftpriser",
      "selection": {
        "filter": "item",
        "values": [
          "01"
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
