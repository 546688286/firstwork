var express=require('express');
var mysql=require('mysql');
var router=express.Router();

var db=mysql.createPool({
	host:'localhost',
	user:'root',
	password:'',
	database:'Img'
})

router.get('/',function(req,res,next){
	
	db.query('SELECT * FROM `STYLISH`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.sty=data;
			next()
		}
		
	})
})
router.get('/',function(req,res,next){
	
	db.query('SELECT * FROM `STYLIS`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.styl=data;
			next()
		}
		
	})
})
router.get('/',function(req,res,next){
	
	db.query('SELECT * FROM `STYLI`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.styli=data;
			next()
		}
		
	})
})
router.get('/',function(req,res,next){
	db.query('SELECT * FROM `Text`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.text=data;
			next()
		}
		
	})
	
})
router.get('/',(req,res)=>{
	res.render('STYLISH.ejs',{sty:res.sty,styl:res.styl,styli:res.styli,text:res.text})
})

module.exports=router;