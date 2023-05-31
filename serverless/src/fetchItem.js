"use strict";
const { dynamodb } = require("./factory")

const fetchItem = async (event) => {
    
    const {id} = event.pathParameters

    let item;

    try {
        const result = await dynamodb.get({
            TableName: "ItemTable",
            Key: {id}
        }).promise();

        item = result.Item;

    } catch (error) {
        console.log(error)
    }

    return {
        statusCode: 200,
        body: JSON.stringify(item),
    };
};

module.exports = {
    handler: fetchItem,
};
