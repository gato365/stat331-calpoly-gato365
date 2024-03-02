

# Extended generated data
experimental_data_extended <- tidyr::tibble(
  Trial = rep(c("T1", "T2", "T3", "T4", "T5"), each = 6),
  Measurement = rep(c("Weight", "Height"), times = 15),
  Value = runif(30, 0, 100)  # Generate 30 random values
)


write.csv(experimental_data_extended, "experimental_data.csv", row.names = FALSE)
