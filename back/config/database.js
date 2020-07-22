const parseDbUrl = require("parse-database-url");

module.exports = ({ env }) => {
  const dbConfig = parseDbUrl(env("DATABASE_URL"));
  console.log(dbConfig);

  return {
    defaultConnection: "default",
    connections: {
      default: {
        connector: "bookshelf",
        settings: {
          client: "postgres",
          host: env("DATABASE_HOST", "localhost"),
          port: env.int("DATABASE_PORT", 5432),
          database: env("DATABASE_NAME", "strapi"),
          username: env("DATABASE_USERNAME", "strapi"),
          password: env("DATABASE_PASSWORD", "strapi"),
          schema: "public",
          ssl: { rejectUnauthorized: false }
        },
        options: {}
      }
    }
  }
};
