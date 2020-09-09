FROM node:14.9-alpine as BUILD

# Create Directory
WORKDIR /nuxt
ADD . /nuxt/

# Install Packages
RUN yarn
RUN yarn generate

# Static Server Build

FROM sickp/alpine-nginx as SERVER
COPY --from=BUILD /nuxt/dist /etc/nginx/html
