#include <ESP8266WiFi.h>

// =================================================================================================
#define   iluminacao       5                       //trava eletrônica

const char* ssid = "Tua rede";        // Nome da rede
const char* password = "senha"; // Senha da rede
WiFiServer server(8888); // Porta 8888

void setup() {
  pinMode(iluminacao, OUTPUT);  //saída para trava eletrônica
  digitalWrite(iluminacao, LOW); //desliga trava

  Serial.begin(115200);
  Serial.println();
  Serial.printf("Connecting to %s ", ssid);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  //  WiFi.config(ip, gateway, subnet);
  Serial.println(" connected");

  server.begin();
  Serial.printf("Web server started, open %s in a web browser\n", WiFi.localIP().toString().c_str());

  //Imprime mensagem inicial
  Serial.println("Aproxime o cartão no leitor...");
  Serial.println();
  tag = "None";
}

void loop() {
  WiFiClient client = server.available();

  if (client) {
    Serial.println("\n[Client connected]");
    while (client.connected()) {
      //identificação de tags RFID

      // read line by line what the client (web browser) is requesting
      if (client.available()) {
        String line = client.readStringUntil('\r');

        if (line == "GET_DATA") {
          client.println("Blah"); // Enviar status
        }

        else if (line == "OK") {
          // Acesso permitido
        }
        //
        else if (line == "NOP") {
          // Acesso negado
        }
      }
    }
    delay(10); // give the web browser time to receive the data

    // close the connection:
    client.stop();
    Serial.println("[Client disonnected]");
  }
}
