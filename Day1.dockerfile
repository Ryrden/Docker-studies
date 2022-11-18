#
FROM debian

# criar uma informação metadata
LABEL app="Giropops"

#Variável de ambiente
ENV  JEFERSON="LINDO"

#Executa comando em tempo de compilação
RUN apt-get update && apt-get  install -y stress && apt-get clean

# Executa somente quando o container for iniciado
CMD stress --cpu 1 --vm-bytes 64M --vm 1
