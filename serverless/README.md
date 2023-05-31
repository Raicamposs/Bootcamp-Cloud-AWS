## Infraestrutura Como Código com Serverless Framework na AWS

### Passo a Passo

- Inicie o localstack

```bash
docker-compose up
```
- Teste o status do localstack

```bash
curl http://localhost:4566/health
```

- Inicie o serviço localmente 

```bash
npm run start
```
- Teste se o servidor esta no ar 

```bash
curl http://localhost:3000/dev
```

- Crie a tabela no localstack

```bash
./scripts/001-create-dynamodb.sh
```

