Projeto Calculator
Desenvolvedor: Sidnei Roberto Pereira
Linguagem: Delphi
Framework utilizada: Delphi 10.3
Data: 19/08/2023

Este projeto simples foi desenvolvido com o intúito de exemplificar na prática 
o uso do padrão MVC e a aplicação do uso de interfaces.
O código fonte está livre para download sem restrições de uso ou copyright.
Não tenho intenção de dar uma aula de M.V.C. ou interfaces, você consegue maior
conhecimento se inscrevendo em um dos cursos de Thulio Bittencourt, no qual eu
me inspirei para gerar esse pequeno projeto.

Fica aqui o meu agradecimento ao Thulio Bittencourt que me ensinou muito sobre as boas prática
na programação.

__________________________________________________________________________________________________________________

Uma breve explicação sobre as classes:
 - O projeto está organizado em 03 sub-pastas: Model, View e Controller.
 - A pasta Controller está vazia, pois eu tinha a intenção de criar uma classe DAO Generics, mas achei 
   melhor implementar o controle na própria interface iCalculadora.
 - Na subpasta Model\Entity eu também criei uma class TCalculadora que guardaria os valores digitado
   pelo usuário e o tipo de operação, contudo, decidi por incluir propertys na propria interface iCalculadora.
 - Na pasta View você encontra os forms, neste exemplo só temos um, mas poderia existir várias telas de cadastro
   por exemplo.
 - Voltando para a pasta Model, voçê deverá primeiramente criar o "Contrato" a interface que conterá as declarações:
    Neste exemplo eu defini com o nome: AppCalculator.Model.Calculadora.Interfaces.pas
	Exemplo:
	
type iCalculadora = interface
  ['{82736971-33A2-4687-8490-692DE2CE891F}']
  function OpSomar : string;
  function OpSubtrair : string;
  function OpDividir : string;
  function OpMultiplicar: string;
  function ThisOperatorL( aValue: string): iCalculadora;
  function ThisOperatorR( aValue: string): iCalculadora;
end;

 - Em seguida voçê deve criar a interface AppCalculator.Model.Calculadora.pas e implementar as functions que vc
   declarou na interface AppCalculator.Model.Calculadora.Interfaces.pas.
		. Existe duas ressalvas a serem feitas aqui:
		1) class function New: iCalculadora;
			Ao declarar uma "class function" que retorna a própria interface voçê passa a ter controle dinâmico
			sobre a classe, pois, ela ao ser instanciada retorna o controle para a própria interface permitindo
			a execução de outras funções. Lembre-se de declarar sempre o "result := Self;" na função.
		2) Como no form todos os botões clicados pelo usuário retornam uma string para facilitar a exibição
		   no Caption do Form eu tomei a liberdade de criar duas functions para converte e receber os valores:
			. TCalculadoraController.ThisOperatorL(aValue: string): iCalculadora;
			. TCalculadoraController.ThisOperatorR(aValue: string): iCalculadora;
		   ThisOperatorL receberá o valor digitado antes do símbolo matemático.
		   ThisOperatorR receberá o valor digitado após o símbolo matemático.
		   
 - Para finalizar, no Form a operação ficará simples, após clicar no símbolo de "=" o o app irá executar a operação
   matemática correspondente ao símbolo que foi clicado e que foi guardado na variável FOperador, retornando o
   resultado para edt_Result.Text e exibindo no display:
    Exemplo:      
	   edt_Result.Text :=
        TCalculadoraController
         .New
         .ThisOperatorL(FVlOpL)
         .ThisOperatorR(FVlOpR)
         .OpSomar;
		  
_______________________________________________________________________________________________________________

Estarei a disposição para mais esclarecimentos ou dúvidas nos senguintes canais:
sidnei@orbsis.com.br
whatApp: + 55 83 8778-0730
instagram: @sidneirobertop
linkedin: https://linkedin.com/in/sidnei-roberto-pereira-jp

