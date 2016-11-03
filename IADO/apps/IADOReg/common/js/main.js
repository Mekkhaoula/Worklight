function wlCommonInit() {
	/*
	 * Use of WL.Client.connect() API before any connectivity to a MobileFirst Server is required. 
	 * This API should be called only once, before any other WL.Client methods that communicate with the MobileFirst Server.
	 * Don't forget to specify and implement onSuccess and onFailure callback functions for WL.Client.connect(), e.g:
	 *    
	 *    WL.Client.connect({
	 *    		onSuccess: onConnectSuccess,
	 *    		onFailure: onConnectFailure
	 *    });
	 *     
	 */

	// Common initialization code goes here
	//$('#submit').button().button('disable');
	var query = {};
	$('#submit').click(function() {
		//alert($("#cne").val());
		var cne = $("#cne").val();
		if (cne == "") {
			alert("Veuillez indiquer un CNE valide !");

			return false;
		}
	});

	$('#submit1').click(function() {
		var bool = true;
		if ($("#cin").val() != "") {
			query.cin = $("#cin").val();
		} else {
			bool = false;
		}

		if ($("#nom").val() != "") {
			query.nom = $("#nom").val();
		} else {
			bool = false;
		}

		if ($("#prenom").val() != "") {
			query.prenom = $("#prenom").val();
		} else {
			bool = false;
		}

		if ($("#date").val() != "") {
			query.dn = $("#date").val();
		} else {
			bool = false;
		}

		if ($("#email").val() != "") {
			query.email = $("#email").val();
		} else {
			bool = false;
		}
		if ($("#address").val() != "") {
			query.address = $("#address").val();
		} else {
			bool = false;
		}

		if (!bool) {
			return false;
		}

	});

	$('#submit2')
			.click(
					function() {
						var bool = true;
						if ($("#bac").val() != "") {
							query.bac = $("#bac").val();
						} else {
							bool = false;
						}

						if ($("#mb").val() != "") {
							query.mb = $("#mb").val();
						} else {
							bool = false;
						}

						if ($("#bac2").val() != "") {
							query.bac2 = $("#bac2").val();
						} else {
							bool = false;
						}

						if ($("#mb2").val() != "") {
							query.mb2 = $("#mb2").val();
						} else {
							bool = false;
						}

						if ($("#bac3").val() != "") {
							query.bac3 = $("#bac3").val();
						} else {
							bool = false;
						}
						if ($("#mb3").val() != "") {
							query.mb3 = $("#mb3").val();
						} else {
							bool = false;
						}

						var queryData = JSON.parse(JSON.stringify(query));
						var a = "ee";

						var invocationData = {
							adapter : 'inscAdapt',
							procedure : 'add',
							parameters : [ $("#cne").val(), $("#cin").val(),
							               $("#nom").val(),
							               $("#prenom").val(),$("#email").val(),$("#date").val(),$("#address").val(),
							               $("#bac").val(),
							               $("#mbac").val(),
							               $("#bac2").val(),
							               $("#mb2").val(),
							               $("#bac3").val(),
							               $("#mb3").val()]
						};

						WL.Client.invokeProcedure(invocationData, {
							onSuccess : loadSQLQueerySuccess,
							onFailure : loadSQLQueeryFailure
						});

						function loadSQLQueerySuccess(result) {
							alert(JSON
									.stringify(result.invocationResult.resultSet[0].UserName));
							WL.Logger.debug("Retrieve success"
									+ JSON.stringify(result));
							displayFeeds(result.invocationResult.resultSet);

						}

						function loadSQLQueeryFailure(result) {
							WL.Logger.error("Retrieve failure");
						}

						alert($("#cne").val())
					});
}
