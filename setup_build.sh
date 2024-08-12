#!/bin/bash

# Set up the environment for the main build
BUILD_TAG=latest
if [[ -n "${CIRCLE_TAG}" ]]; then
    BUILD_TAG="${CIRCLE_TAG}"
fi
export BUILD_TAG

# Versions of the components
export TAG_FSL=24.4.24
export TAG_FREESURFER=23.3.0
export TAG_ANTS=24.4.24
export TAG_MRTRIX3=24.4.24
export TAG_3TISSUE=24.4.24
export TAG_DSISTUDIO=24.7.4
export TAG_MICROMAMBA=24.7.1
export TAG_AFNI=23.3.2
export TAG_TORTOISE=24.4.29
export TAG_TORTOISECUDA=24.4.29

echo "Settings:"
echo "----------"
echo ""
echo "BUILD_TAG=${BUILD_TAG}"
echo "TAG_FSL=${TAG_FSL}"
echo "TAG_FREESURFER=${TAG_FREESURFER}"
echo "TAG_ANTS=${TAG_ANTS}"
echo "TAG_MRTRIX3=${TAG_MRTRIX3}"
echo "TAG_3TISSUE=${TAG_3TISSUE}"
echo "TAG_DSISTUDIO=${TAG_DSISTUDIO}"
echo "TAG_MICROMAMBA=${TAG_MICROMAMBA}"
echo "TAG_AFNI=${TAG_AFNI}"
echo "TAG_TORTOISE=${TAG_TORTOISE}"
echo "TAG_TORTOISECUDA=${TAG_TORTOISECUDA}"