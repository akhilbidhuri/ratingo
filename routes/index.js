const allRoutes = require('express').Router();
const sysRoutes = require('../modules/endpoints/endpoints.routes');

allRoutes.use(sysRoutes);

module.exports = allRoutes;