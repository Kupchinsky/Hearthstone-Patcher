package ru.killer666.hearthstone.test;

import ru.killer666.hearthstone.DownloadSelector;

public class LoadingScreen {
    boolean m_loadingFailed = false;

    public void thisaccess(LoadingScreen _this)
    {
        _this.run();
    }

    public void run() {
        thisaccess(this);
        if (DownloadSelector.isP2P) {
            m_loadingFailed = false;
            DownloadSelector.startP2P();
            return;
        }
    }
}
