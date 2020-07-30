const parseDbUrl = require("parse-database-url");

module.exports = ({ env }) => {
  // Adapt database config based on environment
  const environment = env('NODE_ENV');

  // SQLite database in development
  if (environment === 'development') {
    return {
      defaultConnection: "default",
      connections: {
        default: {
          connector: "bookshelf",
          settings: {
            client: "sqlite",
            filename: ".tmp/data.db"
          },
          options: {
            "useNullAsDefault": true
          }
        }
      }
    }
  }

  // Postgres database in production
  if (environment === 'production') {
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
            ssl: { rejectUnauthorized: false }
          },
          options: {}
        }
      }
    }
  }
};
