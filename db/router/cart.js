const express=require("express");
const router=express.Router();
const pool=require("../pool.js");

router.get("/cart",(req,res)=>{
		var id=req.query.id;
    var sql="SELECT `classify`, `kind`, `title`, `price`, `img_url`, `sell` FROM `vue_drink` WHERE id =?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})

module.exports=router;