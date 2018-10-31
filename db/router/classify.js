const express=require("express");
const router=express.Router();
const pool=require("../pool.js");

router.get("/kind",(req,res)=>{
    var sql="SELECT DISTINCT kind FROM `vue_drink`";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})
router.get("/classify",(req,res)=>{
		var kind=req.query.kind;
		var sql="SELECT DISTINCT classify FROM `vue_drink` where kind="+"'"+kind+"'"
		pool.query(sql,(err,result)=>{
				if(err) throw err;
				res.send({code:1,msg:result})
		})
})
router.get("/all",(req,res)=>{
		var kind=req.query.kind;
		var sql="SELECT `id`, `classify`, `kind`, `title`, `price`, `img_url`, `sell` FROM `vue_drink` where kind="+"'"+kind+"'"
		pool.query(sql,(err,result)=>{
				if(err) throw err;
				res.send({code:1,msg:result})
		})
})
router.get("/detail",(req,res)=>{
		var kind=req.query.kind;
		var classify=req.query.classify;
		var sql="SELECT `id`, `classify`, `kind`, `title`, `price`, `img_url`, `sell` FROM `vue_drink` where kind="+"'"+kind+"' and classify="+"'"+classify+"'";
		pool.query(sql,(err,result)=>{
				if(err) throw err;
				res.send({code:1,msg:result})
		})
})
router.get("/sort",(req,res)=>{
		var kind=req.query.kind;
		var classify=req.query.classify;
		var sort=req.query.sort;
		var sql="SELECT `id`, `classify`, `kind`, `title`, `price`, `img_url`, `sell` FROM `vue_drink` where kind="+"'"+kind+"'";
		if(classify){
			sql+=" and classify="+"'"+classify+"'";
		}
		if(sort==1){
			sql+=" order by sell"
		}else if(sort==2){
			sql+=" order by price DESC"
		}else if(sort==3){
			sql+=" order by price"
		}
		pool.query(sql,(err,result)=>{
				if(err) throw err;
				res.send({code:1,msg:result})
		})
})
module.exports=router;