<footer class="page-footer">

    <!-- START NETWORK -->
    <section class="footer-network clear">
        <ul class="clear">
            <li>THE CHRIST HOSPITAL
                <br>MAIN CAMPUS
                <br>2139 Auburn Ave
                <br>Cincinnati, OH 45219
                <br>(513) 585-2000
                <br>Additional Locations
            </li>
            <li>
                <ul>
                    <li><span>Quick Links</span></li>
                    <li><a href="#">My Chart</a>
                    </li>
                    <li><a href="#">Patient Resources</a>
                    </li>
                    <li><a href="#">Pay My Bill Online</a>
                    </li>
                    <li><a href="#">Family &amp; Visitors</a>
                    </li>
                    <li><a href="#">Maps &amp; Directions</a>
                    </li>
                </ul>
            </li>
            <li>
                <ul>
                    <li><span>Administration</span></li>
                    <li><a href="#">BoardNet</a>
                    </li>
                    <li><a href="#">Physical Portal</a>
                    </li>
                    <li><a href="#">Employment</a>
                    </li>
                    <li><a href="#">Journals &amp; Publications</a>
                    </li>
                </ul>
            </li>
            <li>
                <ul>
                    <li><span>Contact Us</span></li>
                    <li><a href="#">Contact Form</a>
                    </li>
                    <li><a href="#">MyChart</a>
                    </li>
                    <li><a href="#">Nominate a Caregiver</a>
                    </li>
                    <li><a href="#">Patient Relations</a>
                    </li>
                    <li><a href="#">Phone Directory</a>
                    </li>
                </ul>
            </li>
            <li>
                <ul class="social clear">
                    <li><a href="#" class="linkedin"></a></li>
                    <li><a href="#" class="twitter"></a></li>
                    <li><a href="#" class="facebook"></a></li>
                    <li><a href="#" class="instagram"></a></li> 
                </ul>
            </li>
        </ul>
    </section>
    <!-- END NETWORK -->

</footer>

    <!-- END FOOTER -->
</div>

</div>

<!-- LOAD APPROPRIATE JQUERY FROM CDN WITH FALLBACK -->
<!--[if gte IE 9]><!-->
<script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
<!--<![endif]-->
<!--[if lt IE 9]>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<![endif]-->
<script>('jQuery' in window) || document.write(unescape("%3Cscript src='http://tchdesign.azurewebsites.net/js/vendor/jquery-1.10.2.min.js'%3E%3C/script%3E"));</script>
<!-- IE POLYFILLS -->
<!--[if lt IE 10]>
<script src="http://tchdesign.azurewebsites.net/js/vendor/jquery.placeholder.js"></script>
<![endif]-->
<!--[if lt IE 8]>
<script src="http://tchdesign.azurewebsites.net/js/vendor/IE8.js"></script>
<![endif]-->

<!-- SCRIPTS -->
<script src="http://tchdesign.azurewebsites.net/js/app.js"></script>
<script src="http://tchdesign.azurewebsites.net/js/vendor/jquery.uDropdown.js"></script>
<script src="http://tchdesign.azurewebsites.net/js/vendor/jquery.isotope.js"></script>
<script src="http://tchdesign.azurewebsites.net/js/vendor/jquery.uTabs.js"></script>
<script src="http://tchdesign.azurewebsites.net/js/vendor/jquery-accessibleMegaMenu.js"></script>

<script>
console.log(jQuery);
    $(function() {
        console.log($);
        console.log($('.mega'));
        $('.main-menu').accessibleMegaMenu({
            /* prefix for generated unique id attributes, which are required 
               to indicate aria-owns, aria-controls and aria-labelledby */
            uuidPrefix: "accessible-megamenu",

            /* css class used to define the megamenu styling */
            menuClass: "nav-menu",

            /* css class for a top-level navigation item in the megamenu */
            topNavItemClass: "nav-item",

            /* css class for a megamenu panel */
            panelClass: "sub-nav",

            /* css class for a group of items within a megamenu panel */
            panelGroupClass: "sub-nav-group",

            /* css class for the hover state */
            hoverClass: "hover",

            /* css class for the focus state */
            focusClass: "focus",

            /* css class for the open state */
            openClass: "open"
        });//.dcMegaMenu();
    });
</script>



<script src="http://tchdesign.azurewebsites.net/js/vendor/jquery.uTabs.js"></script>
