/* -*- c++ -*- */
/* This file is appended to specest_swig.i */
/* All of these files have Armadillo dependencies */

%{
#include "specest/music.h"
#include "specest/music_vcf.h"
#include "specest/music_spectrum_vcf.h"
%}

GR_SWIG_BLOCK_MAGIC(specest,music);
%include "specest/music.h"

GR_SWIG_BLOCK_MAGIC(specest,music_vcf);
%include "specest/music_vcf.h"

GR_SWIG_BLOCK_MAGIC(specest,music_spectrum_vcf);
%include "specest/music_spectrum_vcf.h"

