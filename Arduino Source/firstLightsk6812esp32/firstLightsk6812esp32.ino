/* M5Stack C3
*
 https://www.partsnotincluded.com/fastled-rgbw-neopixels-sk6812/
  Ziel: 
  Led Faden ohne Nutzung von Delays:
  Schaltet Alle Leds Led Gemeinsam an und fährt Sättigung alle updaeteRateLED msec langsam hoch
  Schaltet dann nach zeitraum "ausschalten = 10sec" einzeln die LEDS mit der Updaterate aus. 
  helligkeit ist definiert in weiss_helligkeit

  
*/

//BrownOut Disable
#include "soc/soc.h"
#include "soc/rtc_cntl_reg.h"
//Task Watchdog
#include <esp_task_wdt.h>

#include "OTA.h"
#include "credentials.h" 
#include "FastLED.h"
#include "FastLED_RGBW.h"
#define updaterateLED 70 
#define ausschalten 18000 
#define weiss_helligkeit 200
#define NUM_LEDS ANZAHL_LEDS
#define DATA_PIN RGB_LED_DATA_PIN
 
CRGBW leds[NUM_LEDS];
CRGB *ledsRGB = (CRGB *) &leds[0];

 
const uint8_t brightness = 128;
uint8_t i=0;
uint8_t hue, hue2 = 0;
long lastMsg = 0;
long lastMsg2 = 0;
boolean button_pressed =1;
boolean zielwert_erreicht =0;
 
void setup() { 
  WRITE_PERI_REG(RTC_CNTL_BROWN_OUT_REG, 0);//BrownOut Disable
  esp_task_wdt_init(30, false); //Task Watchdog set to 30sec
  FastLED.addLeds<WS2812B, DATA_PIN, RGB>(ledsRGB, getRGBWsize(NUM_LEDS));
  FastLED.setBrightness(brightness);
  FastLED.show();
  Serial.begin(115200);
  //hue=0; hue2=0;
  Serial.print("Startup: ");
  setupOTA("ESP32WS2812C3");
  Serial.print("OTA Rennt: ");
  rainbowLoop();
  FastLED.show();
  fill_solid(leds, NUM_LEDS, CRGBW(250,0,0,0));
  FastLED.show();
}
 
void loop(){
  ArduinoOTA.handle();
  
  for(int b = 0; b < NUM_LEDS; b++ )
   {
   leds[b] = CRGBW(0,0,50, 0);  
  }
  FastLED.show();
  delay(500);
  //fadeToBlackBy(leds, NUM_LEDS, 250); 
  
  fade_helligkeit(150);
  FastLED.show();
  Serial.print("150: ");
  delay(1500);
  
  fade_helligkeit(50);
  FastLED.show();
  Serial.println("50: ");
  delay(1500);
}
//Fährt gleichzeitig alle LEDs an und bringt die Helligkeit auf den Zielwert
void fade_white(uint8_t zielwert){
    Serial.print("Millis: ");           Serial.print(millis());
    Serial.print(" Aktueller Wert: ");   Serial.print(hue);
    Serial.print(" Zielwert:");         Serial.println(zielwert);
    if(hue < zielwert){
      hue++;  
    }
    else if (hue == zielwert){
      zielwert_erreicht = 1;
      Serial.println("Zielwert erreicht");
    }
    else{
      hue--;
    }
    fill_solid(leds, NUM_LEDS, CRGBW(0,0,0,hue));
    FastLED.show();
}

//fährt Nacheinander alle Leds in einen bestimmten Wert
//Dazu muss der Zielwert erreicht sein
void fade_white_single(uint8_t startwert, uint8_t zielwert, int x){
    int dimmen_um_wert=10;
    Serial.print("Millis: ");          Serial.print(millis());
    Serial.print(" Diode:");          Serial.print(x);
    Serial.print(" Aktueller Wert: "); Serial.print(hue2);
    Serial.print(" Zielwert:");       Serial.println(zielwert);
    
    if(hue2 < zielwert){
      hue2+=dimmen_um_wert;  
      leds[x] = CRGBW(0, 0, 0, hue2);
    }
    else if (hue2 == zielwert){
      zielwert_erreicht = 1;
      hue2 = startwert; //rücksetzen des aktuellen Licht Werts für nächste LED
      Serial.println("Zielwert erreicht");
      i++;
    }
    else{
      hue2-=dimmen_um_wert;
      leds[x] = CRGBW(0, 0, 0, hue2);
    }    
    FastLED.show();
}

void fade_helligkeit(uint8_t helles){ //nimmt vom Originalwert was weg = = 0% 255 = Original
   nscale8(leds, NUM_LEDS, helles);
}

 
void colorFill(CRGB c){
  for(int i = 0; i < NUM_LEDS; i++){
    leds[i] = c;
    FastLED.show();
    delay(50);
  }
  delay(500);
}
 
void fillWhite(){
  for(int i = 0; i < NUM_LEDS; i++){
    leds[i] = CRGBW(0, 0, 0, 255);
    FastLED.show();
    delay(50);
  }
  delay(500);
}
 
void rainbow(){
  static uint8_t hue;
 
  for(int i = 0; i < NUM_LEDS; i++){
    leds[i] = CHSV((i * 256 / NUM_LEDS) + hue, 255, 255);
  }
  FastLED.show();
  hue++;
}
 
void rainbowLoop(){
  long millisIn = millis();
  long loopTime = 5000; // 5 seconds
 
  while(millis() < millisIn + loopTime){
    rainbow();
    delay(5);
  }
}
