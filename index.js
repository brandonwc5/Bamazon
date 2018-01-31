var inquirer = require('inquirer');
var mySql = require('mySql');

var connection = mySql.createConnection({
	host: "localHost",
	port: 3380,
	user: "root",
	password: "",
	dataBase: "Bamazon"
})

connection.connect(function(err, result){
	if(err){
		throw err;
	}
	start();
})

function start(){
	inquirer.prompt({
		name: "itemID",
		type: "input",
		message: "What is the ID of the product you would like to purchase?"
	}, 
	{
		name: "howMany",
		type: "input",
		message: "How many would you like to purchase?"
	}).then(function(answer){
		if(answer.itemID===""){
			console.log("We need an item ID.");
			start();
		} else {
			findID();
		} 
	})
}
start();
function findID(answer){
  console.log("Finding items that match that ID...\n");
  var query = connection.query(
  	"Select * from Bamazon", 
    function(err, res) {
      console.log(res.affectedRows + " products updated!\n");
      // Call deleteProduct AFTER the UPDATE completes
      deleteProduct();
    }
  );

  // logs the actual query being run
  console.log(query.sql);
}