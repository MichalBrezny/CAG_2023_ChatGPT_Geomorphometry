library(raster)

# Load the DEM raster
dem <- raster("data/dem.tif")

# Load the landslide shapefile
landslides <- shapefile("data/landslides.shp")

# Extract DEM values within the landslide polygons
dem_landslides <- extract(dem, landslides)

# Create a histogram of the extracted DEM values and the whole DEM
hist(dem, breaks = "FD", main = "DEM Histogram")
hist(dem_landslides, breaks = "FD", main = "Landslide DEM Histogram")

###################################
# Modified code - unlist function #
###################################

library(raster)

# Load the DEM raster
dem <- raster("dem.tif")

# Load the landslide shapefile
landslides <- shapefile("landslides.shp")

# Extract DEM values within the landslide polygons
dem_landslides <- extract(dem, landslides)

# Convert the list to a vector
dem_landslides <- unlist(dem_landslides)

# Create a histogram of the extracted DEM values and the whole DEM
hist(dem, breaks = "FD", main = "DEM Histogram")
hist(dem_landslides, breaks = "FD", main = "Landslide DEM Histogram")


##################################
# Modified code - use of GGPLOT2 #
##################################

library(raster)
library(ggplot2)

# Load the DEM raster
dem <- raster("dem.tif")

# Load the landslide shapefile
landslides <- shapefile("landslides.shp")

# Extract DEM values within the landslide polygons
dem_landslides <- extract(dem, landslides)

# Convert the list to a vector
dem_landslides <- unlist(dem_landslides)

# Create a data frame with the DEM values
df_dem <- data.frame(value = getValues(dem), type = "DEM")
df_landslides <- data.frame(value = dem_landslides, type = "Landslides")

# Combine the data frames
df <- rbind(df_dem, df_landslides)

# Create a ggplot with two histograms
ggplot(df, aes(x = value, fill = type)) +
  geom_histogram(alpha = 0.5, bins = 30) +
  labs(title = "DEM and Landslide DEM Histograms", x = "Elevation", y = "Count") +
  theme_bw()

################################################
# Modified code - use of GGPLOT2 binwidth = 10 #
################################################

ggplot(df, aes(x = value, fill = type)) +
  geom_histogram(alpha = 0.5, binwidth = 10) +
  labs(title = "DEM and Landslide DEM Histograms", x = "Elevation", y = "Count") +
  theme_bw()


################################################
# t-test                                       #
################################################

# Load the DEM raster
dem <- raster("dem.tif")

# Load the landslide shapefile
landslides <- shapefile("landslides.shp")

# Extract DEM values within the landslide polygons
dem_landslides <- extract(dem, landslides)

# Convert the list of extracted values to a vector
values_landslides <- unlist(dem_landslides)

# Calculate the mean elevation for each dataset
mean_dem <- mean(getValues(dem))
mean_landslides <- mean(values_landslides)

# Perform a two-sample t-test
t.test(getValues(dem), values_landslides, alternative = "two.sided", var.equal = FALSE)


##############################
# Max elevation of landslide #
##############################

library(raster)
library(rgdal)
library(ggplot2)

# Load the DEM raster
dem <- raster("dem.tif")

# Load the landslide shapefile
landslides <- readOGR("landslides.shp")

# Extract the maximum elevation value within each landslide polygon
max_values <- sapply(extract(dem, landslides, fun = max), max)

# Plot a histogram of the maximum elevation values
ggplot(data = data.frame(max_values), aes(x = max_values)) + 
  geom_histogram(binwidth = 10, fill = "dodgerblue", color = "black") + 
  labs(title = "Maximum Elevation Values within Landslide Polygons", 
       x = "Maximum Elevation Value", y = "Count") + 
  theme_bw()







