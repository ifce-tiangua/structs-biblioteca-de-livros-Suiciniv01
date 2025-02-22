echo "Testando (1)..."
echo

output=$(./a.out < ./testes/input1.txt)
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
Editora: CodePress"

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
echo "Teste 1 realizado com sucesso"

exit 0