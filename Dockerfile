FROM node:6

RUN npm install -g bs-platform

# Copy just the package.json first to install deps
# ADD src/package.json /app/package.json
WORKDIR /app
# RUN npm install
# RUN npm link bs-platform

# Now add source code & build
ADD app /app
# RUN yarn build

# Serve with serve ;)
# CMD ["serve", "-s", "build", "-p", "8080"]