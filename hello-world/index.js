'use strict'

const handler = require('./function/handler');

module.exports = async (event, context) => {
    return handler(event, context);
};
