<cfif !session.userManager.isAuthenticated()><cflocation url="/" addtoken="false"></cfif>
<cfinclude template="./templates/header.cfm">
<section class="g-py-100">
  <div class="container">
    <header class="text-center g-width-60x--md mx-auto g-mb-60">
      <div class="u-heading-v2-3--bottom g-brd-primary g-mb-20">
        <h2 class="h3 u-heading-v2__title g-color-gray-dark-v2 text-uppercase g-font-weight-600">Practice Live</h2>
      </div>
      <p class="lead">When MOR Practice launches you will connect here with live hiring managers to continue practicing interviews.</p>
    </header>
    <div class="row">
      <div class="col-md-12 g-mb-50 g-mb-0--lg">
      	<video autoplay="true" id="videoElement" class="u-shadow-v24 g-bg-white rounded g-pa-20"></video>
      </div>
    </div>
  </div>
</section>


<form method="post" format="html" class="g-py-15">
	<div class="g-mb-60">
    	<button id="startPracticing" value="val_1" class="btn btn-md btn-block u-btn-primary rounded text-uppercase g-py-13">Start Practicing</button>
	</div>
</form>

<cfinclude template="./templates/footer.cfm">

<script>
$( "#startPracticing" ).click(function(e) {
	e.preventDefault();
	$.ajax({url: "/cf/startCall.cfm", success: function(result){
    	$("#div1").html(result);
  	}});
});

var video = document.querySelector("#videoElement");

if (navigator.mediaDevices.getUserMedia) {
  navigator.mediaDevices.getUserMedia({ video: true })
    .then(function (stream) {
      video.srcObject = stream;
    })
    .catch(function (err0r) {
      console.log("Something went wrong!");
    });
}
</script>