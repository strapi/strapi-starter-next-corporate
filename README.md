# Strapi Starter Next Corporate Site

Next starter for creating a corporate site with Strapi.

![screen-website](medias/screen-website.png)

This starter is designed for flexibility. Using it, you'll be able to manage your website content entirely in Strapi, and get a Next app automatically generated. Marketing teams will be able to create pages and design their layout without help from developers.

This starter features:

- Pages creation within Strapi, no code necessary
- Fully flexible page structure: design the pages you want using UI Sections
- 8 UI Sections out of the box: Hero, RichText, LargeVideo, Testimonials, Pricing, BottomActions, FeatureRows, FeatureColumns
- Easy to theme with Tailwind
- Static site generation with Next
- An integrated Preview Mode, to view your pages on a private URL before publishing them

## Run the starter locally

The easiest way to try this starter is to run it on your computer.

First, you'll need to create your own copy of this starter. You can fork this repository or download it as a zip.

### Database setup

We're going to set up a Postgres database for the Strapi backend. We recommend Postgres because it will then be easier to migrate to production. You'll also be able to import our Postgres backup to get started with seed data.

Follow these steps:

- Make sure you have Postgres installed on your machine, or [download it here](https://www.postgresql.org/download/)
- Run Postgres locally on port 5432
- Create a Postgres database for your project with `createdb my-corporate-site`
- Import the `data.dump` Postgres dump:  

```sh
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U myuser -d mydb data.dump
```

Warnings should be safe to ignore.

### Backend development setup

Open a terminal window and cd into the Strapi directory

```sh
cd back
```

Copy the .env.example file in this directory to a .env file (which will be ignored by Git):

```sh
cp .env.example .env
```

In `.env`, enter the values that match your environment. When using Postgres, our `DATABASE_URL` should look like this:

```sh
postgres://user:password@localhost:5432/my-corporate-site
# Or if you don't need a password:
postgres://localhost:5432/my-corporate-site
```

Out of the box, this starter connects to a Postgres database both in development and production. Feel free to [change these configurations](https://strapi.io/documentation/3.0.0-beta.x/concepts/configurations.html#database) if you need.

Start running Strapi:

```sh
yarn develop
```

By default, this starter will use the local provider for file uploads in development, and Cloudinary in production. You can modify this by editing `/back/config/plugins.js`.

If you want to easily migrate your data from develoment to production, you should have the same upload config across environments. But keep in mind that if you deploy on Heroku, local file uploads will not work.

You can view full backend documentation on the [back directory Readme](/back/README.md).

### Frontend development setup

While the Strapi server is running, open a new terminal and cd into the Next.js  app directory.

```sh
cd front
```

Copy the .env.local.example file in this directory to .env.local (which will be ignored by Git):

```sh
cp .env.local.example .env.local
```

Then set each variable on `.env.local`:

- `STRAPI_PREVIEW_SECRET` can be any random string (but avoid spaces), like `MY_SECRET` - this is used for [Preview Mode](https://nextjs.org/docs/advanced-features/preview-mode).
- `NEXT_PUBLIC_STRAPI_API_URL` should be set as `http://localhost:1337` (no trailing slash).

Finally, run Next in development mode.

```sh
yarn install
yarn dev
```

You can view full frontend documentation on the [front directory Readme](/front/README.md).

## Deploy this starter

Let's see how you can build your own website using this starter. We're going to publish your fork of this starter on Heroku and Vercel.

### Deploy Strapi on Heroku

[Create a Heroku account](https://signup.heroku.com/) if you don't have one already. Then, from your dashboard, create a new Heroku app.

![screen-heroku-create-app](medias/screen-heroku-create-app.png)

Then select GitHub as the deployment method and find your repository.

![screen-heroku-github-deploy](medias/screen-heroku-github-deploy.png)

Start by creating a Cloudinary account if you don't have one. We'll use it to host the medias uploaded in Strapi. You can find your credentials on the [Cloudinary console](https://cloudinary.com/console/settings/security).

We now need to do some configuration in Heroku. In the settings tab, reveal your Config Vars and enter the following:

- `PROJECT_PATH`: set "back", since it's the path of our Strapi project within the repo
- `CLOUDINARY_CLOUD_NAME`: the cloud name of your Cloudinary account
- `CLOUDINARY_API_KEY`: the API key of your Cloudinary account
- `CLOUDINARY_API_SECRET`: the API secret of your Cloudinary account
- `ADMIN_JWT_SECRET`: a random token for security reasons

On the same page, let's set up our buildpacks. We'll use the subdir buildpack, that you can add using this URL: [https://github.com/timanovsky/subdir-heroku-buildpack](https://github.com/timanovsky/subdir-heroku-buildpack) . Then add the official Node.js buildpack. Make sure they are in this order: subdir first, Node second.

Finally, let's setup a database. In the Resources tab, search for the "Heroku Postgres" addon, and select the free tier. And that's it – we now have a Postgres database linked to our project.

We'll now need the Heroku CLI, so [install it](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) if you don't have it already. Then run `heroku login` to make sure you are authenticated. To import the dummy content we have prepared, run this command:

```sh
heroku pg:backups:restore 'https://cdn.jsdelivr.net/gh/strapi/strapi-starter-next-corporate@latest/data.dump' DATABASE_URL -a my-heroku-app
```

Remember to replace my-heroku-app by the name of your app on Heroku, but leave the rest unchanged. We have now imported a Postgres backup.

Everything is now set up for the backend, we can actually start it. On the Heroku Deploy tab, click on "Deploy Branch". You can also enable automatic deploys if you want. Wait for the app to compile then click on "Open app". You should see your Strapi app!

Go to the /admin path no Strapi and create an admin user. You now have access to the Strapi admin.

### Deploy Next on Vercel

Let's deploy our frontend on Vercel. Since it's a statically generated site, we could also host it on Netlify, Amazon S3, or any other CDN. But we'll only cover Vercel in this guide.

Create a Vercel account and go to the [import page](https://vercel.com/import). Select "Import Git Repository", and paste the URL of your repo. Then, select the front directory as the root of our website.

![screen-vercel-directory](medias/screen-vercel-directory.png)

Then, in the "Environment Variables" section of the form, add the following:

- `NEXT_PUBLIC_STRAPI_API_URL`: the URL of your Strapi app on Heroku (without the trailing slash)
- `PREVIEW_SECRET`: a random token that you can chose. It will be used to access Next's preview mode.

![screen-vercel-env](medias/screen-vercel-env.png)

Then click on Deploy and wait for the app to build. Your site should now be live!

![screen-vercel-success.png](medias/screen-vercel-success.png)

There's still one more thing necessary to enable the preview mode. Go back to your Config Vars on Heroku, and add these:

- `FRONTEND_URL`: the URL of your Next frontend (without the trailing slash)
- `FRONTEND_PREVIEW_SECRET`: the secret key you entered in Vercel earlier

### Automatic builds with webhooks

We're using Next's static generation for our frontend. This means we need to trigger new builds when the content changes in Strapi. We'll use webhooks to do this automatically.

We first need to create a Deploy Hook in Vercel. In your project's settings, go to the end of the Git Integration tab. Name your hook however you want, but make sure you link it to your master branch.

![screen-vercel-webhook](medias/screen-vercel-webhook.png)

Then copy the generated URL and open your Strapi admin in production. In the settings tab, open Webhooks and paste the hook URL. Make sure you check all events to trigger build after every change.

![screen-strapi-webhook](medias/screen-strapi-webhook.png)

Now everytime we make a change in Strapi, Vercel creates a new build!

## Customize your corporate site

To edit this website, you'll need to run both the frontend and the backend in your development environment.

### Adding Sections

We have built sections for you, but you will likely want to add more to fit your needs. Follow these steps:

- Create a new component in Strapi in the "sections" category
- In the Content-Types Builder, open the Pages collection and check your new section on the `contentSections` field.
- Create a React component that takes a `data` prop in `/front/components/sections`
- To link your Strapi section to this React component, open `/front/components/sections.js`, and add an entry to the `sectionComponents` object.

### Custom theme

We use Tailwind CSS for styling. To modify your page's look, you can edit the theme in `/front/tailwind.config.js`. Read the [Tailwind docs](https://tailwindcss.com/docs/theme/) to view all the changes you can make. For example, you can change the primary color like this:

```js
const { colors } = require(`tailwindcss/defaultTheme`);

module.exports = {
  theme: {
    extend: {
      colors: {
        primary: colors.green,
      },
    },
  },
};

```
