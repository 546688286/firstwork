var mysql=require('mysql');
var express=require('express');
var router=express.Router();
var db=mysql.createPool({
	host:'localhost',
	user:'root',
	password:'',
	database:'Img'
})


module.exports={
	router:router,
	db:db
}
