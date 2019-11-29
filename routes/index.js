const allRoutes = require('express').Router();
const sysRoutes = require('../modules/endpoints/rating.routes');

allRoutes.use(sysRoutes);

module.exports = allRoutes;