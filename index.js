var inquirer = require('inquirer');
var mySql = require('mySql');

var connection = mySql.createConnection({
	host: "localHost";
	port: 8080;
	user: "root";
	password: "";
	dataBase: "Bamazon";
})

connection.connect(function(err, result){
	if(err){
		throw err;
	}
	start();
})