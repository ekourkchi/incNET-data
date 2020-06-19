![GIZ_demo](https://user-images.githubusercontent.com/13570487/85185022-6c752b00-b24f-11ea-9f9a-9d1d007f4fb7.png)


# incNET

   - Basic codes to extract and organize the data that includes images of more than 15,000 spiral galaxies taken from the SDSS DR12. To access the code to download the SDSS images please refer to [https://github.com/ekourkchi/SDSS_get](https://github.com/ekourkchi/SDSS_get).
   - Demo codes for trainig a CNN 

## Data folders

The images are stored in these folders. All images are rotated so taht the semi-major axis of all spirals are aligned horizontally. Images are provided at the resolutions of 128x128 and 64x64 pixel^2 in the following folders. The naming convention of images follows the *pgcxxxx_NxN_yy.jpg*, where "xxxx" is the ID number of the galxy in the Principal Galaxues Catalogue, "N" is the number of pixels along each side, and "yy" is the spatial inclination of galaxies in degree, that are measured in a manual inspection procedure via the **Galaxy Inclination Zoo** online GUI: [http://edd.ifa.hawaii.edu/inclination](http://edd.ifa.hawaii.edu/inclination/). The inclination of our sample galaxies from face-on  range between 45 and 90 degreees, where at 90 degree the disk of the spiral galaxy is totally face-on. For galaxies more face-on than are either more face-on than 45 degrees and/or are anomalous "yy" equals 0.

Both of the following folders contain the ~15,000 spiral images. 


   - 128x128: tracked via Git Large File Storage
   - 64x64: tracked via Git Large File Storage
