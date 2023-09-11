echo "Digite o nome do arquivo: "
read FILE
COUNTEWORDS=$(wc -w < $FILE)
echo "O arquivo $1 possui $COUNTEWORDS palavras."