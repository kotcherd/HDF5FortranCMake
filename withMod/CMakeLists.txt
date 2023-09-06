cmake_minimum_required(VERSION 3.5)

project(example LANGUAGES Fortran)

find_package(HDF5 COMPONENTS Fortran REQUIRED)

add_executable(example Deet.f90 example.f90)

target_link_libraries(example PRIVATE HDF5::HDF5)

target_include_directories(example PRIVATE /usr/local/Cellar/HDF5/1.14.2/include)


