#!/bin/bash

if [[ "$1" != "a" ]]; then
    ssh "perak005@csel-kh4250-$1.cselabs.umn.edu"
    # ssh perak005@atlas.cselabs.umn.edu
else
  ssh perak005@csel-apollo.cselabs.umn.edu
fi
