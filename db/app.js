const express=require("express");
const bodyParser=require('body-parser');
const image=require("./router/imagelist.js")
const drink=require("./router/drink.js")
const classify=require("./router/classify.js")
const cart=require("./router/cart.js")

var app=express();
const cors=require("cors");
app.use(cors({
	origin:["http://127.0.0.1:8080","http://localhost:8080"],
	credentials:true
}));
app.listen(3000);
app.use(bodyParser.urlencoded({
    extended:false
}))


app.use(express.static(__dirname+'/public'));

app.use("/image",image)
app.use("/drink",drink)
app.use("/classify",classify)
app.use("/cart",cart)