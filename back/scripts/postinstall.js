const fs = require('fs-extra');

async function postinstall() {
  // Path of the package.json file
  const filePath = `package.json`;
  // Check if the package.json exist
  try {
    if (fs.exists(filePath)) {
      // Read the package.json inside the backend directory (strapi)
      const packageJSON = await fs.readJSON(
        filePath
      );

      // Change the uuid inside the package.json
      await fs.writeJson(filePath, {
        ...packageJSON,
        strapi: { uuid: `STRAPI-STARTER-NEXT-CORPORATE-PRODUCTION` },
      });
    }
    else {
    }
  } catch (e) {
    console.error(e);
  }
};

postinstall().catch(error => {
  console.error(error);
  process.exit(1);
});