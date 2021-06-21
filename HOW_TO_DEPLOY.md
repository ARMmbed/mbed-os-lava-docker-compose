# IMPORTANT

Create a new certificate and key in apache2/cert, overwriting the existing ones. The existing cert can be used for testing but for obvious reasons is not acceptable in production or in an externally facing environment.

## How to deploy

Build:

`docker-compose build`

Launch the server:

`docker-compose up lava-server`
