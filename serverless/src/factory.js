const AWS = require('aws-sdk')

const dynamoDBConfig = { }

const isLocal = process.env.IS_OFFLINE

if(isLocal) {
  const host = process.env.LOCALSTACK_HOST || "localhost"
  dynamoDBConfig.endpoint = new AWS.Endpoint(
    `http://${host}:4566`
  )
}

const dynamodb = new AWS.DynamoDB.DocumentClient(dynamoDBConfig);

module.exports = {
  dynamodb
}
