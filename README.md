# Heroku Buildpack for Google Cloud SDK

This buildpack installs the Google Cloud SDK tools, and configures a service account.

If a `GCP_CREDENTIALS` env var is set, containing the service account key JSON
in plain text, it will sign in as that service account when the dyno boots.

You can install a specific version of the Google Cloud SDK tools by defining
`GOOGLE_CLOUD_SDK_VERSION`.