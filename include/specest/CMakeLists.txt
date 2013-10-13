# Copyright 2011,2012 Communications Engineering Lab, KIT
#
# This file is part of the GNU Radio Spectral Estimation Toolbox
#
# The GNU Radio Spectral Estimation Toolbox is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# The GNU Radio Spectral Estimation Toolbox is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio Spectral Estimation Toolbox; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.


########################################################################
# Install public header files
########################################################################
if(ARMADILLO_FOUND)
	set(CXX_ARMADILLO_HDRS
		music.h
		music_vcf.h
		music_spectrum_vcf.h
		music_armadillo_impl.h
		correst_impl.h
	)
else()
	set(CXX_ARMADILLO_HDRS)
endif()

install(FILES
    api.h
    adaptiveweighting_vff.h
    api.h
    arburg_vcc.h
    arfcov_vcc.h
    arfmcov_vcc.h
    burg.h
    cyclo_fam_calcspectrum_vcf.h
    cyclo_fam.h
    esprit.h
    esprit_spectrum_vcf.h
    esprit_vcf.h
    fcov.h
    fmcov.h
    moving_average_vff.h
    pad_vector.h
    reciprocal_ff.h
    stream_to_vector_overlap.h
    welch.h
    welchsp.h
    arburg_impl.h
    arfcov_impl.h
    arfmcov_impl.h
    cyclo_fam_calcspectrum_impl.h
    esprit_fortran_impl.h
    esprit_impl.h
    music_fortran_impl.h
    music_impl.h
    ${CXX_ARMADILLO_HDRS}
    pad_vector.h
    DESTINATION include/specest
)

