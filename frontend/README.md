# Next frontend

This frontend relies on Next's [Static Generation](https://nextjs.org/docs/basic-features/pages) using [Strapi](https://strapi.io/) as the data source. Make sure Strapi is running in parallel when you run this app.

## Routes

**pages/[[...slug]].js**

This file generates all the app's route. First, it fetches all the pages entries in Strapi. Then, it creates one route per page found. These routes can look like this:

* yoursite.com
* yoursite.com/page
* yoursite.com/page/nested/route

Notice that the path of the page can be several layers deep, or it can be the root of the site. This is possible thanks to Next's [optional catch-all routes](https://nextjs.org/docs/routing/dynamic-routes#optional-catch-all-routes).

To see how to build these nested routes, see [the Strapi project's Readme](../backend/README.md).

## Available Scripts

In the project directory, you can run:

**`yarn dev`**

Runs the app in the development mode.  
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.  
You will also see any errors in the console.

**`yarn build`**

Builds the app for production to the `.next` folder.<br>
It correctly bundles React in production mode and optimizes the build for the best performance.

**`yarn start`**

Starts the application in production mode.
The application should be compiled with \`next build\` first.

See the section in Next docs about [deployment](https://nextjs.org/docs/deployment) for more
information.
