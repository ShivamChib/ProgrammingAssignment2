# Function to calculate the mean of a numeric vector with caching
cached_mean <- function(x) {
  
  # Check if cached result exists
  if (!exists("cached_mean_result")) {
    # If not, compute the mean and cache the result
    cat("Computing mean...\n")
    cached_mean_result <<- mean(x)
  } else {
    # If cached result exists, use it
    cat("Using cached mean...\n")
  }
  
  # Return the cached result
  return(cached_mean_result)
}

# Example usage
x <- c(1, 2, 3, 4, 5)
print(cached_mean(x))  # Computes and caches the mean
print(cached_mean(x))  # Uses cached mean
