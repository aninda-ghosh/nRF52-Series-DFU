#include "dfuService.h"
#include "../debug.h"

void DFUService::onDataWritten(const GattWriteCallbackParams *response){
    if (response->handle == otaTrigger.getValueHandle()) {
        /* this concludes the example, we stop the app running the ble process in the background */
        serial.printf("DFU", "Something is written [%d, %d] [%s]\r\n", response->len, strlen(key), response->data);
        if(response->len == strlen(key)){
            if(!strncmp((char*)response->data, (const char*)key, strlen(key))){
                serial.printf("DFU", "Entering into DFU mode\r\n");
                NRF_POWER->GPREGRET = BOOTLOADER_DFU_START;
                NVIC_SystemReset();
            }
        }
    }
}