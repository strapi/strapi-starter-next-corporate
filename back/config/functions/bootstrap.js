'use strict';

const fse = require('fs-extra');
const util = require('util');
const exec = util.promisify(require('child_process').exec);

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
  await exec('apt-get install pgloader');
  await exec(`pgloader ./data.db ${process.env.DATABASE_URL}`);
}

module.exports = async () => {
  // Check if first run
  const shouldImportData = !await hasAdminUsers();
  console.log({ shouldImportData });
  if (shouldImportData) {
    await importSeedData();
  }
};
