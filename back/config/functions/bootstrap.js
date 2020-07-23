'use strict';

const fse = require('fs-extra');
const util = require('util');
const exec = util.promisify(require('child_process').exec);
const parseDbUrl = require("parse-database-url");

/**
 * An asynchronous bootstrap function that runs before
 * your application gets started.
 *
 * This gives you an opportunity to set up your data model,
 * run jobs, or perform some special logic.
 *
 * See more details here: https://strapi.io/documentation/v3.x/concepts/configurations.html#bootstrap
 */

async function hasAdminUsers() {
  const admins = await strapi.query('administrator', 'admin').find()
  return admins.length > 0;
}

async function importSeedData() {
  const dbConfig = parseDbUrl(process.env.DATABASE_URL);
  const response = await exec(
    `sh seed.sh ${db.host} ${db.port} ${dbConfig.database} ${dbConfig.user}`
  );
  console.log(response);
}

module.exports = async () => {
  // Check if first run
  const shouldImportData = !await hasAdminUsers();
  console.log({ shouldImportData });
  if (shouldImportData) {
    await importSeedData();
  }
};
