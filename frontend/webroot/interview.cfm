<cfif !session.userManager.isAuthenticated()><cflocation url="/" addtoken="false"></cfif>
<cfinclude template="./templates/header.cfm">

<section class="g-bg-secondary g-py-100" id="interviewSelection">
	<div class="container>">

		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-4">
				<div class="card bg-light border-dark">
					<div class="card-header border-dark">Practice Interviewing by yourself</div>
					<div class="card-body">
						<p class="card-text">Work with our AI platform to see how you do on a variety of questions and answers.</p>
						<a href="#" class="btn btn-primary" id="startPracticing">Self-Interview</a>
					</div>
				</div>
			</div>

			<div class="col-sm-1"></div>

			<div class="col-sm-4">
				<div class="card bg-light border-dark">
					<div class="card-header border-dark">Practice Interviewing with somebody</div>
					<div class="card-body">
						<p class="card-text">Pair up with a volunteer and get live feedback on how you are doing.</p>
						<a href="#" class="btn btn-primary">Paired Interview</a>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>

<section class="g-bg-secondary g-py-100" id="interviewResults">
	<div class="container">
		<div class="row" id="resultsTableContainer">


		</div>
	</div>
</section>

<cfinclude template="./templates/footer.cfm">

<script>
$( "#startPracticing" ).click(function(e)
{
	e.preventDefault();
	$.ajax({url: "/cf/startCall.cfm", success: function(result)
		{
			$("#interviewSelection").hide();
			$("#interviewResults").show();
			pageReloader = setInterval(reloadTable, 2000);
  		}});
});

$(document).ready(function()
{
	$("#interviewResults").hide();
	var pageReloader;
});

function reloadTable()
{
	$("#resultsTableContainer").load('/resultsTable.cfm');
}


</script>