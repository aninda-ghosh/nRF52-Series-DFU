#ifndef __BLE_DFU_SERVICES_H__
#define __BLE_DFU_SERVICES_H__

#include "includes.h"
#include "mbed.h"
#include <events/mbed_events.h>
#include "ble/BLE.h"
#include "ble/Gap.h"
#include "ble/GattServer.h"
#include <cstdint>

extern RawSerial serial;

class DFUService {
public:
    const static uint16_t DFU_SERVICE_UUID                  = 0xC000;
    const static uint16_t DFU_CHARACTERISTIC_UUID           = 0xC001;

    const char *key = "1234";

    DFUService(BLE &_ble) : 
        ble(_ble),
        otaTrigger(DFU_CHARACTERISTIC_UUID, NULL, GattCharacteristic::BLE_GATT_CHAR_PROPERTIES_WRITE)
    {
        GattCharacteristic *charTable[] = {&otaTrigger};
        GattService DFUService(DFUService::DFU_SERVICE_UUID, charTable, sizeof(charTable) / sizeof(GattCharacteristic *));
        ble.gattServer().addService(DFUService);
        ble.gattServer().onDataWritten(this, &DFUService::onDataWritten);
    }

    void onDataWritten(const GattWriteCallbackParams *response);

private:
    BLE                                             &ble;
    WriteOnlyArrayGattCharacteristic<uint8_t*,8>    otaTrigger;
};

#endif