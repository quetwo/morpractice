<cfinclude template="./templates/header.cfm"> 
    <!-- Login & Signup -->
    <section class="u-bg-overlay g-bg-pos-top-center g-bg-img-hero g-bg-black-opacity-0_3--after g-py-100" style="background-image: url(../../assets/img-temp/1920x1080/img24.jpg);">
      <div class="container u-bg-overlay__inner">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-lg-8">
            <!-- Heading -->
            <h1 class="g-color-white text-uppercase mb-4">Login or register an account</h1>
            <div class="d-inline-block g-width-35 g-height-2 g-bg-white mb-4"></div>
            <p class="lead g-color-white">We are happy you are joining us.</p>
            <!-- End Heading -->
          </div>
        </div>

        <div class="row justify-content-center align-items-center no-gutters">
          <div class="col-lg-5 g-bg-teal g-rounded-left-5--lg-up">
            <div class="g-pa-50">
              <!-- Form -->
              <cfform name="InputTypeButtonTest" method="post" format="html" class="g-py-15" action="/cf/authorization.cfm">
                <h2 class="h3 g-color-white mb-4">Login</h2>
                <div class="mb-4">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text g-width-45 g-brd-right-none g-brd-white g-color-white"><i class="icon-finance-067 u-line-icon-pro"></i></span>
                    </div>
                    
                    <cfinput 
                        name="UserName" 
                        type="text" 
                        class="form-control g-color-black g-brd-left-none g-brd-white g-bg-transparent g-color-white g-placeholder-white g-pl-0 g-pr-15 g-py-13"
                        placeholder="Username"
                        >
                  </div>
                </div>

                <div class="g-mb-40">
                  <div class="input-group rounded">
                    <div class="input-group-prepend">
                      <span class="input-group-text g-width-45 g-brd-right-none g-brd-white g-color-white"><i class="icon-communication-062 u-line-icon-pro"></i></span>
                    </div>
                    <cfinput 
                        name="password"
                        type="password" 
                        class="form-control g-color-black g-brd-left-none g-brd-white g-bg-transparent g-color-white g-placeholder-white g-pl-0 g-pr-15 g-py-13"
                        placeholder="Password"
                        >
                  </div>
                </div>

                <div class="g-mb-60">
                  <cfinput 
                    name="SubmitLogin" 
                    type="submit" 
                    class="btn btn-md btn-block u-btn-primary rounded text-uppercase g-py-13"
                    value="Login"
                    >
                </div>

                <div class="text-center g-pos-rel pb-2 g-mb-60">
                  <div class="d-inline-block w-100 g-height-1 g-bg-white"></div>
                  <span class="u-icon-v2 u-icon-size--lg g-brd-white g-color-white g-bg-teal g-font-size-default rounded-circle text-uppercase g-absolute-centered g-pa-24">OR</span>
                </div>

                <button class="btn btn-block u-btn-facebook rounded text-uppercase g-py-13 g-mb-15" type="button">
                  <i class="mr-3 fa fa-facebook"></i>
                  <span class="g-hidden-xs-down">Login with</span> Facebook
                </button>
                <button class="btn btn-block u-btn-twitter rounded text-uppercase g-py-13" type="button">
                  <i class="mr-3 fa fa-twitter"></i>
                  <span class="g-hidden-xs-down">Login with</span> Twitter
                </button>
              </cfform>
              <!-- End Form -->
            </div>
          </div>

          <div class="col-lg-5 g-bg-white g-rounded-right-5--lg-up">
            <div class="g-pa-50">
              <!-- Form -->
              <cfform name="Signup" method="post" format="html" class="g-py-15" action="/cf/signUp.cfm">
                <h2 class="h3 g-color-black mb-4">Signup</h2>
                <div class="mb-4">
                  <div class="input-group rounded">
                    <div class="input-group-prepend">
                      <span class="input-group-text g-width-45 g-brd-right-none g-brd-gray-light-v4 g-color-gray-dark-v5"><i class="icon-finance-128 u-line-icon-pro"></i></span>
                    </div>
                    <cfinput 
                        name="name" 
                        type="text"
                        class="form-control g-color-black g-brd-left-none g-bg-white g-bg-white--focus g-brd-gray-light-v4 g-pl-0 g-pr-15 g-py-13"
                        placeholder="Your name"
                        >
                  </div>
                </div>

                <div class="mb-4">
                  <div class="input-group rounded">
                    <div class="input-group-prepend">
                      <span class="input-group-text g-width-45 g-brd-right-none g-brd-gray-light-v4 g-color-gray-dark-v5"><i class="icon-finance-067 u-line-icon-pro"></i></span>
                    </div>
                    <cfinput 
                        name="userName" 
                        type="text"
                        class="form-control g-color-black g-brd-left-none g-bg-white g-bg-white--focus g-brd-gray-light-v4 g-pl-0 g-pr-15 g-py-13"
                        placeholder="User name"
                        >
                  </div>
                </div>

                <div class="mb-4">
                  <div class="input-group rounded">
                    <div class="input-group-prepend">
                      <span class="input-group-text g-width-45 g-brd-right-none g-brd-gray-light-v4 g-color-gray-dark-v5"><i class="icon-communication-062 u-line-icon-pro"></i></span>
                    </div>
                    <cfinput 
                        name="email" 
                        type="text"
                        class="form-control g-color-black g-brd-left-none g-bg-white g-bg-white--focus g-brd-gray-light-v4 g-pl-0 g-pr-15 g-py-13"
                        placeholder="Your email"
                        >
                  </div>
                </div>


                <div class="mb-4">
                  <div class="input-group rounded">
                    <div class="input-group-prepend">
                      <span class="input-group-text g-width-45 g-brd-right-none g-brd-gray-light-v4 g-color-gray-dark-v5"><i class="icon-phone u-line-icon-pro"></i></span>
                    </div>
                    <cfinput 
                        name="phone" 
                        type="text"
                        class="form-control g-color-black g-brd-left-none g-bg-white g-bg-white--focus g-brd-gray-light-v4 g-pl-0 g-pr-15 g-py-13"
                        placeholder="Your phone number"
                        >
                  </div>
                </div>

                <div class="mb-4">
                  <div class="input-group rounded">
                    <div class="input-group-prepend">
                      <span class="input-group-text g-width-45 g-brd-right-none g-brd-gray-light-v4 g-color-gray-dark-v5"><i class="icon-media-094 u-line-icon-pro"></i></span>
                    </div>
                    <cfinput 
                        name="password" 
                        type="password"
                        class="form-control g-color-black g-brd-left-none g-bg-white g-bg-white--focus g-brd-gray-light-v4 g-pl-0 g-pr-15 g-py-13"
                        placeholder="Password"
                        >
                  </div>
                </div>

                <div class="mb-1">
                  <label class="form-check-inline u-check g-color-gray-dark-v5 g-font-size-12 g-pl-25 mb-2">
                    <input class="g-hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox">
                    <div class="u-check-icon-checkbox-v6 g-absolute-centered--y g-left-0">
                      <i class="fa" data-check-icon="&#xf00c"></i>
                    </div>
                    I accept the <a href="#">Terms and Conditions</a>
                  </label>
                </div>

                <div class="mb-3">
                  <label class="form-check-inline u-check g-color-gray-dark-v5 g-font-size-12 g-pl-25 mb-2">
                    <input class="g-hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox">
                    <div class="u-check-icon-checkbox-v6 g-absolute-centered--y g-left-0">
                      <i class="fa" data-check-icon="&#xf00c"></i>
                    </div>
                    Subscribe to our newsletter
                  </label>
                </div>
                <cfinput 
                    name="SubmitLogin" 
                    type="submit" 
                    class="btn btn-md btn-block u-btn-primary rounded text-uppercase g-py-13"
                    value="Login"
                    >
              </cfform>
              <!-- End Form -->
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Login & Signup -->

    <!-- Footer -->
    <div id="contacts-section" class="g-bg-black-opacity-0_9 g-color-white-opacity-0_8 g-py-60">
      <div class="container">
        <div class="row">
          <!-- Footer Content -->
          <div class="col-lg-3 col-md-6 g-mb-40 g-mb-0--lg">
            <div class="u-heading-v2-3--bottom g-brd-white-opacity-0_8 g-mb-20">
              <h2 class="u-heading-v2__title h6 text-uppercase mb-0">About Us</h2>
            </div>

            <p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
          </div>
          <!-- End Footer Content -->

          <!-- Footer Content -->
          <div class="col-lg-3 col-md-6 g-mb-40 g-mb-0--lg">
            <div class="u-heading-v2-3--bottom g-brd-white-opacity-0_8 g-mb-20">
              <h2 class="u-heading-v2__title h6 text-uppercase mb-0">Latest Posts</h2>
            </div>

            <article>
              <h3 class="h6 g-mb-2">
            <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">Incredible template</a>
          </h3>
              <div class="small g-color-white-opacity-0_6">May 8, 2017</div>
            </article>

            <hr class="g-brd-white-opacity-0_1 g-my-10">

            <article>
              <h3 class="h6 g-mb-2">
            <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">New features</a>
          </h3>
              <div class="small g-color-white-opacity-0_6">June 23, 2017</div>
            </article>

            <hr class="g-brd-white-opacity-0_1 g-my-10">

            <article>
              <h3 class="h6 g-mb-2">
            <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">New terms and conditions</a>
          </h3>
              <div class="small g-color-white-opacity-0_6">September 15, 2017</div>
            </article>
          </div>
          <!-- End Footer Content -->

          <!-- Footer Content -->
          <div class="col-lg-3 col-md-6 g-mb-40 g-mb-0--lg">
            <div class="u-heading-v2-3--bottom g-brd-white-opacity-0_8 g-mb-20">
              <h2 class="u-heading-v2__title h6 text-uppercase mb-0">Useful Links</h2>
            </div>

            <nav class="text-uppercase1">
              <ul class="list-unstyled g-mt-minus-10 mb-0">
                <li class="g-pos-rel g-brd-bottom g-brd-white-opacity-0_1 g-py-10">
                  <h4 class="h6 g-pr-20 mb-0">
                <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">About Us</a>
                <i class="fa fa-angle-right g-absolute-centered--y g-right-0"></i>
              </h4>
                </li>
                <li class="g-pos-rel g-brd-bottom g-brd-white-opacity-0_1 g-py-10">
                  <h4 class="h6 g-pr-20 mb-0">
                <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">Portfolio</a>
                <i class="fa fa-angle-right g-absolute-centered--y g-right-0"></i>
              </h4>
                </li>
                <li class="g-pos-rel g-brd-bottom g-brd-white-opacity-0_1 g-py-10">
                  <h4 class="h6 g-pr-20 mb-0">
                <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">Our Services</a>
                <i class="fa fa-angle-right g-absolute-centered--y g-right-0"></i>
              </h4>
                </li>
                <li class="g-pos-rel g-brd-bottom g-brd-white-opacity-0_1 g-py-10">
                  <h4 class="h6 g-pr-20 mb-0">
                <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">Latest Jobs</a>
                <i class="fa fa-angle-right g-absolute-centered--y g-right-0"></i>
              </h4>
                </li>
                <li class="g-pos-rel g-py-10">
                  <h4 class="h6 g-pr-20 mb-0">
                <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">Contact Us</a>
                <i class="fa fa-angle-right g-absolute-centered--y g-right-0"></i>
              </h4>
                </li>
              </ul>
            </nav>
          </div>
          <!-- End Footer Content -->

          <!-- Footer Content -->
          <div class="col-lg-3 col-md-6">
            <div class="u-heading-v2-3--bottom g-brd-white-opacity-0_8 g-mb-20">
              <h2 class="u-heading-v2__title h6 text-uppercase mb-0">Our Contacts</h2>
            </div>

            <address class="g-bg-no-repeat g-font-size-12 mb-0" style="background-image: url(../../assets/img/maps/map2.png);">
          <!-- Location -->
          <div class="d-flex g-mb-20">
            <div class="g-mr-10">
              <span class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-color-white-opacity-0_6">
                <i class="fa fa-map-marker"></i>
              </span>
            </div>
            <p class="mb-0">795 Folsom Ave, Suite 600, <br> San Francisco, CA 94107 795</p>
          </div>
          <!-- End Location -->

          <!-- Phone -->
          <div class="d-flex g-mb-20">
            <div class="g-mr-10">
              <span class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-color-white-opacity-0_6">
                <i class="fa fa-phone"></i>
              </span>
            </div>
            <p class="mb-0">(+123) 456 7890 <br> (+123) 456 7891</p>
          </div>
          <!-- End Phone -->

          <!-- Email and Website -->
          <div class="d-flex g-mb-20">
            <div class="g-mr-10">
              <span class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-color-white-opacity-0_6">
                <i class="fa fa-globe"></i>
              </span>
            </div>
            <p class="mb-0">
              <a class="g-color-white-opacity-0_8 g-color-white--hover" href="mailto:info@htmlstream.com">info@htmlstream.com</a>
              <br>
              <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">www.htmlstream.com</a>
            </p>
          </div>
          <!-- End Email and Website -->
        </address>
          </div>
          <!-- End Footer Content -->
        </div>
      </div>
    </div>
    <!-- End Footer -->

    <!-- Copyright Footer -->
    <footer class="g-bg-gray-dark-v1 g-color-white-opacity-0_8 g-py-20">
      <div class="container">
        <div class="row">
          <div class="col-md-8 text-center text-md-left g-mb-10 g-mb-0--md">
            <div class="d-lg-flex">
              <small class="d-block g-font-size-default g-mr-10 g-mb-10 g-mb-0--md">2020 &copy; All Rights Reserved.</small>
              <ul class="u-list-inline">
                <li class="list-inline-item">
                  <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">Privacy Policy</a>
                </li>
                <li class="list-inline-item">
                  <span>|</span>
                </li>
                <li class="list-inline-item">
                  <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">Terms of Use</a>
                </li>
                <li class="list-inline-item">
                  <span>|</span>
                </li>
                <li class="list-inline-item">
                  <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">License</a>
                </li>
                <li class="list-inline-item">
                  <span>|</span>
                </li>
                <li class="list-inline-item">
                  <a class="g-color-white-opacity-0_8 g-color-white--hover" href="#">Support</a>
                </li>
              </ul>
            </div>
          </div>

          <div class="col-md-4 align-self-center">
            <ul class="list-inline text-center text-md-right mb-0">
              <li class="list-inline-item g-mx-10" data-toggle="tooltip" data-placement="top" title="Facebook">
                <a href="#" class="g-color-white-opacity-0_5 g-color-white--hover">
                  <i class="fa fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item g-mx-10" data-toggle="tooltip" data-placement="top" title="Skype">
                <a href="#" class="g-color-white-opacity-0_5 g-color-white--hover">
                  <i class="fa fa-skype"></i>
                </a>
              </li>
              <li class="list-inline-item g-mx-10" data-toggle="tooltip" data-placement="top" title="Linkedin">
                <a href="#" class="g-color-white-opacity-0_5 g-color-white--hover">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
              <li class="list-inline-item g-mx-10" data-toggle="tooltip" data-placement="top" title="Pinterest">
                <a href="#" class="g-color-white-opacity-0_5 g-color-white--hover">
                  <i class="fa fa-pinterest"></i>
                </a>
              </li>
              <li class="list-inline-item g-mx-10" data-toggle="tooltip" data-placement="top" title="Twitter">
                <a href="#" class="g-color-white-opacity-0_5 g-color-white--hover">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item g-mx-10" data-toggle="tooltip" data-placement="top" title="Dribbble">
                <a href="#" class="g-color-white-opacity-0_5 g-color-white--hover">
                  <i class="fa fa-dribbble"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
    <!-- End Copyright Footer -->
    <a class="js-go-to u-go-to-v1" href="#" data-type="fixed" data-position='{
     "bottom": 15,
     "right": 15
   }' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
      <i class="hs-icon hs-icon-arrow-top"></i>
    </a>
<cfinclude template="./templates/footer.cfm"> 