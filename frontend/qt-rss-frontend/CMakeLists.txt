cmake_minimum_required(VERSION 3.5)

project(qt-rss-frontend LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Widgets Network Xml REQUIRED)

add_executable(qt-rss-frontend
        feeditem.cpp
        feeditem.h
        rsshelper.cpp
        rsshelper.h
        main.cpp
        mainwindow.cpp
        mainwindow.h
        mainwindow.ui
)

target_link_libraries(qt-rss-frontend PRIVATE Qt5::Widgets Qt5::Network Qt5::Xml)
