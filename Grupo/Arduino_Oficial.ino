const int LDR_PIN = A0;  // Pino do LDR
int valorLDR; // Criação de variavel do valor da luminosidade 
float lux; // variavel do lux em decimal

void setup() {
  Serial.begin(9600); // função que recebe parametros de velocidade de transmição de bits
}

void loop() {
  valorLDR = analogRead(LDR_PIN);  // Leitura do valor recebido

  
  lux = (5 * valorLDR) * 1.5 ;  // A constante de calibração deve ser ajustada;  Fórmula para converter LDR para Lux (ajuste conforme sua calibração;
  Serial.print("LuxMaximo:");
  Serial.print(8000);
  Serial.print(" ");
  Serial.print("LuxMinimo:");
  Serial.print(4000);
  Serial.print(" ");
  Serial.print("LuxAtual:");
  Serial.println(lux);

  delay(1000);  // Atualiza a cada 1 segundo
}
