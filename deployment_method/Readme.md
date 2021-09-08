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
   3. Looking at a specific location in the sky by entering the sky coordinates and the field size. In the first release we only provide access to the *SDSS* images, if they are available.
   4. Uploading a galaxy image from the local computer of the user.
       - User is given the opportunity of uploading a galaxy image and evaluate it by our model(s)


![Screenshot from 2021-09-08 03-09-36](https://user-images.githubusercontent.com/13570487/132490712-c39440bc-9b41-4a3e-bb54-1c4fb0de2c30.png)


### Demo Version

- Currently a [DEMO](http://edd.ifa.hawaii.edu/incNET/) version of the website interface is up and running. For the final deployment, we do not change the GUI that much, we just adapt it to the requirements of deployed applications. 
- The backend of this version, works based on a convolutional neural network that inputs 64x64 galaxy images, with the semi-major of galaxy aligned horizontally. 



### API
- We provide a REST API that can be called from terminal or other applications that enable the REST API calls. The input and output data would be in JSON format.

**Examples:**


### query using the galaxy PGC ID
        $ curl <app_url>/pgc/<PGC_id>

### query using the galaxy name
        $ curl <app_url>/objname/<object_name>

### uploading a file from terminal
        $ curl -F 'file=@<filePath>/<filename> <app_url>/file

### Outut

        # output JSON
            {
            "status": failed/success,
            "galaxy": {
                # galaxy/image information
            },
            "inclinations": {
                # galaxy inclination in degree
            },
            "rejection_likelihood": {
                # percentage
            }
            }
   
## Implementation

We implement the API and the web service backend calls uisng the [Flask pakcage](https://flask.palletsprojects.com/en/2.0.x/quickstart/) in python. The web GUI makes a similar API calls to the Flask backend application to triger various tasks. 
        
