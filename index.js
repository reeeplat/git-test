const fastify = require('fastify')({ logger: true });

fastify.get('/', (request, reply) => {
  reply.send({ hello: 'world' });
});

fastify.listen({ port: 3000, host: '0.0.0.0' }, (err, address) => {
  if (err) {
    fastify.log.error(err);
    process.exit(1);
  }
  console.log(`Server listening at ${address}`);
});
