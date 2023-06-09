"use strict";

const { dynamodb } = require("./factory")
const updateItem = async (event) => {

  const {itemStatus} = JSON.parse(event.body);
  const {id} = event.pathParameters

  await dynamodb.update({
    TableName: "ItemTable",
    Key: {id},
    UpdateExpression: 'set itemStatus = :itemStatus',
    ExpressionAttributeValues: {
      ':itemStatus': itemStatus
    },
    ReturnValues: "ALL_NEW"
  }).promise()

  return {
    statusCode: 200,
    body: JSON.stringify(
      { msg: 'Item updated'}
    ),
  };
};


module.exports = {
    handler:updateItem
}


