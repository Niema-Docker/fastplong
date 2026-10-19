# Minimal Docker image for fastplong using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install fastplong
RUN micromamba create -y -n fastplong -c conda-forge -c bioconda fastplong==0.7.1 && \
    micromamba clean --all --yes
ENV ENV_NAME=fastplong
