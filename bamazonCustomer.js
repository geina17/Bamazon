var ask = require('inquirer');
var mySQL = require('mysql');
var tab = require("cli-table");

//connect to server
var conn = mySQL.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'root',
    database: 'bamazon'
});
conn.connect(function(err){
    if(err)throw err;
    displayInven();
});
//makes user input positive numbers
function valInput(value) {
    var integer = Number.isInteger(parseFloat(value));
    var sign = Math.sign(value);

    if (integer && (sign === 1)) {
        return true;
    } else {
        return 'Please enter a whole number.';
    }
}

//will prompt user for item/quant
function purchase() {
    //prompt user to select item
    ask
    .prompt([{
            type: 'input',
            name: 'id_item',
            message: 'Please enter the item ID.',
            validate: valInput,
            filter: Number
        },
        {
            type: 'input',
            name: 'stock_quant',
            message: 'How many?',
            validate: valInput,
            filter: Number
        },
    ]).then(function (input) {
        var item = input.id_item;
        var quant = input.stock_quant;

        //query db to confirm ID exists
        // var queryStr = 'select * from products WHERE?';
        conn.query(queryStr, {
                id_item: item
            },
            function (err, data) {
                if (err) throw err;
                if (data.length === 0) {
                    console.log('Error invalid ID.');
                    displayInven();
                } else {
                    var productData = data[0];
                    if (quant <= productData.stock_quant) {
                        console.log('Item is in stock!');

                        //construct the updating string
                        var updateQuStr = 'update products set stock_quant =' + (productData.stock_quant - quant) + 'where item_id =' + item;

                        //update invent
                        conn.query(updateQuStr, function (err, data) {
                            if (err) throw err;
                            console.log('Your order has been placed');
                            console.log('Thank you for shopping with us!');
                            console.log('|||||||||||||||||||||||||||||||');
                            //end connection
                            conn.end();
                        });
                    } else {
                        console.log('Sorry out of stock');
                        console.log('Please come back later');
                        console.log('|||||||||||||||||||||||');
                        displayInven();
                    }
                }
            }
        );
    });
}
//will retreve current invent
function displayInven() {
    //constructdb
    var queryStr = 'select * from products';
    // if(error) throw error;
    //make the query db
    conn.query(queryStr, function (err, data) {
        if (err) throw err;
        // console.log('WELCOME to BAMAZON!');
        console.log('Whats in stock:');
        console.log('|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||');
        // Draw the table in the terminal using the response
        var strungOut = '';
        for (var i = 0; i < data.length; i++) {
            strungOut = '';
            strungOut += 'Item Id:' + data[i].id_item + '//';
            strungOut += 'Product Name:' + data[i].product_name + '//';
            strungOut += 'Dept:' + data[i].dept_name + '//';
            strungOut += 'Price:' + data[i].price + '//';
            strungOut += 'Stock Quant.:' + data[i].stock_quant + '//';
            console.log(strungOut);
        }
        console.log('|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||');
        purchase();
    });
}

function runBamazon() {
    displayInven();
}
runBamazon();