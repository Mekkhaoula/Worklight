/*
 *  Licensed Materials - Property of IBM
 *  5725-I43 (C) Copyright IBM Corp. 2011, 2013. All Rights Reserved.
 *  US Government Users Restricted Rights - Use, duplication or
 *  disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
 */

/************************************************************************
 * Implementation code for procedure - 'procedure1'
 *
 *
 * @return - invocationResult
 */
 
var procedure1Statement = WL.Server.createSQLStatement("insert into inscription (cne,cin,nom,prenom,email,dn,address,bac,mb,bac2,mb2,bac3,mb3) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
function add(cne,cin,nom,prenom,email,dn,address,bac,mb,bac2,mb2,bac3,mb3) {
	return WL.Server.invokeSQLStatement({
		preparedStatement : procedure1Statement,
		parameters : [cne,cin,nom,prenom,email,dn,address,bac,mb,bac2,mb2,bac3,mb3]
	});
}

/************************************************************************
 * Implementation code for procedure - 'procedure2'
 *
 *
 * @return - invocationResult
 */
 
function procedure2(param) {
	return WL.Server.invokeSQLStoredProcedure({
		procedure : "storedProcedure2",
		parameters : [param]
	});
}

