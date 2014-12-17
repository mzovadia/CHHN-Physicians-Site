### The Christ Hospital Health Network
# Documentation

-------------------------------------

Templates:
----------

1. [Home](/index.html)
2. [Community](/community.html)
3. [Community](/community-3-column.html)
4. [Location](/location.html)
5. [Physician Search](/physician-search.html)
6. [Physician Details](/physician-details.html)
7. [Interior Content](/interior-content.html)
8. [Interior Content](/interior-content-3-column.html)
9. [Interior Content](/interior-content-full-width.html)
10.	[Interior Content](/press-release.html)
11. [Contact Us](/contact.html)
12. [Contact Us Submitted](/contact-submitted.html)
13. [Physician Search Landing](/physician-landing.html)
14. [Interior Content - No Sidebar](/interior-content-full.html)
15. [About The Network](/network.html)
16. [Services Landing](/services.html)
17. [Services Heart & Vascular](/services-heart-vascular.html)
18. [Community Detail - Video](/community-detail-video.html)
19. [Community Detail - News](/community-detail-news.html)
20. [Community Detail - Event](/community-detail-event.html)
21. [Events - Calendar](/events-calendar.html)
22. [Events - List](/events-list.html)
23. [Events - Detail](/events-detail.html)
24. [Residency 1](/residency-1.html)
25. [Residency 2](/residency-2.html)
26. [EBSCO](/ebsco.html)
27. [Location Search Landing](/location-landing.html)
28. [Location Search](/location-search.html)

Folder Structure
----------------

```
.
├── assets/
|   ├── css/
|   |   └── main.css
|   ├── fonts/
|   |   └── ... (.ttf, .woff, .eot, .svg)
|   ├── img/
|   |   └── ... (.png, .jpg)
|   └── less/
|       ├── mixins/
|       |   └── ... (.less)
|       ├── modules/
|       |   └── ... (.less)
|       ├── partials/
|       |   └── ... (.less)
|       ├── vendor/
|       |   └── ... (.less)
|       └── main.less
├── js/
|   ├── vendor/
|   |   └── ... (.js)
|   └── app.js
├── index.html
├── index.jpg
├── ... (.html)
└── ... (.jpg)
```

### assets/

Static content used in site presentation

* _css/_: Contains a single stylesheet from compiled LESS source
* _fonts/_: Contains web fonts and icon fonts (generated using Fontastic app)
* _img/_: Contains site imagery
* _less/_: Source styles using LESS syntax. All file names should be prepended with underscore unless used as source by LESS compiler.
  * _mixins/_: Re-usable LESS functions. Not compiled into CSS unless explicitly referenced.
  * _modules/_: Common site components
  * _partials/_: Individual layout and page pieces. Unlike modules, these are not typically reused.
  * _vendor/_: Third-party LESS libraries
  * _main.less_: Style entry-point (compile source). Responsible for importing required LESS files.

### js/

JavaScripts, third-party plugins, and polyfills.

