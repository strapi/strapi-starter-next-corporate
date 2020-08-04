module.exports = ({ env }) => {
  // Adapt config based on environment
  const environment = env('NODE_ENV');

  // Use Cloudinary in production
  if (environment === 'production') {
    return {
      upload: {
        provider: 'cloudinary',
        providerOptions: {
          cloud_name: env('CLOUDINARY_CLOUD_NAME'),
          api_key: env('CLOUDINARY_API_KEY'),
          api_secret: env('CLOUDINARY_API_SECRET'),
        },
      },
    }
  }

  // In development, we use Strapi's default local provider
  // So we don't need to specify the upload config
};
