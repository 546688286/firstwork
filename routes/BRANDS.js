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
	
	db.query('SELECT * FROM `BRANDS`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.ban=data;
			next()
		}
		
	})
})
router.get('/',function(req,res,next){
	
	db.query('SELECT * FROM `BRANS`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.bann=data;
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
	res.render('BRANDS.ejs',{ban:res.ban,bann:res.bann,text:res.text})
})
module.exports=router;
