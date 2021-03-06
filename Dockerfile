FROM continuumio/miniconda3
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN	conda update --yes -n base -c defaults conda && \
	conda update --yes --all 
RUN  bash -c 'eval "$(conda shell.bash hook)" && \
	conda create --yes --name AmberTools21 && \
	conda activate AmberTools21 && \
	conda install --yes  -c conda-forge ambertools=21 compilers && \
	date +"%Y-%m-%d-%H%M" > /last_update'

