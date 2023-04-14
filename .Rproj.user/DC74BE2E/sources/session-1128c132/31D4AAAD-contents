library(raster)

# Load the DEM raster
dem <- raster("data/dem.tif")

# Calculate slope and aspect rasters
slope <- terrain(dem, opt = "slope")
aspect <- terrain(dem, opt = "aspect")

# Plot the slope raster
plot(slope, main = "Slope")

# Plot the aspect raster
plot(aspect, main = "Aspect")


library(raster)

# Load the DEM raster
dem <- raster("dem.tif")

# Calculate slope and aspect rasters in degrees
slope <- terrain(dem, opt = "slope", unit = "degrees")
aspect <- terrain(dem, opt = "aspect", unit = "degrees")

# Plot the slope raster
plot(slope, main = "Slope (degrees)")

# Plot the aspect raster
plot(aspect, main = "Aspect (degrees)")