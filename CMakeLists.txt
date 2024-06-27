cmake_minimum_required(VERSION 3.10)
project(MyProject VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add source files for the server executable
set(SOURCES_SERVER
    tcpServer.cpp
)

# Add source files for the client executable
set(SOURCES_CLIENT
    client.cpp
)

# Create the server executable
add_executable(Server ${SOURCES_SERVER})
target_include_directories(Server PRIVATE include)

# Create the client executable
add_executable(Client ${SOURCES_CLIENT})
target_include_directories(Client PRIVATE include)
