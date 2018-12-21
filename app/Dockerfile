# The Node version that we'll be running for our version of React.
# You may have to search the Node directory for a version that fits
# the version of React you're using.
FROM node:11.2.0-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh nano

# Create a work directory and copy over our dependency manifest files.
RUN mkdir /data
WORKDIR /data
# disable cache for git clone
# ARG CACHE_DATE=2016-01-01
RUN git clone https://github.com/gratcy/tax-calc.git /data/app
WORKDIR /data/app
RUN cp .env.sample .env

# If you're using yarn:
#  yarn build
RUN npm install
RUN npm install pm2@latest -g

EXPOSE 1212