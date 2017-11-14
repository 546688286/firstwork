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
	db.query('SELECT * FROM `Text`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.text=data;
			next()
			res.render('Home.ejs',{text:res.text});
		}
		
	})
	
})
module.exports=router;