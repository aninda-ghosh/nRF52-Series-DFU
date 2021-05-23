#include "app.h"

void APP::start(void) {
    _ble.gap().setEventHandler(this);
    _ble.init(this, &APP::on_init_complete);
}

void APP::on_init_complete(BLE::InitializationCompleteCallbackContext *params) {
    if (params->error != BLE_ERROR_NONE) {
        return;
    }
    _dfu_service = new DFUService(_ble);

    start_advertising();
}

void APP::onDisconnectionComplete(const ble::DisconnectionCompleteEvent&) {
    _ble.gap().startAdvertising(ble::LEGACY_ADVERTISING_HANDLE);
}

void APP::start_advertising(void) {
    ble::AdvertisingParameters adv_parameters(
        ble::advertising_type_t::CONNECTABLE_UNDIRECTED,
        ble::adv_interval_t(ble::millisecond_t(100))
    );

    uint8_t device_name[20] = {0};
    uint8_t i = 0;
    uint8_t *ptr = DEVICE_NAME;
    for(; i < strlen((const char*)DEVICE_NAME); i++){
        device_name[i] = *ptr;
        ptr++;
    }
    device_name[i] = '[';
    device_name[i+1] = (uint8_t)(NRF_FICR->DEVICEADDR[1]>>8);
    device_name[i+2] = (uint8_t)(NRF_FICR->DEVICEADDR[1]);
    device_name[i+3] = (uint8_t)(NRF_FICR->DEVICEADDR[0]>>24);
    device_name[i+4] = (uint8_t)(NRF_FICR->DEVICEADDR[0]>>16);
    device_name[i+5] = (uint8_t)(NRF_FICR->DEVICEADDR[0]>>8);
    device_name[i+6] = (uint8_t)(NRF_FICR->DEVICEADDR[0]);
    device_name[i+7] = ']';
    
    UUID uuids[3] = {
        0xA000,
        0xB000,
        0xC000
    };
    _adv_data_builder.setName((const char*)device_name, true);
    _adv_data_builder.setLocalServiceList(uuids, false);
    _adv_data_builder.setManufacturerSpecificData(mbed::make_const_Span(CODE_VERSION,3));
    _adv_data_builder.setFlags();

    ble_error_t error = _ble.gap().setAdvertisingParameters(
        ble::LEGACY_ADVERTISING_HANDLE,
        adv_parameters
    );
    if (error) {
        return;
    }

    error = _ble.gap().setAdvertisingPayload(
        ble::LEGACY_ADVERTISING_HANDLE,
        _adv_data_builder.getAdvertisingData()
    );
    if (error) {
        return;
    }

    error = _ble.gap().startAdvertising(ble::LEGACY_ADVERTISING_HANDLE);
    if (error) {
        return;
    }
}