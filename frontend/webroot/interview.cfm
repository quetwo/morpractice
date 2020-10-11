<cfinclude template="./templates/header.cfm"> 

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
</script>