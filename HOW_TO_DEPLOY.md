* IMPORTANT *

Create a new certificate in apache2/cert, overwriting the existing one. The existing cert will work but for obvious reasons is not acceptable in production.

## How to deploy

Build:

`docker-compose build`

and launch the server:

`docker-compose up lava-server`
