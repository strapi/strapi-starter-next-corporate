# Strapi Starter Next Corporate Site

This starter is the recommended way to build a corporate site. It features:

- Pages creation within Strapi, no code necessary
- Fully flexible page structure: design the pages you want using UI Sections
- 8 UI Sections out of the box: Hero, RichText, LargeVideo, Testimonials, Pricing, BottomActions, FeatureRows, FeatureColumns
- Easy to theme with Tailwind
- Static site generation with Next
- An integrated Preview Mode, to view your pages on a private URL before publishing them

## Deploy this starter

Let's see how you can build your own website using this starter. We're going to fork this repository, then publish it on Heroku and Vercel.

Start by forking this GitHub repository. You can also download it as a zip, then publish it on your own GitHub account. The goal is to get a repository that you own, where you'll be able to make changes later.

### Deploy Strapi on Heroku

[Create a Heroku account](https://signup.heroku.com/) if you don't have one already. Then, from your dashboard, create a new Heroku app.

![screen-heroku-create-app](medias/screen-heroku-create-app.png)

Then select GitHub as the deployment method, and connect the fork that we just created.

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
heroku pg:backups:restore '<https://res.cloudinary.com/next-corporate-site/raw/upload/v1595595596/postgres_dumps/strapi_starter_next_corporate_site_2_ajhvrw.dump>' DATABASE_URL -a my-heroku-app

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
- `PREVIEW_SECRET`: the secret key you entered in Vercel earlier

## Customize your corporate site

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
        primary: colors.indigo,
      },
    },
  },
};

```
