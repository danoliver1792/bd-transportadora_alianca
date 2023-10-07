<h1>Transportadora Alianca</h1>
<p>Criando um banco de dados de uma transportadora fictícia para treinar queries de CRUD no MySQL com as informações de 
nome, sobremnome, cargo, nivel do cargo, salario e data de admissão.</p>
<h3>Etapas</h3>
<ol>
  <li>Etapa 1: modelagem do banco no MySQL Workbench.</li> <br/>
  <img src="https://github.com/danoliver1792/bd-transportadora_alianca/assets/99451711/5c2b0054-ae77-428a-be6a-f93cf8da1181">
  <li>Etapa 2: criação do banco e das tabelas "funcionario" para armazenar os dados dos trabalhadores, "cargo" com os cargos definidos e "nivel" com 
  as opções junior, pleno e sênior. As tabelas "cargo" e "nivel" tem relacionamento 1 para muitos com a tabela "funcionario".</li> <br/>
  <img src="https://github.com/danoliver1792/bd-transportadora_alianca/assets/99451711/c47014b2-dce9-44e5-83ef-2c436580f9a3">
  <li>Etapa 3: na tabela "funcionario" há referências com foreign key para as tabelas "cargo" e "nivel". Adicionamos a coluna de data de admissão após 
  não ser informada na criação da tabela, alteramos o tipo para receber data e não ficar vazio.</li> <br/>
  <img src="https://github.com/danoliver1792/bd-transportadora_alianca/assets/99451711/96ee556f-6745-4b8f-91bf-fa3227fdbc51">
  <li>Etapa 4: trigger criada para fazer um backup das informações que serão apagadas, para manter guardada para uma eventual perda dos dados.</li> <br/>
  <img src="https://github.com/danoliver1792/bd-transportadora_alianca/assets/99451711/3b01f40c-3ad9-4411-9db3-769f49a1ea9b">
  <li>Etapa 5: inserindo os dados de cargo e nível nas suas respectivas tabelas e enviando informações dos funcionários.</li> <br/>
  <img src="https://github.com/danoliver1792/bd-transportadora_alianca/assets/99451711/c40f1547-3b5c-486b-8a8a-6f4a13d1fa85">
  <li>Etapa 6: criando procedures para otimizar a busca de informações no banco, por exemplo, para trazer pessoas que só trabalham em um determinado cargo.</li> <br/>
  <img src="https://github.com/danoliver1792/bd-transportadora_alianca/assets/99451711/89b33f44-ea9a-4812-abda-0d246611a8de">
  
</ol>
