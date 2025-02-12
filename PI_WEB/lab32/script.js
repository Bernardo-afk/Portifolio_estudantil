const quiz = document.getElementById('quiz');
const perguntaAtual = document.getElementById('pergunta-atual');
const respostas = document.getElementById('respostas');
const enviar = document.getElementById('enviar');
const resultado = document.getElementById('resultado');
const pontuacao = document.getElementById('pontuacao');
const respostasCorretas = document.getElementById('respostas-corretas');
const somCorreto = document.getElementById('som-correto');
const somIncorreto = document.getElementById('som-incorreto');

let perguntas = [
  {
    pergunta: 'Quem foi o primeiro presidente do Brasil?',
    respostas: [
      { valor: 'A', texto: 'Deodoro da Fonseca' },
      { valor: 'B', texto: 'Getúlio Vargas' },
      { valor: 'C', texto: 'Juscelino Kubitschek' },
      { valor: 'D', texto: 'Luís Inácio Lula da Silva' }
    ],
    correta: 'A'
  },
  {
    pergunta: 'Qual foi o nome da primeira capital do Brasil?',
    respostas: [
      { valor: 'A', texto: 'Rio de Janeiro' },
      { valor: 'B', texto: 'Salvador' },
      { valor: 'C', texto: 'São Paulo' },
      { valor: 'D', texto: 'Brasília' }
    ],
    correta: 'B'
  },
  {
    pergunta: 'Quem foi o líder da Revolta da Vacina?',
    respostas: [
      { valor: 'A', texto: 'Oswaldo Cruz' },
      { valor: 'B', texto: 'Rui Barbosa' },
      { valor: 'C', texto: 'Getúlio Vargas' },
      { valor: 'D', texto: 'Luís Inácio Lula da Silva' }
    ],
    correta: 'A'
  },
  {
    pergunta: 'Qual foi o nome do movimento que levou à Proclamação da República?',
    respostas: [
      { valor: 'A', texto: 'Movimento Abolicionista' },
      { valor: 'B', texto: 'Movimento Republicano' },
      { valor: 'C', texto: 'Movimento Socialista' },
      { valor: 'D', texto: 'Movimento Comunista' }
    ],
    correta: 'B'
  },
  {
    pergunta: 'Quem foi o primeiro presidente do Brasil após a redemocratização?',
    respostas: [
      { valor: 'A', texto: 'Tancredo Neves' },
      { valor: 'B', texto: 'José Sarney' },
      { valor: 'C', texto: 'Fernando Collor de Mello' },
      { valor: 'D', texto: 'Luís Inácio Lula da Silva' }
    ],
    correta: 'B'
  },
  {
    pergunta: 'Qual foi o nome do tratado que estabeleceu a fronteira entre o Brasil e a Argentina?',
    respostas: [
      { valor: 'A', texto: 'Tratado de Madrid' },
      { valor: 'B', texto: 'Tratado de Lisboa' },
      { valor: 'C', texto: 'Tratado de Rio de Janeiro' },
      { valor: 'D', texto: 'Tratado de Buenos Aires' }
    ],
    correta: 'A'
  },
  {
    pergunta: 'Quem foi o líder da Revolta dos Malês?',
    respostas: [
      { valor: 'A', texto: 'Abd al-Rahman' },
      { valor: 'B', texto: 'Ahmad al-Mansur' },
      { valor: 'C', texto: 'Muhammad Ali' },
      { valor: 'D', texto: 'Abd al-Kadir' }
    ],
    correta: 'A'
  }
];

let indicePergunta = 0;
let pontuacaoTotal = 0;

function mostrarPergunta() {
  const pergunta = perguntas[indicePergunta];
  perguntaAtual.textContent = pergunta.pergunta;
  respostas.innerHTML = '';
  pergunta.respostas.forEach((resposta) => {
    const li = document.createElement('li');
    const input = document.createElement('input');
    input.type = 'radio';
    input.name = 'resposta';
    input.value = resposta.valor;
    li.appendChild(input);
    li.appendChild(document.createTextNode(resposta.texto));
    respostas.appendChild(li);
  });
}

function verificarRespostas() {
  const respostaSelecionada = respostas.querySelector('input[name="resposta"]:checked');
  if (respostaSelecionada) {
    const respostaCorreta = perguntas[indicePergunta].correta;
    if (respostaSelecionada.value === respostaCorreta) {
      pontuacaoTotal++;
      somCorreto.play();
      quiz.classList.add('correto');
      setTimeout(() => {
        quiz.classList.remove('correto');
      }, 5000);
    }
  }
  indicePergunta++;
  if (indicePergunta < perguntas.length) {
    mostrarPergunta();
  } else {
    mostrarResultado();
  }
}









function mostrarResultado() {
  resultado.style.display = 'block';
  pontuacao.textContent = `Você acertou ${pontuacaoTotal} de ${perguntas.length} perguntas`;
  respostasCorretas.innerHTML = '';
  perguntas.forEach((pergunta, indice) => {
    const respostaCorreta = pergunta.correta;
    const respostaSelecionada = respostas.querySelector(`input[name="resposta"]:checked`);
    if (respostaSelecionada && respostaSelecionada.value === respostaCorreta) {
      const li = document.createElement('li');
      li.textContent = `Pergunta ${indice + 1}: ${pergunta.pergunta} - Resposta correta: ${respostaCorreta}`;
      respostasCorretas.appendChild(li);
    }
  });
}

enviar.addEventListener('click', verificarRespostas);

mostrarPergunta();