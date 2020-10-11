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
      <div class="col-sm-6 g-mb-50 g-mb-0--lg">
      	<video autoplay="true" id="videoElement" class="u-shadow-v24 g-bg-white rounded g-pa-20"></video>
      </div>
      <div class="col-sm-6 g-mb-50 g-mb-0--lg" id="interviewResults">
		<div class="row" id="resultsTableContainer">
		</div>
	  </div>
    </div>
  </div>
</section>

<cfinclude template="./templates/footer.cfm">

<script>
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

$(document).ready(function()
{
	$("#interviewResults").hide();
	var pageReloader;
	$.ajax({url: "/cf/startRealCall.cfm", success: function(result)
		{
			$("#interviewSelection").hide();
			$("#interviewResults").show();
			pageReloader = setInterval(reloadTable, 2000);
  		}});
});

function reloadTable()
{
	$("#resultsTableContainer").load('/resultsTable.cfm');
}

function loadDetails(id)
{
	window.open('/resultsDetails.cfm?id=' + id, "detailsWindow", "width=800,height=800","yes");
}

</script>