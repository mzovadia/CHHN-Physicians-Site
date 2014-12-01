var sitemap = require('./sitemap');

var render = function(template) {
    return function(req, res) {
        return res.render(template, {
            sitemap: sitemap
        });
    };
};
var express = require('express');
var auth = express.basicAuth('tch', 'tch');

module.exports = function(app, config) {
    [
        'index',
        'community',
        'community-3-column',
        'location',
        'physician-search',
        'physician-details',
        'interior-content',
        'interior-content-3-column',
        'contact',
        'contact-submitted',
        'physician-landing',
        'interior-content-full',
        'network',
        'services',
        'services-heart-vascular',
        'community-detail-video',
        'community-detail-news',
        'community-detail-event',
        'events-calendar',
        'events-list',
        'events-detail',
        'residency-1',
        'residency-2',
        'ebsco',
        'location-landing',
        'location-search'
    ].forEach(function(template) {
        app.get('/' + template + '.html', auth, render(template));
    });

    app.get('/', function(req, res) {
        res.sendfile('docs/index.html');
    });
};