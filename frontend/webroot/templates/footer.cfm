  </main>

  <div class="u-outer-spaces-helper"></div>


  <!-- JS Global Compulsory -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
  <script src="assets/vendor/popper.js/popper.min.js"></script>
  <script src="assets/vendor/bootstrap/bootstrap.min.js"></script>


  <!-- JS Implementing Plugins -->
  <script src="assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
  <script src="assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
  <script src="assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
  <script src="assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
  <script src="assets/vendor/chosen/chosen.jquery.js"></script>
  <script src="assets/vendor/image-select/src/ImageSelect.jquery.js"></script>
  <script src="assets/vendor/masonry/dist/masonry.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.js"></script>
  <script src="assets/vendor/slick-carousel/slick/slick.js"></script>

  <!-- JS Unify -->
  <script src="assets/js/hs.core.js"></script>
  <script src="assets/js/components/hs.header.js"></script>
  <script src="assets/js/helpers/hs.hamburgers.js"></script>
  <script src="assets/js/components/hs.scroll-nav.js"></script>
  <script src="assets/js/components/hs.go-to.js"></script>
  <script src="assets/js/components/hs.sticky-block.js"></script>
  <script src="assets/js/helpers/hs.height-calc.js"></script>
  <script src="assets/js/components/hs.carousel.js"></script>

  <!-- JS Custom -->
  <script src="assets/js/custom.js"></script>

  <!-- JS Plugins Init. -->
  <script>
    $(document).on('ready', function () {
      // initialization of carousel
      $.HSCore.components.HSCarousel.init('.js-carousel');
  
      // Header
      $.HSCore.components.HSHeader.init($('#js-header'));
      $.HSCore.helpers.HSHamburgers.init('.hamburger');
  
      // initialization of HSMegaMenu plugin
      $('.js-mega-menu').HSMegaMenu({
        event: 'hover',
        pageContainer: $('.container'),
        breakpoint: 991
      });
  
      // initialization of go to
      $.HSCore.components.HSGoTo.init('.js-go-to');
  
      $.HSCore.helpers.HSHeightCalc.init();
    });
  
    $(window).on('load', function () {
      // initialization of HSScrollNav
      $.HSCore.components.HSScrollNav.init($('#js-scroll-nav'), {
        duration: 700,
        over: $('.u-secondary-navigation')
      });
  
      // initialization of masonry.js
      $('.masonry-grid').imagesLoaded().then(function () {
        $('.masonry-grid').masonry({
          // options
          columnWidth: '.masonry-grid-sizer',
          itemSelector: '.masonry-grid-item',
          percentPosition: true
        });
      });
  
      // initialization of sticky blocks
      $.HSCore.components.HSStickyBlock.init('.js-sticky-block');
    });
  </script>

  <script>
    // Facebook Like
    window.fbAsyncInit = function () {
      // init the FB JS SDK
      FB.init({
        appId: '1972702999621713',
        status: true,
        xfbml: true,
        version: 'v2.3'
      });
      if (typeof gaSocialTracking != 'undefined') gaSocialTracking.trackFacebook();
      setTimeout(function () {
        if (typeof window.fbCallback == 'function') {
          window.fbCallback();
        }
      }, 3000); // to make sure FB was loaded
    };
    (function (d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s);
      js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    // Facebook Like
  
    // Twitter Follow
    window.twttr = (function (d, s, id) {
      var t, js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s);
      js.id = id;
      js.src = "//platform.twitter.com/widgets.js";
      fjs.parentNode.insertBefore(js, fjs);
      return window.twttr || (t = {
        _e: [], ready: function (f) {
          t._e.push(f)
        }
      });
    }(document, "script", "twitter-wjs"));
    twttr.ready(function (twttr) {
      twttr.events.bind('tweet', function (event) {
        if (typeof gaSocialTracking != 'undefined') gaSocialTracking.trackTwitter();
      });
    });
    // Twitter Follow
  </script>







</body>

</html>
