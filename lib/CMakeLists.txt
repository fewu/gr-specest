# Copyright 2011 Free Software Foundation, Inc.
#
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.

########################################################################
# Setup library
########################################################################
include(GrPlatform) #define LIB_SUFFIX


########################################################################
# Fortran lib
########################################################################
add_library(gnuradio-specest-fortran SHARED
    zcorrest_impl.f90
    zesprit_common_impl.f90
    zesprit_impl.f90
    zesprit_spectrum_impl.f90
    zmusic_spectrum_impl.f90
)
target_link_libraries(gnuradio-specest-fortran ${LAPACK_LIBRARIES} ${BLAS_LIBRARIES})

########################################################################
# Configure Armadillo dependency
########################################################################
if(ARMADILLO_FOUND)
	set(CXX_ARMADILLO_SRCS
		music.cc
		music_vcf.cc
		music_spectrum_vcf.cc
		music_armadillo_impl.cc
		correst_impl.cc
	)
else()
	set(CXX_ARMADILLO_SRCS)
	set(ARMADILLO_LIBRARIES)
endif()

########################################################################
# Main library
########################################################################
add_library(gnuradio-specest SHARED
	adaptiveweighting_vff_impl.cc
        arburg_vcc_impl.cc
        arfcov_vcc_impl.cc
        arfmcov_vcc_impl.cc
	burg.cc
	cyclo_fam_calcspectrum_vcf.cc
	cyclo_fam.cc
	esprit.cc
	esprit_spectrum_vcf.cc
	esprit_vcf_impl.cc
	fcov.cc
	fmcov.cc
	moving_average_vff_impl.cc
        pad_vector_impl.cc
        reciprocal_ff_impl.cc
        stream_to_vector_overlap_impl.cc
	welch.cc
	welchsp.cc
	arburg_impl.cc
	arfcov_impl.cc
	arfmcov_impl.cc
	cyclo_fam_calcspectrum_impl.cc
	esprit_fortran_impl.cc
	${CXX_ARMADILLO_SRCS}
)

target_link_libraries(gnuradio-specest
    gnuradio-specest-fortran
    ${ARMADILLO_LIBRARIES}
    ${Boost_LIBRARIES}
    ${GNURADIO_RUNTIME_LIBRARIES}
    ${GNURADIO_BLOCKS_LIBRARIES}
    ${GNURADIO_FILTER_LIBRARIES}
    ${GNURADIO_FFT_LIBRARIES}
    ${FFTW3F_LIBRARIES}
)
set_target_properties(gnuradio-specest
    PROPERTIES DEFINE_SYMBOL "gnuradio_specest_EXPORTS"
)

########################################################################
# Install built library files
########################################################################
install(TARGETS gnuradio-specest gnuradio-specest-fortran
    LIBRARY DESTINATION lib${LIB_SUFFIX} # .so/.dylib file
    ARCHIVE DESTINATION lib${LIB_SUFFIX} # .lib file
    RUNTIME DESTINATION bin              # .dll file
)

########################################################################
# Build and register unit test
########################################################################
find_package(Boost COMPONENTS unit_test_framework)

include(GrTest)
set(GR_TEST_TARGET_DEPS gnuradio-specest)
#turn each test cpp file into an executable with an int main() function
add_definitions(-DBOOST_TEST_DYN_LINK -DBOOST_TEST_MAIN)

add_executable(qa_arburg_impl qa_arburg_impl.cc)
target_link_libraries(qa_arburg_impl gnuradio-specest ${Boost_LIBRARIES})
GR_ADD_TEST(qa_arburg_impl qa_arburg_impl)

add_executable(qa_cyclo_fam_calcspectrum_impl qa_cyclo_fam_calcspectrum_impl.cc)
target_link_libraries(qa_cyclo_fam_calcspectrum_impl gnuradio-specest ${Boost_LIBRARIES})
GR_ADD_TEST(qa_cyclo_fam_calcspectrum_impl qa_cyclo_fam_calcspectrum_impl)

add_executable(qa_esprit_fortran_impl qa_esprit_fortran_impl.cc)
target_link_libraries(qa_esprit_fortran_impl gnuradio-specest ${Boost_LIBRARIES})
GR_ADD_TEST(qa_esprit_fortran_impl qa_esprit_fortran_impl)

if(ARMADILLO_FOUND)
	add_executable(qa_music_armadillo_impl qa_music_armadillo_impl.cc)
	target_link_libraries(qa_music_armadillo_impl gnuradio-specest ${Boost_LIBRARIES})
	GR_ADD_TEST(qa_music_armadillo_impl qa_music_armadillo_impl)
endif()

