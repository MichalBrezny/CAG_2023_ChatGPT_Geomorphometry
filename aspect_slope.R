library(raster)

# Load the DEM raster
dem <- raster("dem.tif")

# Calculate slope and aspect rasters
slope <- terrain(dem, opt = "slope", unit = "degrees")
aspect <- terrain(dem, opt = "aspect", unit = "degrees")

# Plot the slope and aspect rasters
par(mfrow = c(1, 2))
plot(slope, main = "Slope (degrees)")
plot(aspect, main = "Aspect (degrees)")

# Save the slope and aspect rasters as GeoTIFF files
writeRaster(slope, "slope.tif", format = "GTiff", overwrite = TRUE)
writeRaster(aspect, "aspect.tif", format = "GTiff", overwrite = TRUE)
