const int LDR_PIN = A5;  // Pino do LDR
int valorLDR; // Criação de variavel do valor da luminosidade 
float lux; // variavel do lux em decimal

void setup() {
  Serial.begin(9600); // função que recebe parametros de velocidade para a transmição de bits
}

void loop() {
  valorLDR = analogRead(LDR_PIN);  // Faz a leitura do valor recebido

  
  lux = (2 * valorLDR) ;  // Fórmula para converter LDR para Lux;
  Serial.print("LuxMaximo:");
  Serial.print(2000);
  Serial.print(" ");
  Serial.print("LuxMinimo:");
  Serial.print(1000);
  Serial.print(" ");
  Serial.print("LuxAtual:");
  Serial.println(lux);

  delay(1000);  // Atualiza a cada 1 segundo
}
