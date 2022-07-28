#include <WiFi.h>
#include <HTTPClient.h>
#define sensorLDR A0
#define LED 4

int nilaiSensor;
String keterangan = "";
int persentase = 0;
  
const char* ssid = "kost febby";
const char* password = "Buyung2022";
//serverName harus sama dengan WiFi pengguna
String serverName = "http://192.168.100.134/webphotodioda/kirimdata.php";
unsigned long lastTime = 0;

unsigned long timerDelay = 5000;

void setup() {
  Serial.begin(115200);

  WiFi.begin(ssid, password);
  Serial.println("connecting") ; //untuk koneksi ke WiFi
  while (WiFi.status() != WL_CONNECTED) {
    delay (500); //0,5 detik
    Serial.print("."); //jika belum terhubung maka dia akan memberikan titik titik sampai connection terhubung
  }
  Serial.println("");
  Serial.print("Connected to WiFi network with IP Address: ");
  Serial.println(WiFi.localIP());
  Serial.println("Timer set to 5 seconds (timerDelay variable), it will take 5 seconds before publishing the first reading.");

  pinMode(LED, OUTPUT);
  delay(3000);
}

void loop() {

  //variable untuk input sensor
  nilaiSensor = analogRead(sensorLDR);
  
  int hasilSensor = map(nilaiSensor, 0, 4095, 0, 2000);  //0=nilai min, 4095=nilaimax, 0=nilaimincandela, 2000=nilaimaxcandela  
  

  Serial.print(hasilSensor);
  Serial.println(" Candela");
  
  if (hasilSensor < 1600) {
    persentase = hasilSensor;
    keterangan = "HIDUP";
    digitalWrite(LED, HIGH);

  }
  else {
    persentase = hasilSensor;
    keterangan = "MATI";
    digitalWrite(LED, LOW);
  }

  kirim_data(persentase, keterangan);
  delay(100);
}

void kirim_data(int hasilSensor, String keterangan) {

  if ((millis() - lastTime) > timerDelay) {
    //Check WiFi connection status
    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient http; //function HTTPClient namanya http

      String serverPath = serverName + "?hasilSensor=" + String(hasilSensor) + "&keterangan=" + keterangan;

      // Your Domain name with URL path or IP address with path
      http.begin(serverPath.c_str());

      // Send HTTP GET request
      int httpResponseCode = http.GET();

      if (httpResponseCode > 0) {
        Serial.print("HTTP Response code: ");
        Serial.println(httpResponseCode);
        String payload = http.getString();
        Serial.println(payload); //payload nilai yang akan dikeluarkan pada server nya
      }
      else {
        Serial.print("Error code: ");
        Serial.println(httpResponseCode);
      }
      // Free resources
      http.end();
    }
    else {
      Serial.println("WiFi Disconnected");
    }
    lastTime = millis();
  }
}
