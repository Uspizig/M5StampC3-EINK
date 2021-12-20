
//BrownOut Disable
#include "soc/soc.h"
#include "soc/rtc_cntl_reg.h"
//Task Watchdog
#include <esp_task_wdt.h>

//#include <GxEPD.h>//nur für fonts???
#include "user_kennung.h"

// select the display class to use, only one

//#include <GxGDEW027W3/GxGDEW027W3.h>      // 2.7" b/w
#include <GxEPD2_BW.h>
#include <GxEPD2_3C.h>
#include "GxEPD2_boards_added.h"

// FreeFonts from Adafruit_GFX
#include <Fonts/FreeMonoBold9pt7b.h>
#include <Fonts/FreeMonoBold12pt7b.h>
#include <Fonts/FreeMonoBold18pt7b.h>
#include <Fonts/FreeMono9pt7b.h>
//#include <Fonts/FreeSansBold12pt7b.h>
//#include <Fonts/FreeSerifBold12pt7b.h>

const GFXfont* Schrift = &FreeMonoBold12pt7b;
const GFXfont* Schrift2 = &FreeMonoBold9pt7b;
const GFXfont* Schrift3 = &FreeMonoBold18pt7b; 
const GFXfont* Schrift4 = &FreeMono9pt7b; 
//const GFXfont* Schrift5 = &FreeSansBold12pt7b; 
//const GFXfont* Schrift6 = &FreeSerifBold12pt7b;




#define debug false

#include <WiFi.h>  
#include <SPI.h>   

#include <WiFiClientSecure.h>
#include <ArduinoJson.h>
//WiFiClient client;
//WiFiClientSecure client2;
WiFiClientSecure client;


//Eink Mini epaper Board -> M5 Stamp C3
  #define E_INK_PIN_SPI_BUSY 4//19
  #define E_INK_PIN_SPI_CS   7
  #define E_INK_PIN_SPI_RST  5//21
  #define E_INK_PIN_SPI_DC   6//22
  #define E_INK_PIN_SPI_SCK  8
  #define E_INK_PIN_SPI_DIN  10
  #define E_INK_PIN_SPI_MISO 1//n/A


  
//GxEPD2_3C<GxEPD2_270c, GxEPD2_270c::HEIGHT> gfx(GxEPD2_270c(/*CS=5*/ E_INK_PIN_SPI_CS, /*DC=*/ E_INK_PIN_SPI_DC, /*RST=*/ E_INK_PIN_SPI_RST, /*BUSY=*/ E_INK_PIN_SPI_BUSY));
GxEPD2_BW<GxEPD2_270, GxEPD2_270::HEIGHT> gfx(GxEPD2_270(/*CS=5*/ E_INK_PIN_SPI_CS, /*DC=*/ E_INK_PIN_SPI_DC, /*RST=*/ E_INK_PIN_SPI_RST, /*BUSY=*/ E_INK_PIN_SPI_BUSY));

/*------------------------------------------ EINK DISPLAY TEIL--------------------------------------------------------------*/
bool LargeIcon =  true;
bool SmallIcon =  false;
int fail_counter = 0;
//#define Anzeige_42
#define Anzeige_213
#define LORA_RESET 15

#ifdef Anzeige_42
  #define Large  7
  #define Small  4
  #define xanpassung 0
  //#define weite 128 
  //#define hoehe 296
#endif
#ifdef Anzeige_213
  #define Large  5
  #define Small  4
  #define xanpassung -30
#endif



#define uS_TO_S_FACTOR 1000000UL
#define TIME_TO_SLEEP_MAX 80UL
#define TIME_TO_SLEEP_CASE1 3600UL
#define TIME_TO_SLEEP_CASE2 9000UL




void setup()
{
  WRITE_PERI_REG(RTC_CNTL_BROWN_OUT_REG, 0);//BrownOut Disable
  esp_task_wdt_init(30, false); //Task Watchdog set to 30sec
  delay(500);
  Serial.begin(115200);
  Serial.println("\nStarte Wifi"); 
  Display_Start(); //Initalisiert das Display
  delay(500);
  wifi_start();//macht Wifi an und Basis Funktion für schnelles Connecten
  if (init_wifi_ota()){Serial.println("Wifi aktiv");} //startet Verbindung zum Wifi
  Serial.println("setup done");
}


void loop()
{
   
}

//versucht 3 Mal eine Verbindung herzustellen. Geht dann schlafen, Wartet bei jedem Versuch 10 Sec
void retry_mechanism(void){
    delay(10000);
    fail_counter++;
    if(fail_counter < 4){
      Serial.println("Probleme ich starte nochmal einen Verbindunsgversuch");
    }
    else{
      Serial.println("Schwerwiegende Verbindungsprobleme -- 5 x Retries erfolglos");
      delay(500);
      begin_sleep();
      delay(120000);
    }
}

