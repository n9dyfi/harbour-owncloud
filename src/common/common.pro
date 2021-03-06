TEMPLATE = lib
TARGET = $$qtLibraryTarget(harbourowncloudcommon)

CONFIG += qt c++11
QT += dbus network xml
DEFINES += QWEBDAVITEM_EXTENDED_PROPERTIES

OTHER_FILES += $$PWD/common.pri

CONFIG(release, debug|release) {
    QMAKE_POST_LINK=$(STRIP) $(TARGET)
    DEFINES += QT_NO_DEBUG_OUTPUT
}

SOURCES += \
    $$PWD/src/net/abstractfetcher.cpp \
    $$PWD/src/net/thumbnailfetcher.cpp \
    $$PWD/src/settings/nextcloudsettingsbase.cpp \
    $$PWD/src/settings/nextcloudsettings.cpp \
    $$PWD/src/settings/permittedsettings.cpp \
    $$PWD/src/util/filepathutil.cpp \
    $$PWD/src/util/shellcommand.cpp \
    $$PWD/src/util/webdav_utils.cpp \
    $$PWD/src/commandqueue.cpp \
    $$PWD/src/commandentity.cpp \
    $$PWD/src/commands/webdav/fileuploadcommandentity.cpp \
    $$PWD/src/commands/webdav/filedownloadcommandentity.cpp \
    $$PWD/src/commands/webdav/webdavcommandentity.cpp \
    $$PWD/src/commands/webdav/mkdavdircommandentity.cpp \
    $$PWD/src/commands/webdav/davrmcommandentity.cpp \
    $$PWD/src/commands/webdav/davcopycommandentity.cpp \
    $$PWD/src/commands/webdav/davmovecommandentity.cpp \
    $$PWD/src/commands/webdav/davlistcommandentity.cpp \
    $$PWD/src/commands/http/httpcommandentity.cpp \
    $$PWD/src/commands/http/httpgetcommandentity.cpp \
    $$PWD/src/webdavcommandqueue.cpp \
    $$PWD/src/auth/qwebdavauthenticator.cpp \
    $$PWD/src/auth/authenticator.cpp \
    $$PWD/src/auth/authenticationexaminer.cpp \
    $$PWD/src/settings/examinationsettings.cpp \
    $$PWD/src/auth/flowloginauthenticator.cpp \
    $$PWD/src/commands/ocs/ocscommandentity.cpp \
    $$PWD/src/commands/ocs/ocsuserinfocommandentity.cpp \
    $$PWD/src/ocscommandqueue.cpp \
    $$PWD/src/commands/webdav/davproppatchcommandentity.cpp \
    $$PWD/src/net/avatarfetcher.cpp \
    $$PWD/src/commands/nopcommandentity.cpp \
    $$PWD/src/commandunit.cpp \
    $$PWD/src/commands/sync/ncdirtreecommandunit.cpp \
    $$PWD/src/commands/sync/ncsynccommandunit.cpp \
    $$PWD/src/cacheprovider.cpp

HEADERS += \
    $$PWD/src/net/abstractfetcher.h \
    $$PWD/src/net/thumbnailfetcher.h \
    $$PWD/src/settings/nextcloudsettingsbase.h \
    $$PWD/src/settings/nextcloudsettings.h \
    $$PWD/src/settings/permittedsettings.h \
    $$PWD/src/util/filepathutil.h \
    $$PWD/src/util/shellcommand.h \
    $$PWD/src/util/webdav_utils.h \
    $$PWD/src/ownclouddbusconsts.h \
    $$PWD/src/commandqueue.h \
    $$PWD/src/commandentityinfo.h \
    $$PWD/src/commandentity.h \
    $$PWD/src/commands/webdav/fileuploadcommandentity.h \
    $$PWD/src/commands/webdav/filedownloadcommandentity.h \
    $$PWD/src/commands/webdav/webdavcommandentity.h \
    $$PWD/src/commands/webdav/mkdavdircommandentity.h \
    $$PWD/src/commands/webdav/davrmcommandentity.h \
    $$PWD/src/commands/webdav/davcopycommandentity.h \
    $$PWD/src/commands/webdav/davmovecommandentity.h \
    $$PWD/src/commands/webdav/davlistcommandentity.h \
    $$PWD/src/commands/stdfunctioncommandentity.h \
    $$PWD/src/commands/http/httpcommandentity.h \
    $$PWD/src/commands/http/httpgetcommandentity.h \
    $$PWD/src/webdavcommandqueue.h \
    $$PWD/src/nextcloudendpointconsts.h \
    $$PWD/src/auth/qwebdavauthenticator.h \
    $$PWD/src/auth/authenticator.h \
    $$PWD/src/auth/authenticationexaminer.h \
    $$PWD/src/settings/examinationsettings.h \
    $$PWD/src/auth/flowloginauthenticator.h \
    $$PWD/src/commands/ocs/ocscommandentity.h \
    $$PWD/src/commands/ocs/ocsuserinfocommandentity.h \
    $$PWD/src/ocscommandqueue.h \
    $$PWD/src/commands/webdav/davproppatchcommandentity.h \
    $$PWD/src/net/avatarfetcher.h \
    $$PWD/src/commands/nopcommandentity.h \
    $$PWD/src/commandunit.h \
    $$PWD/src/commands/sync/ncdirtreecommandunit.h \
    $$PWD/src/commands/sync/ncsynccommandunit.h \
    $$PWD/src/cacheprovider.h

INCLUDEPATH += $$PWD/src
DEPENDPATH += $$PWD/src
INCLUDEPATH += $$PWD/../../3rdparty/qwebdavlib/qwebdavlib
DEPENDPATH += $$PWD/../../3rdparty/qwebdavlib/qwebdavlib

LIBS += $$OUT_PWD/../../3rdparty/qwebdavlib/qwebdavlib/libqwebdav.so.1
QMAKE_RPATHDIR += /usr/share/harbour-owncloud/lib

target.path = /usr/share/harbour-owncloud/lib

qwebdavlib.path = /usr/share/harbour-owncloud/lib
qwebdavlib.files += $$OUT_PWD/../../3rdparty/qwebdavlib/qwebdavlib/libqwebdav.so.1

INSTALLS += qwebdavlib target
