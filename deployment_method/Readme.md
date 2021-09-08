# Deployment Strategy

## Platform
 
We deploy our inclination processing model on a private server at the University of Hawaii under the [Extragalacti Distance Database](https://edd.ifa.hawaii.edu/). The application would be open to the professional/mateur astronomers and anyone passionated about the sky and galaxies.
 
## How to access the application

### Online website
- An online website that allows users to submit the galaxy image of interest through three different methods:
   1. Entering the name of a galaxy by querying its PGC number (the ID of galaxy in the Principal Galaxy Catalog)
       - The PGC catalog is deployed with our model, and contains a table of galaxy coordinates and their sizes. Images are then queried from the [SDSS quick-look](http://skyserver.sdss.org/dr16/en/tools/quicklook/summary.aspx?) image server.
    2. Searching a galaxy by its common name.
       - The entered name is queried through the [NASA/IPAC Extragalactic Database](http://ned.ipac.caltech.edu/). Then, a python routine based on the package [Beautiful Soup](https://beautiful-soup-4.readthedocs.io/en/latest/#) extracts the corresponding PGC number. Once the PGC ID is available, the galaxy image is imported from the *SDSS quick-look* as explained above.
   3. Uploading a galaxy image from the local computer of the user.
       - User is given the opportunity of uploading a galaxy image and evaluate it by our model(s)

### Demo Version

- Currently a [DEMO](http://edd.ifa.hawaii.edu/incNET/) version of the website interface is up and running. For the final deployment, we do not change the GUI that much, we just adapt it to the requirements of deployed applications. 
- The backend of this version, works based on a convolutional neural network that inputs 64x64 galaxy images, with the semi-major of galaxy aligned horizontally. 



### API
- We provide a REST API that can be called from terminal or other applications that enable the REST API calls. The input and output data would be in JSON format.

**Example:**


        $ curl https://cropnet.eng.hawaii.edu/inclinet/objname/M31
        {
        "status": failed/success,
        "galaxy": {
            # galaxy information
        },
        "inclinations": {
            # galaxy inclination in degree
        },
        "rejection_likelihood": {
            # percentage
        }
        }
   

