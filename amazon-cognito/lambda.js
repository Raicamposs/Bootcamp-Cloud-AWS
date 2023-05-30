const { DynamoDBClient, PutItemCommand } = require("@aws-sdk/client-dynamodb");
 
exports.handler = async (event) => {
    
    let responseBody = ""
    let statusCode = 0
    
    let {id, price} = JSON.parse(event.body);

    const input = {
        "Item": {
            "id": {
            "S": id
            },
            "price": {
            "N": price
            } 
        },
        "TableName": "items"
    };


    try {
        const client = new DynamoDBClient({ 
            region: process.env.AWS_DEFAULT_REGION, 
            accessKeyId: process.env.AWS_ACCESS_KEY_ID,
            secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
        });

        const command = new PutItemCommand(input);
        await client.send(command);

        statusCode = 200;
        responseBody = JSON.stringify('Item inserido com sucesso!');
    } catch (err) {
        statusCode = 400;
        responseBody = JSON.stringify(err);
    }

    const response = {
        statusCode: statusCode,
        body: responseBody,
    };
    
    return response;
};