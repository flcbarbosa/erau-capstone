#useful objects and filters
VRA_COL_NAMES_11 <- c(
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
  "Status"
  )


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
vra_01_2020 <- read_delim("../data-raw/ANAC database/vra_01_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_01_2020) <- VRA_COL_NAMES_12

vra_02_2020 <- read_delim("../data-raw/ANAC database/vra_02_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_02_2020) <- VRA_COL_NAMES_12

vra_03_2020 <- read_delim("../data-raw/ANAC database/vra_03_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
colnames(vra_03_2020) <- VRA_COL_NAMES_12

vra_04_2020 <- read_delim("../data-raw/ANAC database/vra_04_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
vra_04_2020 <- vra_04_2020[,c(1:3,5:12)]
colnames(vra_04_2020) <- VRA_COL_NAMES_11

vra_05_2020 <- read_delim("../data-raw/ANAC database/vra_05_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
#vra_05_2020 <- vra_05_2020[,c(1:3,5:12)]
colnames(vra_05_2020) <- VRA_COL_NAMES_11

vra_06_2020 <- read_delim("../data-raw/ANAC database/vra_06_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
#vra_05_2020 <- vra_05_2020[,c(1:3,5:12)]
colnames(vra_06_2020) <- VRA_COL_NAMES_11

vra_07_2020 <- read_delim("../data-raw/ANAC database/vra_07_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
#vra_05_2020 <- vra_05_2020[,c(1:3,5:12)]
colnames(vra_07_2020) <- VRA_COL_NAMES_11

vra_08_2020 <- read_delim("../data-raw/ANAC database/vra_08_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE, col_types = cols(X2 = col_character(),
                                                              X3 = col_character()),
                          skip = 1)
#vra_05_2020 <- vra_05_2020[,c(1:3,5:12)]
colnames(vra_08_2020) <- VRA_COL_NAMES_11

vra_09_2020 <- read_delim("../data-raw/ANAC database/vra_09_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE,
                          col_types = cols(X2 = col_character()
                                            ,X3 = col_character()),
                          skip = 1)
vra_09_2020 <- relocate(vra_09_2020, X8, .after = X5)
colnames(vra_09_2020) <- VRA_COL_NAMES_11

vra_10_2020 <- read_delim("../data-raw/ANAC database/vra_10_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE,
                          col_types = cols(X2 = col_character()
                                           ,X3 = col_character()),
                          skip = 1)
vra_10_2020 <- relocate(vra_10_2020, X8, .after = X5)
colnames(vra_10_2020) <- VRA_COL_NAMES_11

vra_11_2020 <- read_delim("../data-raw/ANAC database/vra_11_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE,
                          col_types = cols(X2 = col_character()
                                           ,X3 = col_character()),
                          skip = 1)
#vra_10_2020 <- relocate(vra_10_2020, X8, .after = X5)
colnames(vra_11_2020) <- VRA_COL_NAMES_11

vra_12_2020 <- read_delim("../data-raw/ANAC database/vra_12_2020.csv", 
                          ";", escape_double = FALSE, trim_ws = TRUE,
                          col_names = FALSE,
                          col_types = cols(X2 = col_character()
                                           ,X3 = col_character()),
                          skip = 1)
colnames(vra_12_2020) <- VRA_COL_NAMES_11


#join all months and change data types
vra_full_2020 <- bind_rows(vra_01_2020,
                           vra_02_2020,
                           vra_03_2020,
                           vra_04_2020,
                           vra_05_2020,
                           vra_06_2020,
                           vra_07_2020,
                           vra_08_2020,
                           vra_09_2020,
                           vra_10_2020,
                           vra_11_2020,
                           vra_12_2020)


vra_full_2020 <- vra_full_2020 %>% mutate(
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

summary(vra_full_2020)

#write files
write_csv(vra_full_2020, "./data/vra_full_2020.csv")
