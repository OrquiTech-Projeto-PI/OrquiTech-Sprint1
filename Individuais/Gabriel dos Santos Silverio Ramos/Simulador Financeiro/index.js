function calcular() {
  let qntOrquideas = Number(iptQntOrquideas.value);
  let valorOrquidea = Number(iptValorOrquidea.value);
  let valorTotal = qntOrquideas * valorOrquidea;
  let valorPerda = valorTotal * 0.12;
  let valorComPerda = valorTotal - valorPerda;
  let valorPerdaSistema = valorComPerda / 2; 

  mensagem.innerHTML = `
    Segundo os cálculos, o valor total das orquídeas é de: <b>R$${valorTotal.toFixed(2)}</b> <br>
    A perda por conta de iluminação inapropriada é de: <b>R$${valorPerda.toFixed(2)}</b>. <br>
    Porém, utilizando o sistema, o valor vai para <b>R$${valorPerdaSistema.toFixed(2)}</b>.
    `;
}
