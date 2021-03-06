/* -*- c++ -*- */

#define SPECEST_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "specest_swig_doc.i"

%{
#include "specest/reciprocal_ff.h"
#include "specest/pad_vector.h"
#include "specest/stream_to_vector_overlap.h"
#include "specest/moving_average_vff.h"
#include "specest/adaptiveweighting_vff.h"
#include "specest/arfcov_vcc.h"
#include "specest/fcov.h"
#include "specest/arfmcov_vcc.h"
#include "specest/fmcov.h"
#include "specest/arburg_vcc.h"
#include "specest/burg.h"
#include "specest/welch.h"
#include "specest/esprit_vcf.h"
#include "specest/esprit_spectrum_vcf.h"
#include "specest/esprit.h"
#include "specest/welchsp.h"
#include "specest/cyclo_fam_calcspectrum_vcf.h"
#include "specest/cyclo_fam.h"
#include "specest/music_vcf.h"
#include "specest/music.h"
#include "specest/music_spectrum_vcf.h"
%}


%include "specest/reciprocal_ff.h"
GR_SWIG_BLOCK_MAGIC2(specest, reciprocal_ff);
%include "specest/pad_vector.h"
GR_SWIG_BLOCK_MAGIC2(specest, pad_vector);
%include "specest/stream_to_vector_overlap.h"
GR_SWIG_BLOCK_MAGIC2(specest, stream_to_vector_overlap);
%include "specest/moving_average_vff.h"
GR_SWIG_BLOCK_MAGIC2(specest, moving_average_vff);
%include "specest/adaptiveweighting_vff.h"
GR_SWIG_BLOCK_MAGIC2(specest, adaptiveweighting_vff);

%include "specest/arfcov_vcc.h"
GR_SWIG_BLOCK_MAGIC2(specest, arfcov_vcc);
%include "specest/fcov.h"
GR_SWIG_BLOCK_MAGIC2(specest, fcov);
%include "specest/arfmcov_vcc.h"
GR_SWIG_BLOCK_MAGIC2(specest, arfmcov_vcc);
%include "specest/fmcov.h"
GR_SWIG_BLOCK_MAGIC2(specest, fmcov);
%include "specest/arburg_vcc.h"
GR_SWIG_BLOCK_MAGIC2(specest, arburg_vcc);
%include "specest/burg.h"
GR_SWIG_BLOCK_MAGIC2(specest, burg);
%include "specest/welch.h"
GR_SWIG_BLOCK_MAGIC2(specest, welch);
%include "specest/esprit_vcf.h"
GR_SWIG_BLOCK_MAGIC2(specest, esprit_vcf);
%include "specest/esprit_spectrum_vcf.h"
GR_SWIG_BLOCK_MAGIC2(specest, esprit_spectrum_vcf);
%include "specest/esprit.h"
GR_SWIG_BLOCK_MAGIC2(specest, esprit);
%include "specest/welchsp.h"
GR_SWIG_BLOCK_MAGIC2(specest, welchsp);
%include "specest/cyclo_fam_calcspectrum_vcf.h"
GR_SWIG_BLOCK_MAGIC2(specest, cyclo_fam_calcspectrum_vcf);
%include "specest/cyclo_fam.h"
GR_SWIG_BLOCK_MAGIC2(specest, cyclo_fam);
%include "specest/music_vcf.h"
GR_SWIG_BLOCK_MAGIC2(specest, music_vcf);

%include "specest/music.h"
GR_SWIG_BLOCK_MAGIC2(specest, music);
%include "specest/music_spectrum_vcf.h"
GR_SWIG_BLOCK_MAGIC2(specest, music_spectrum_vcf);