//Initalisiert das E-Ink Display mit den wichtigsten Grundparametern
void Display_Start(void){
  int zahlen;
  gfx.epd2.init(E_INK_PIN_SPI_SCK, E_INK_PIN_SPI_DIN, 115200, true, 20, false); 
  delay(100);
  gfx.setRotation(0); gfx.fillScreen(GxEPD_WHITE); gfx.setTextColor(GxEPD_BLACK);
  gfx.fillCircle(15,70,50, GxEPD_BLACK);
  Serial.println("Circle");
  gfx.fillRect(0, 0, 120, 80, GxEPD_BLACK);
  Serial.println("RECT");
  Serial.println("Display setup done");
  gfx.display(false);
  #ifdef Anzeige_42
    gfx.drawFastHLine(0, 115, 200, GxEPD_BLACK); //Linie horizontal Teil Breite bis Text
    gfx.drawFastVLine(200, 0, gfx.height(), GxEPD_BLACK); //Linie Vertical Volle Höhe
  #else  
    gfx.drawFastHLine(0, 115, gfx.width(), GxEPD_BLACK); //Linie horizontal Volle Breite
  #endif
  gfx.setCursor(70, 90); gfx.setFont(Schrift2); 
  gfx.setRotation(0);
  gfx.print("Startup.");     
  gfx.print(zahlen);   
  zahlen++;  
  gfx.display(true);
  Serial.println("Text1");
  
  gfx.setCursor(10, 160); gfx.setFont(Schrift2);
  gfx.print("- M5 Stamp C3 - ");     
  //gfx.print(zahlen);   
  zahlen++;  
  gfx.display(true);
  Serial.println("Text2");
  gfx.setCursor(10, 180); gfx.setFont(Schrift2);
  gfx.print("E-Ink Display -");     
  //gfx.print(zahlen);   
  zahlen++;  
  gfx.display(true);
  Serial.println("Text3");
  gfx.setRotation(0); gfx.fillScreen(GxEPD_WHITE);
}

//Grundfunktionen des Wifi, Wifi anmachen, 1. Verbindungsversuch,  Hostname setzen
void wifi_start(void){
  WiFi.setHostname("muelli");
  WiFi.mode(WIFI_STA); // WLAN auf Client setzen
  WiFi.begin(WLAN_SSID, WLAN_PASS);
  Serial.print(F("Verbinde mit "));
  Serial.println(WLAN_SSID);
  WiFi.setSleep(false); //Deaktiviert WIFI Sleep
}


// Wifi Verbindungsversuch mit Retry Mechainsmus und Energiesparen bei WLAN OFFLINE
int init_wifi_ota(void){
    WiFi.begin(WLAN_SSID, WLAN_PASS);
    delay(500);
    int wifi_retries = 0;
    Serial.println("Check ob  WLAN verbunden :-> ");
    while (WiFi.status() != WL_CONNECTED) {
        delay(135);//150 läuft besser
        wifi_retries++;        
        if (wifi_retries > 30) {
          Serial.println("2. Anlauf WLAN :-< ");
          WiFi.begin(WLAN_SSID, WLAN_PASS);
          delay(1500);
          if(WiFi.status() != WL_CONNECTED){
              Serial.println("WLAN geht gar nicht :-( ");
              /*gfx.setCursor(15, 55); gfx.println("\nWLAN ist OFF-line :-<");
              gfx.display(); delay(1800);*/
              begin_sleep();
              delay(180);
              return 0;
              delay(180);
          }
          else{
            Serial.println("2. Anlauf WLAN geht :-) ");
            return 1;
          }
       }
        
    }
    Serial.println("");
    Serial.println("WiFi connected");
    return 1;
}

void begin_sleep(){
  //gfx.sleep();
  esp_sleep_enable_timer_wakeup(UpdateInterval);
  //esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP_CASE2 * uS_TO_S_FACTOR);
  Serial.print(F("Starte Dornrösschen-Schlaf.."));
  #ifdef BUILTIN_LED
    pinMode(BUILTIN_LED,INPUT);     // In case it's on, turn output off, sometimes PIN-5 on some boards is used for SPI-SS
    digitalWrite(BUILTIN_LED,HIGH); // In case it's on, turn LED off, as sometimes PIN-5 on some boards is used for SPI-SS
  #endif
  esp_deep_sleep_start();         // Sleep for e.g. 30 minutes
}
