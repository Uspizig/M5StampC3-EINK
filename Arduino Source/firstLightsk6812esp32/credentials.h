#define mySSID "xxxxx"
#define myPASSWORD "xxxxxxx"
#define thingspeak_server "api.thingspeak.com"
#define thingspeak_api_key "xxxxxxxxxxxxxx"


#define rotary1

#ifdef rotary1
    //ESP32 C3 Stamp Base Board
    //#define mqtt_client_on
	  #define ANZAHL_LEDS 1 
    #define RGB_LED_DATA_PIN 9
    #define WS2812_LEDS
    #define RXD2 35
    #define TXD2 33
    
    /*#define ROTARY_ENCODER_A_PIN 26
    #define ROTARY_ENCODER_B_PIN 12
    #define ROTARY_ENCODER_BUTTON_PIN 21
    #define LED_PIN 22*/
    
    #define BUTTON_DISABLED 0
    #define BUTTON_ENABLED 1
    #define timeSeconds 500
    #define updaterate_leds 2000
    #define max_counter 255
    #define min_counter 0
#endif
