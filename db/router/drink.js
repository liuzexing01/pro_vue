const express=require("express");
const router=express.Router();
const pool=require("../pool.js")

router.get("/",(req,res)=>{
    var sql="SELECT `id`, `classify`, `kind`, `title`, `price`, `img_url`, `sell` FROM `vue_drink`";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})
module.exports=router;