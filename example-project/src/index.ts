import { APIGatewayProxyHandler } from 'aws-lambda';

export const handler: APIGatewayProxyHandler = () => {
  return Promise.resolve({
    statusCode: 200,
    body: 'Hello',
  });
};
