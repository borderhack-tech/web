# BorderHack Web
Website for borderhack-tech.tech

## Summary
This is a basic Webpack project template for a web app written in ES6 & LESS.

This assumes you have a directory structure as follows:

```
package.json
webpack.config.js
src/
  index.js
  static/
    index.html
```


## Installation

**Install prerequisites:**

```sh
docker
npm
nodejs
```

**Install build dependencies:**

```sh
npm install
```

## Development

**Start the live-reload dev server:**

```sh
PORT=8080 npm run dev
```

Open up http://localhost:8080/webpack-dev-server/ to see your app.
The app gets reloaded as files change.


**Troubleshooting node / nodejs build issues:**

https://github.com/nodejs/node-v0.x-archive/issues/3911
* Create symlink for nodejs to node `ln -s /usr/bin/nodejs /usr/bin/node`

## Deployment Workflow

To deploy your static app, upload the contents of `build/` to a web server.
