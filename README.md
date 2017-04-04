OME Files Jupyter
=================

Image for working with [ome-files-py](https://github.com/ome/ome-files-py) in Jupyter.

Run as:

`docker run --rm -it -p 8888:8888 openmicroscopy/ome-files-jupyter`

Copy the URL displayed in the startup log and paste it in your browser. In the dashboard, you should see an example notebook from ome-files-py. Within the container, this is stored in `/home/jupyter/notebooks`. This means that you can override the default example with your own set of notebooks by mounting the host directory that contains them (e.g. `/my/notebooks`) as a data volume on top of `/home/jupyter/notebooks`:

`docker run --rm -it -p 8888:8888 -v /my/notebooks:/home/jupyter/notebooks openmicroscopy/ome-files-jupyter`
