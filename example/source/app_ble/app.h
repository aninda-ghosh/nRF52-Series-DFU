#ifndef __APP_APP__
#define __APP_APP__

#include "includes.h"
#include "mbed.h"
#include "events/mbed_events.h"
#include "ble/BLE.h"
#include "ble/Gap.h"
#include "ble/GattServer.h"

#include "dfuService.h"

extern uint8_t DEVICE_NAME[];
extern const uint8_t CODE_VERSION[];

class APP : ble::Gap::EventHandler {
public:
    APP(BLE &_ble_, events::EventQueue &_event_queue_) :
        _ble(_ble_),
        _event_queue(_event_queue_),
        _dfu_service(NULL),
        _adv_data_builder(_adv_buffer) { }

    void start(void);

private:
    BLE &_ble;
    events::EventQueue &_event_queue;

    DFUService*  _dfu_service;
    
    uint8_t _adv_buffer[ble::LEGACY_ADVERTISING_MAX_SIZE];
    ble::AdvertisingDataBuilder _adv_data_builder;

    void on_init_complete(BLE::InitializationCompleteCallbackContext *params);
    void onDisconnectionComplete(const ble::DisconnectionCompleteEvent&);
    void start_advertising(void);
};


#endif