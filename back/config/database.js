const parseDbUrl = require("parse-database-url");

module.exports = ({ env }) => {
  // Adapt database config based on environment
  const environment = env('NODE_ENV');

  // Parse database string into several parts
  const dbConfig = parseDbUrl(env("DATABASE_URL"));

  return {
    defaultConnection: "default",
    connections: {
      default: {
        connector: "bookshelf",
        settings: {
          client: "postgres",
          host: dbConfig.host,
          port: dbConfig.port,
          database: dbConfig.database,
          username: dbConfig.user,
          password: dbConfig.password,
          schema: "public",
          // Only enable SSL connections in production
          ...environment === 'production' && {
            ssl: { rejectUnauthorized: false },
          }
        },
        options: {}
      }
    }
  }
};
