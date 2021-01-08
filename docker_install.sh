#Removendo possíveis versões antigas do Docker
sudo apt-get remove docker docker-engine docker.io

#Atualizando pacotes
sudo apt-get update

#Add chave GPG repositório oficil do Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add repositório do Docker às fontes do APT
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#Atualizando pacotes
sudo apt-get update

#Instalando docker-ce
sudo apt-get install docker-ce

#Mostra versão do Docker instalada
echo "Docker version:"
sudo docker version

#Executa o docker sem precisar de (sudo)
#sudo usermod -aG docker $(whoami)