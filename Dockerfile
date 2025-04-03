FROM n8nio/n8n:latest

# Ajusta permissões do arquivo de configurações do n8n
RUN chmod 600 /home/node/.n8n/config || true

# Garante que o n8n seja instalado corretamente
RUN npm install -g n8n

# Define a porta padrão do n8n
EXPOSE 5678

# Define o comando de inicialização
CMD ["n8n"]