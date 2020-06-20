![GIZ_demo](https://user-images.githubusercontent.com/13570487/85185022-6c752b00-b24f-11ea-9f9a-9d1d007f4fb7.png)


# incNET (data extraction)

   - Basic codes to extract and organize the data that includes images of more than 15,000 spiral galaxies taken from the SDSS DR12. To access the code to download the SDSS images please refer to [https://github.com/ekourkchi/SDSS_get](https://github.com/ekourkchi/SDSS_get).
   - Demo codes for trainig a CNN 

## Imaging Data Folders

The images are stored in these folders. All images are rotated so taht the semi-major axis of all spirals are aligned horizontally. Images are provided at the resolutions of 128x128 and 64x64 pixel^2 in the following folders. The naming convention of images follows the *pgcxxxx_NxN_yy.jpg*, where "xxxx" is the ID number of the galxy in the Principal Galaxues Catalogue, "N" is the number of pixels along each side, and "yy" is the spatial inclination of galaxies in degree, that are measured in a manual inspection procedure via the **Galaxy Inclination Zoo** online GUI: [http://edd.ifa.hawaii.edu/inclination](http://edd.ifa.hawaii.edu/inclination/). The inclination of our sample galaxies from face-on  range between 45 and 90 degreees, where at 90 degree the disk of the spiral galaxy is totally face-on. For galaxies more face-on than are either more face-on than 45 degrees and/or are anomalous "yy" equals 0.

Both of the following folders contain the ~15,000 spiral images. 

   - galaxie: just includes a sample of preprocessed images for the use in [GIZ](http://edd.ifa.hawaii.edu/inclination/).
   - 128x128: tracked via Git Large File Storage
   - 64x64: tracked via Git Large File Storage
   
## Tabular Data:

   - [EDD_distance_cf4_v27.csv](https://raw.githubusercontent.com/ekourkchi/incNET-data/master/EDD_distance_cf4_v27.csv): The list of studied galaxy candiates for the Cosmicflows program. [Click here](http://edd.ifa.hawaii.edu/describe_columns.php?table=kcf4cand) for the description of the columns. In our inclination program, the applicable columns are *inc*, *inc_e*, *inc_flag*, *inc_n* and *Note_inc* that holds the notes entered by the [GIZ](http://edd.ifa.hawaii.edu/inclination/) users.


## Data Preparation

The images of our galaxies are extracted from [SDSS DR12](https://www.sdss.org/dr12/) data collection.
For each galaxy with available *SDSS* data, we download all the single exposure cutouts at *u, g, r, i* and *z* bands. Our data acquisition pipeline is available [here](https://github.com/ekourkchi/SDSS\_get}), which are drizzled and combined using [MONTAGE](http://montage.ipac.caltech.edu/docs/mProject.html), an astronomical application to assemble images. Our pipeline provides galaxy cutouts at all *ugriz* passbands with the spatial resolution of 0.4'' /pixel.

The constructed images are in *Flexible Image Transport System* (FITS) format commonly used by astronomers. Therefore, we convert and rotate these images for the manual task of evaluating galaxy inclinations. The associated codes are stored in the `imRotate` folder. To align the semi-major axis of spirals along the horizontal axis, the primary position angles of galaxies are either taken from the [HyperLEDA](http://leda.univ-lyon1.fr/) catalog or the ourputs of our photoemtry program that are stored in `EDD_distance_cf4_v27.csv`. For the details of our photometry procedure and the codes, please refer to this repository: [https://github.com/ekourkchi/IDL_photometry](https://github.com/ekourkchi/IDL_photometry).


   
## About the Project

![Screenshot from 2020-06-19 20-10-40](https://user-images.githubusercontent.com/13570487/85189112-fda4cb80-b268-11ea-83d5-172bca0fc78f.png)

### Problem: 
The inclination of spiral galaxies plays an important role in measurements of their distances using the Tully-Fisher relationship. Each galaxy has its own unique morphology, luminosity, and surface brightness profiles. In addition, galaxy images are covered by foreground stars of the Milky Way galaxy. Therefore, it is challenging to design an algorithm that automatically determines the 3D inclination of spiral galaxies.  The inclinations of spiral galaxies can be coarsely derived from the ellipticity of apertures used for photometry, assuming that the image of a spiral galaxy is the projection of a disk with the shape of an oblate spheroid. For ~1/3 of spirals, the approximation of axial ratios provides inclination estimates good to better than 5 degrees, with degradation to ~5 degrees for another 1/3.  However in ~1/3 of cases, ellipticity-derived inclinations are problematic for a variety of reasons.  Prominent bulges can dominate the axial ratio measurement, with the Sombrero galaxy (above picture: second panel from the right) providing an extreme example.  Some galaxies may not be axially symmetric due to tidal effects.  High surface brightness bars within much lower surface brightness disks can lead to large errors.  Simply the orientation of strong spiral features with respect to the tilt axis can be confusing.  The statistical derivation of inclinations for large samples has been unsatisfactory. 

### Goal:  
The task of manual evaluation of spirals inclinations is tedious and time consuming. In the future, with the large astronomical survey telescopes coming online, this task could not be efficiently done manually for thousands of galaxies. The objective of this project is to automatically determine the inclination of spiral galaxies with the human level accuracy providing their images (ideally in both colorful and black-and-white formats).
