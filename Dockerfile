FROM jupyter/minimal-notebook

USER root
RUN apt-get update && apt-get -y install python3-opencv
RUN pip install opencv-python
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}