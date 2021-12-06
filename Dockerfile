FROM continuumio/miniconda3
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN	conda update --yes -n base -c defaults conda && \
	conda update --yes --all 
RUN eval "$(/opt/conda/bin/conda shell.bash hook)" && \
	conda create --name AmberTools21 && \
	conda activate AmberTools21 && \
	conda install -c conda-forge ambertools=21 compilers && \
	date +"%Y-%m-%d-%H%M" > /last_update

