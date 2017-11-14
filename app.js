var mysql=require('mysql');
var express=require('express');
var bodyParser=require('body-parser');
var fs=require('fs');
var app=express();


app.use('/',express.static('src'));

app.set('view engine','ejs');
app.use('/',require("./routes/Home"));
app.use('/Home',require("./routes/Home"));
app.use('/BRANDS',require("./routes/BRANDS"));
app.use('/STYLISH',require("./routes/STYLISH"));
app.use('/CONTACT',require("./routes/CONTACT"));
//app.use('/Img',require("./routes/Img"));



app.get('/MEO_COLLECTIVE',function(req,res){
	res.render('MEO COLLECTIVE.ejs');
	
})
app.get('/KEEPSAKE',function(req,res){
	res.render('KEEPSAKE.ejs');
	
})
app.get('/DISAVA',function(req,res){
	res.render('DISAVA.ejs');
	
})
app.get('/The_Fifth_Label',function(req,res){
	res.render('The Fifth Label.ejs');
	
})
app.get('/FINDERS',function(req,res){
	res.render('FINDERS.ejs');
	
})
app.get('/FEW_MODA',function(req,res){
	res.render('FEW MODA.ejs');
	
})
app.get('/GLAMOROUS',function(req,res){
	res.render('GLAMOROUS.ejs');
	
})



app.listen(8081)
















