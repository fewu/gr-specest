/* -*- c++ -*- */

#define SPECEST_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "specest_swig_doc.i"

%{
#include "specest/adaptiveweighting_vff.h"
#include "specest/api.h"
#include "specest/arburg_vcc.h"
#include "specest/arfcov_vcc.h"
#include "specest/arfmcov_vcc.h"
#include "specest/burg.h"
#include "specest/cyclo_fam_calcspectrum_vcf.h"
#include "specest/cyclo_fam.h"
#include "specest/esprit.h"
#include "specest/esprit_spectrum_vcf.h"
#include "specest/esprit_vcf.h"
#include "specest/fcov.h"
#include "specest/fmcov.h"
#include "specest/moving_average_vff.h"
#include "specest/pad_vector.h"
#include "specest/reciprocal_ff.h"
#include "specest/stream_to_vector_overlap.h"
#include "specest/welch.h"
#include "specest/welchsp.h"
%}

GR_SWIG_BLOCK_MAGIC(specest,arburg_vcc);
%include "specest/arburg_vcc.h"

GR_SWIG_BLOCK_MAGIC(specest,arfcov_vcc);
%include "specest/arfcov_vcc.h"

GR_SWIG_BLOCK_MAGIC(specest,arfmcov_vcc);
%include "specest/arfmcov_vcc.h"

GR_SWIG_BLOCK_MAGIC(specest,burg);
%include "specest/burg.h"

GR_SWIG_BLOCK_MAGIC(specest,cyclo_fam_calcspectrum_vcf);
%include "specest/cyclo_fam_calcspectrum_vcf.h"

GR_SWIG_BLOCK_MAGIC(specest,cyclo_fam);
%include "specest/cyclo_fam.h"

GR_SWIG_BLOCK_MAGIC(specest,esprit);
%include "specest/esprit.h"

GR_SWIG_BLOCK_MAGIC(specest,esprit_spectrum_vcf);
%include "specest/esprit_spectrum_vcf.h"

GR_SWIG_BLOCK_MAGIC(specest,esprit_vcf);
%include "specest/esprit_vcf.h"

GR_SWIG_BLOCK_MAGIC(specest,fcov);
%include "specest/fcov.h"

GR_SWIG_BLOCK_MAGIC(specest,fmcov);
%include "specest/fmcov.h"

GR_SWIG_BLOCK_MAGIC(specest,welch);
%include "specest/welch.h"

GR_SWIG_BLOCK_MAGIC(specest,welchsp);
%include "specest/welchsp.h"

%include "../lib/config.h"
#ifdef ARMADILLO_FOUND
%include "specest_armadillo_swig.i"
#endif

%include "specest/adaptiveweighting_vff.h"
GR_SWIG_BLOCK_MAGIC2(specest, adaptiveweighting_vff);

%include "specest/moving_average_vff.h"
GR_SWIG_BLOCK_MAGIC2(specest, moving_average_vff);

%include "specest/pad_vector.h"
GR_SWIG_BLOCK_MAGIC2(specest, pad_vector);

%include "specest/reciprocal_ff.h"
GR_SWIG_BLOCK_MAGIC2(specest, reciprocal_ff);

%include "specest/stream_to_vector_overlap.h"
GR_SWIG_BLOCK_MAGIC2(specest, stream_to_vector_overlap);
