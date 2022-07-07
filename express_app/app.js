const Koa = require("koa");
const Router = require("koa-router");
const path = require('path')
const Pug = require("koa-pug");
const { User } = require("./models");
const KoaLogger = require("koa-logger");

const app = new Koa();

const initForKoa = function (koaApp) {
  koaApp.use(KoaLogger())
  new Pug({
    viewPath: path.resolve(__dirname, './views'),
    app: koaApp,
  })
};

const setupRoutesForKoa = function (koaApp) {
  const router = new Router();

  router.get("/", async (ctx, _next) => {
    await ctx.render('home');
  });

  router.get("/users", async (ctx, _next) => {
    const users = []
    for (let i = 1; i <= 100; i++) {
      const user = User.build({ name: `name${i}` })
      users.push(user)
    }
    await ctx.render('users', {
      users: users
    });
  });

  router.get("/users/db", async (ctx, _next) => {
    const users = []
    for (let i = 1; i <= 100; i++) {
      const user = await User.findByPk(i)
      users.push(user)
    }
    await ctx.render('users', {
      users: users
    });
  });

  koaApp.use(router.routes()).use(router.allowedMethods());
};

initForKoa(app);
setupRoutesForKoa(app);

module.exports = app;
