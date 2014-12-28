# Postgres Tools Environment

This Dockerfile builds on the official `postgres` image and replaces
the entry point with one suitable for running Postgres command-line
tools, such as `psql` (the default).

## Usage

1.  Edit the `Dockerfile` to use the same tag/branch of the `postgres`
    image as your server container, then build this image locally.

        docker build -t postgres-client .

2.  Run this image with a link to your running `postgres` container.	

        docker -it --rm --link my_pg_name:postgres postgres-client psql

     Note: `psql` is the default command and can be omitted.

## License

<p xmlns:dct="http://purl.org/dc/terms/">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="http://i.creativecommons.org/p/zero/1.0/88x31.png"
    style="border-style: none;" alt="CC0" />
  </a>
  <br />
  To the extent possible under law,
  <span rel="dct:publisher" resource="[_:publisher]">
  the person who associated CC0</span>
  with this work has waived all copyright and related or neighboring
  rights to this work.
</p>
