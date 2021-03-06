#!/usr/bin/env bash

set -e

ARGS="${@}"

OUTPUT="/wdata/cresi_data/8bit/PS-RGB"

mkdir -p ${OUTPUT};


for DIR in ${ARGS}
do
    python cresi/data_prep/create_8bit_images.py \
      --indir="${DIR}/PS-MS" \
      --outdir=${OUTPUT} \
      --rescale_type=perc \
      --percentiles=2,98 \
      --band_order=5,3,2;
done