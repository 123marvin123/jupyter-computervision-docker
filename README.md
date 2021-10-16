# jupyter-computervision-docker
🐳 Docker Container for creating Jupyter Notebooks for Computer Vision on ARM64

# Running

```
docker run -v /host/directory:/home/jovyan -it -p 8888:8888 123marvin123/jupyter-computervision
```

This will create a docker container, running on port ```8888```. The console will output a corresponding url for visiting the jupyter hub instance, including the access token:

```
[I 2021-10-16 20:23:14.676 LabApp] JupyterLab extension loaded from /opt/conda/lib/python3.9/site-packages/jupyterlab
[I 2021-10-16 20:23:14.676 LabApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 20:23:14.678 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 20:23:14.678 NotebookApp] Jupyter Notebook 6.4.4 is running at:
[I 20:23:14.678 NotebookApp] http://5d0088789d01:8888/?token=9c1d58d4bc25694db18405e219e23b86d1857c5e0c66ac5c
[I 20:23:14.678 NotebookApp]  or http://127.0.0.1:8888/?token=9c1d58d4bc25694db18405e219e23b86d1857c5e0c66ac5c
[I 20:23:14.678 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
```

## Using OpenCV

The mandatory system libraries for OpenCV are preinstalled in this image, including the python package for the bindings. After creating a notebook, you can simply
import the ```cv2``` package and use it as usual:

```python
import cv2

cv2.imread('image.png)
```

# Building

```
docker build -t "123marvin123/jupyter-computervision:latest" .
