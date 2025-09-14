class Pessoa {
  String nome;
  double altura;
  double peso;

  Pessoa(this.nome, this.altura, this.peso);

  double calcularIMC() {
    return peso / (altura * altura);
  }

  Map<String, String> classificarIMC() {
    double imc = calcularIMC();
    String classificacao = "";
    String risco = "";

    if (imc < 18.5) {
      classificacao = "Abaixo do peso";
      risco =
          "Risco aumentado de problemas de saúde, como desnutrição, osteoporose, anemia e baixa imunidade";
    } else if (imc < 25) {
      classificacao = "Peso normal";
      risco = "Menor risco de doenças relacionadas ao peso";
    } else if (imc < 30) {
      classificacao = "Sobrepeso";
      risco =
          "Risco aumentado de doenças cardiovasculares, hipertensão, diabetes tipo 2 e problemas articulares";
    } else if (imc < 35) {
      classificacao = "Obesidade grau 1";
      risco =
          "Risco moderado de doenças cardiovasculares, hipertensão, diabetes tipo 2 e problemas articulares";
    } else if (imc < 40) {
      classificacao = "Obesidade grau 2";
      risco =
          "Risco severo de doenças cardiovasculares, hipertensão, diabetes tipo 2, apneia do sono e problemas articulares";
    } else {
      classificacao = "Obesidade grau 3";
      risco =
          "Risco muito severo de doenças cardiovasculares, hipertensão, diabetes tipo 2, apneia do sono, problemas articulares e outras complicações graves de saúde";
    }

    return {"classificacao": classificacao, "risco": risco};
  }
}
