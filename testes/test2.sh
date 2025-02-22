echo "Testando (2)..."
echo

output=$(./a.out < ./testes/input2.txt)
expected_output="
Livro 1:
Nome: Estruturas de Dados em Ação
ISBN: 978-1234567890
Preço: R$ 89.90
Score: 9
Editora: TechBooks

Livro 2:
Nome: Algoritmos Descomplicados
ISBN: 978-0987654321
Preço: R$ 59.90
Score: 8
Editora: CodePress

Livro 3:
Nome: Introdução à Programação
ISBN: 978-1111111111
Preço: R$ 45.00
Score: 7
Editora: LearnBooks

Livro 4:
Nome: Engenharia de Software Moderna
ISBN: 978-2222222222
Preço: R$ 120.50
Score: 10
Editora: DevPress

Livro 5:
Nome: Banco de Dados: Teoria e Prática
ISBN: 978-3333333333
Preço: R$ 75.90
Score: 8
Editora: DataBooks

Livro 6:
Nome: Padrões de Projeto Avançados
ISBN: 978-4444444444
Preço: R$ 99.90
Score: 9
Editora: DesignPress

Livro 7:
Nome: Redes de Computadores Simplificadas
ISBN: 978-5555555555
Preço: R$ 65.90
Score: 8
Editora: NetBooks

Livro 8:
Nome: Sistemas Operacionais Essenciais
ISBN: 978-6666666666
Preço: R$ 85.00
Score: 7
Editora: SysBooks

Livro 9:
Nome: Inteligência Artificial Aplicada
ISBN: 978-7777777777
Preço: R$ 110.00
Score: 10
Editora: AIBooks

Livro 10:
Nome: Computação em Nuvem na Prática
ISBN: 978-8888888888
Preço: R$ 95.50
Score: 9
Editora: CloudBooks"


if [ $? -eq 0 ] ; then
  echo "Running ok: Program exited zero"
else
  echo "Fail on running: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: A saida esperada esta correta"
else
  echo "Era esperado '$expected_output' mas o programa retornou: $output"
  exit 1
fi

echo
echo "Teste 2 realizado com sucesso"

exit 0