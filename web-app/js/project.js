 $(document).ready(function(){
 $('#speclist').change(function(){
	 callSpecTitles()
	 return false
 })
 
 function callSpecTitle(params){
	 $.ajax({

		  type:"POST",
		  url:"/SpecList/specList",
		  data:params,
		  success: function(json){
								//(json);
/*
			  					if (json.error){
			  						$("#qccpremiumerror").html(json.error);
			  						$("#qccpremiumerror").show();
			  						$("#qccpremiummessage").hide();
			  					} else {
			  						$(".premiumspan").html(json.premium);
			  						$("#qccpremiummessage").show();
			  						$("#qccpremiumerror").hide();
			  					}

								$('.costCalc').find(".costForm").hide();
								$('.costCalc').find(".costThanks").hide();
								$('.costCalc').find(".costResults").show();
					  			}*/
		});	 
 }
 
 }