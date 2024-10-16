ARG MELTANO_VERSION=3.4.2
FROM meltano/meltano:v${MELTANO_VERSION}-python3.9

WORKDIR /project

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
      # For updating heartbeat table
      jq=1.6-2.1 \
      # For updating heartbeat table & building tap-postgres
      postgresql=15+248 \
      # For building tap-postgres
      libpq-dev=15.8-0+deb12u1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./meltano.yml .
COPY plugins plugins
RUN meltano install

# Reset entrypoint defined in the base image
ENTRYPOINT []
