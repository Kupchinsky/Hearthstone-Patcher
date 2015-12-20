package ru.killer666.hearthstone;

import android.content.DialogInterface;
import com.blizzard.wtcg.hearthstone.HearthstoneAlert;

class InterfaceNotAvailable extends WaitableTask {
    @Override
    boolean doTask() {
        HearthstoneAlert.showAlert("", "Отсутсвуют необходимые файлы для изменения интерфейса", "ОК", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int item) {
                InterfaceNotAvailable.this.endTask();
            }
        }, "", null, false);

        return true;
    }
}
