table_names <- c("actors", "directors", "directors_genres",
                 "movies", "movies_directors", "movies_genres", "roles")

url_base <- "https://raw.githubusercontent.com/gato365/stat331-calpoly-gato365/master/midterms/midterm-exam-2/take-home-exam-2/data/movie-db/"

# For each table name, read the tables in and store them as the name of the table
purrr::walk(table_names, function(x) {
  assign(x, readr::read_csv(paste0(url_base, x, ".csv")), envir = .GlobalEnv)
})