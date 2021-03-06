#ifndef CACHEPROVIDER_H
#define CACHEPROVIDER_H

#include <QObject>
#include <QTimer>
#include <QFile>

class CacheProvider : public QObject
{
    Q_OBJECT
public:
    explicit CacheProvider(QObject *parent = Q_NULLPTR);

    bool cacheFileExists(const QString& identifier);
    bool isFileCurrent(const QString& identifier);
    QFile* getCacheFile(const QString& identifier, QFile::OpenMode mode);
    QString getPathForIdentifier(const QString& identifier);

public slots:
    void clearCache();

private:
    QTimer m_clearTimer;
    QString m_cacheDir;

signals:
    void cacheCleared();
};

#endif // CACHEPROVIDER_H
