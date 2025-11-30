# Dockerfile 
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy conda environment files into the image
COPY environment.yml conda-linux-64.lock ./

# Create a conda environment from the lock file
RUN conda create --name docker-practice --file conda-linux-64.lock --yes