* _vendor/_: Contains third-party plugins and polyfills
* _app.js_: Page initialization script. Primarily responsible for invoking third-party plugins. Written using the ["Module Pattern"](http://addyosmani.com/resources/essentialjsdesignpatterns/book/#modulepatternjavascript), with initialization based on ["DOM-ready execution"](http://viget.com/inspire/extending-paul-irishs-comprehensive-dom-ready-execution).

-------------------------------------

Build Notes
-----------

### Font Usage

* DroidSans-Bold
  * Used for all heading tags (<h#>) and various labels
* DroidSans
  * Used for titles and various labels
* Tahoma
  * Used for standard elements and copy

-------------------------------------

Release Notes
-------------

### 01/03/2013

This release includes cut-up of "Physicians" and "Community" home page tabs.

Change list:

* Split tab-specific content in `tabbed_display.html` into separate `tabs/{tab_name}.html` files
* Split tab-specific styles in `_tabbed_display.less` into separate `tabs/{tab_name}.less` files (and corresponding adaptive stylesheet)
* Add class "links-column" to element with class "patient-quick-links" in `tabs/patients.html`
* Add class "dive-deeper-column" to element with class "find-physician" in `tabs/patients.html`
* Add class "content-column" to element with class "content-column" in `tabs/patients.html`
* Rename class "all-patient-resources" to "all-resources"
* In element with class "content-column" in tabs/patients.html, swap `<h1>` and `<h2>` (i.e. rename `<h1>` to `<h2>`, rename `<h2>` to `<h1>`)

Miscellaneous updates to following LESS files:

* `partials/home/_tabbed_display.less`
* `partials/physicians/physician-details/_locations.less`
* `modules/_form.less`

### 11/27/2013

This release adds 2 new templates: Location Searching Landing and Location Search

Change list:

* Added "related-information-break" class to all horizontal rules (`<hr>`) located immediately before related-information. These are now hidden on mobile devices.
* Add Physician Search "physician-search-options" class (to "search-options") and "physician-search-results" class (to "search-results")
* Changed physician search "Search Results" label from `<header>` to `<a>` tag
* Added "body-search" class to Physician Search template
* Added "radius-selection" class to Physician Search navigation radius dropdown

### 11/06/2013

This release adds 1 new template: EBSCO

Change list:

* Added disclaimer div styling to interior.less for the grey box disclaimer
* Added content-image class to interior@768.less that gives images 100 percent width on mobile

### 11/06/2013

This release adds 5 new templates.

Change list:

* Modified Contact Us dropdown styling to remove visible border of dropdown list
* Updated left navigation tertiary styles.
* Updated height on main logo for IE.  It was getting cut off.

### 10/30/2013

This release adds 7 new templates. These templates include Interior Content - No Sidebar, About the Network, Services Landing, Services Heart & Vascular, and Community Detail - Video, News, Event details.

Change list:

* Modified events item blocks in community page to reflect the detail page.
* Added general interior checkbox styling
* Added h4 styling for a Droid-Regular orange
* Change community page ".filter-nav" class to ".social-filter-nav" (generic for re-use on community detail pages)
* Apply ".grid-context" class to ".social-filter-nav" for community page, or ".no-grid-context" for any other class using social grid navigation
* 'About the Network': Change "top50.jpg" to "top50.png", "best-hospital.jpg" to "best-hospital.png", and wrap "full-with-image" header image with ".corner-cut" class div

### 10/24/2013

This release adds the Physician Search Landing page to the package.

Change list:

* Added "cross" list-style to page-content ul

### 10/23/2013

This release adds the Generic Content and Contact Us interior pages to the package.

Change list:

* Updated font sizing and line height (13px / 130% respectively) on interior page content to be consistant with the designs.
* Modified news and community items to always have a colored bar above them even without an image
* Abstracted interior "resources" and "related information" styling to interior.less since it is used on multiple interior pages
* Added option for a dark grey resource-button
* Added general styling to interior.less to normalize padding and headings (h1, h2, h3) throughout all interior pages
* Added tertiary navigation scheme to the left navigation on interior pages


### 10/15/2013

This release adds the Physician Search and Physicain Detail interior pages to the package.

Change list:

* Changed styles for "li" elements on location page
* Added additional "dropdown" functionatlity to app.js
* Fixed spelling in CSS.  Changed "exerpt" to "excerpt"
* Various other LESS/CSS changes

### 10/09/2013

This release adds the Community and The Christ Hospital Location interior pages to the package.  ALso included are the mobile builds for each, a rework of the homepage navigation, and the inclusion of the mobile navigation flyout.  As this is one of the most complex pieces of the site, the mobile flyout navigation will likely be tweaked a good deal over the comming week.

Change list:

* Add aria-hidden attribute to top navigation MyChart button, and wrap label text with span
* Add flyout menu as immediate child of body, moving all other elements into ".page" wrapper element
* Change footer logo from using <img> element to using background-image
* Remove mobile hero content marked using "<!-- START MOBILE CONTENT HEADER -->"
* Move home page assets to /home/ subfolder in image folder
* Fix conditional IE comment in master layout for IE10 placeholder polyfill (lt IE 10)

### 10/02/2013

This release builds upon the previous, and includes adaptive breakpoints and styles necessary to render the mobile home page. All previous stylesheets and JavaScripts should be considered modified and therefore should be replaced with those contained in this release. If it is necessary to migrate previous HTML markup to this newer release, refer to the list of markup changes below:

* Replaced logo <img> element (set through CSS) with span
* Replaced HTML5 shim with Modernizr
* Added "Or" line under "Find a Physician"
* Replaced "icon_play.png"
* Added mobile markup for "All Patient Resources" in "Patients" tab
* Switched .heading-with-sub h1 & h2

### 9/26/2013

This release contains the initial transfer of home page HTML, LESS/CSS, and JavaScript to Cardinal Solutions.  As this is the first release, all items are subject to change.

We are very far along on the mobile version of the home page, and are on target to deliver that release on Wednesday, October 2nd.  As we continue to build interior page and mobile templates, changes are likely to occur to previously delivered items. We will provide documentation regarding any major changes at each release.

We fully expect this process to be a collaborative effort.  If you have any questions, please feel free to ask.  Also, we would like to have a meeting in the near future with to review this hand-off, as well as the overall process for the remainder of the project.

Items delivered in this release:

* Initial documentation (will be updated on each release)
* Initial home page HTML, LESS/CSS, and JavaScript for the desktop version.
* Corresponding PDF of the developed home page design.

-------------------------------------

Contacts
--------

### US Digital Partners (513-929-4603)

* [Kevin Saffer](mailto:ksaffer@usdigitalpartners.com) - Technical Director
* [Michael Whelan](mailto:mwhelan@usdigitalpartners.com) - Senior Developer
* [Andrew Duthie](mailto:aduthie@usdigitalpartners.com) - Developer
* [Dave Whelan](mailto:dwhelan@usdigitalpartners.com) - Developer
