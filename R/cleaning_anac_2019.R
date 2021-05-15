#Get files from ANAC database

#Install packages
library(readr)
library(dplyr)
library(lubridate)
library(tidyverse)

#useful objects and filters
VRA_COL_NAMES_12 <- c(
  "ICAO_Airline",
  "Flight_number", 
  "Authorization_type",
  "Operation_type",
  "ADEP",
  "ADES",
  "SOBT",
  "AOBT",
  "SIBT",
  "AIBT",
  "Status",
  "Justification_code")

colspecs <- cols(
  ICAO_Airline = col_character(),
  Flight_number = col_character(),
  Authorization_type = col_character(),
  cd_tipo_linha = col_character(),
  ADEP = col_character(),
  ADES = col_character(),
  SOBT = col_character(),
  AOBT = col_character(),
  SIBT = col_character(),
  AIBT = col_character(),
  Status = col_character(),
  Justification_code = col_character()
)

#read files and rename columns
vra_01_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/percentuais-de-atrasos-e-cancelamentos-2/2019/vra_012019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_01_2019) <- VRA_COL_NAMES_12

vra_02_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/percentuais-de-atrasos-e-cancelamentos-2/2019/vra_022019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_02_2019) <- VRA_COL_NAMES_12

vra_03_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/percentuais-de-atrasos-e-cancelamentos-2/2019/vra_032019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_03_2019) <- VRA_COL_NAMES_12

vra_04_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/VRA_AbriL_2019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_04_2019) <- VRA_COL_NAMES_12

vra_05_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/ANAC_VRA_05_2019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_05_2019) <- VRA_COL_NAMES_12

vra_06_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/vra_062019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_06_2019) <- VRA_COL_NAMES_12

vra_07_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/vra_072019.csv", 
                          "\t", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_07_2019) <- VRA_COL_NAMES_12

vra_08_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/VRA_082019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_08_2019) <- VRA_COL_NAMES_12

vra_09_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/vra_092019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_09_2019) <- VRA_COL_NAMES_12

vra_10_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/VRA_102019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_10_2019) <- VRA_COL_NAMES_12

vra_11_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/vra_112019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_11_2019) <- VRA_COL_NAMES_12

vra_12_2019 <- read_delim("https://www.gov.br/anac/pt-br/assuntos/dados-e-estatisticas/base-historica-1/vra/2019/vra_12_2019.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_12_2019) <- VRA_COL_NAMES_12

#join all months and change data types
vra_full_2019 <- bind_rows(vra_01_2019,
          vra_02_2019,
          vra_03_2019,
          vra_04_2019,
          vra_05_2019,
          vra_06_2019,
          vra_07_2019,
          vra_08_2019,
          vra_09_2019,
          vra_10_2019,
          vra_11_2019,
          vra_12_2019)


vra_full_2019 <- vra_full_2019 %>% mutate(
  ICAO_Airline = as.factor(ICAO_Airline),
  Authorization_type = as.factor(Authorization_type),
  Operation_type = as.factor(Operation_type),
  ADEP = as.factor(ADEP),
  ADES = as.factor(ADES),
  SOBT = dmy_hm(SOBT),
  AOBT = dmy_hm(AOBT),
  SIBT = dmy_hm(SIBT),
  AIBT = dmy_hm(AIBT),
  Justification_code = as.factor(Justification_code))

summary(vra_full_2019)

#write files
write_csv(vra_full_2019, "./data/vra_full_2019.csv")

