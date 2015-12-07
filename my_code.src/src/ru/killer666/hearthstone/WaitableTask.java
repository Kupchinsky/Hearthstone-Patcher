package ru.killer666.hearthstone;

abstract class WaitableTask {
    private Object waitObject = new Object();
    private boolean taskEnded = false;

    abstract boolean doTask();

    protected void endTask() {
        taskEnded = true;

        synchronized (waitObject) {
            waitObject.notifyAll();
        }
    }

    boolean getEnded() {
        return taskEnded;
    }

    void setEnded(boolean newvalue) {
        taskEnded = newvalue;
    }

    Object getWaitObject() {
        return waitObject;
    }
}
