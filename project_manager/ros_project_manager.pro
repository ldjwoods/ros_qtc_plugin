QTC_SOURCE = $$(HOME)/qtc_source/qt-creator
QTC_BUILD = $$(HOME)/qtc_source/qt-creator-build

## set the QTC_SOURCE environment variable to override the setting here
QTCREATOR_SOURCES = $$QTC_SOURCE

## set the QTC_BUILD environment variable to override the setting here
IDE_BUILD_TREE = $$QTC_BUILD

INCLUDEPATH += /opt/ros/indigo/lib

LIBS += -L/opt/ros/indigo/lib -lroslib

include(ros_project_manager_dependencies.pri)
include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)

HEADERS = \
    ros_project_wizard.h \
    ros_project_plugin.h \
    ros_project_manager.h \
    ros_project.h \
    ros_project_constants.h \
    ros_make_step.h \
    ros_build_configuration.h \
    ros_project_nodes.h \
    ros_utils.h \
    ros_run_configuration.h \
    ros_run_steps_page.h \
    ros_run_step.h \
    ros_run_steps.h \
    ros_output_pane.h

SOURCES = \
    ros_project_wizard.cpp \
    ros_project_plugin.cpp \
    ros_project_manager.cpp \
    ros_project.cpp \
    ros_make_step.cpp \
    ros_build_configuration.cpp \
    ros_project_nodes.cpp \
    ros_utils.cpp \
    ros_run_configuration.cpp \
    ros_run_steps_page.cpp \
    ros_run_step.cpp \
    ros_run_steps.cpp \
    ros_output_pane.cpp

RESOURCES += ros_project.qrc
FORMS += ros_make_step.ui \
    ros_build_configuration.ui \
    ros_import_wizard_page.ui \
    ros_run_configuration.ui \
    ros_launch_configuration.ui
