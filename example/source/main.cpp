#include "mbed.h"
#include <events/mbed_events.h>
#include "ble/BLE.h"
#include "ble/Gap.h"
#include "ble/GattServer.h"

#include "includes.h"
#include "app.h"
#include <cstdint>
#include <cstring>

const static char TAG[] = "SYSTEM";

uint8_t DEVICE_NAME[] = "APP";
const uint8_t CODE_VERSION[] = {0,0,1};

RawSerial serial(TX, RX, UART_BAUDRATE);

/**
 * BLE Handle for BLE communication
 */
BLE &ble_handle = BLE::Instance();
events::EventQueue event_queue(32 * EVENTS_EVENT_SIZE);

/**
 * Application initialization
 */
APP app(ble_handle, event_queue);


/** 
 * Schedule processing of events from the BLE middleware in the event queue. 
 */
void schedule_ble_events(BLE::OnEventsToProcessCallbackContext *context) {
    event_queue.call(Callback<void()>(&context->ble, &BLE::processEvents));
}

int main()
{
    serial.printf("Starting\r\n");
    
    ble_handle.onEventsToProcess(schedule_ble_events);    
    app.start();
   
    event_queue.dispatch_forever();
    return 0;
}
