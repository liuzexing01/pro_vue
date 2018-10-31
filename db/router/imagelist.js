const express=require("express");
const router=express.Router();
const pool=require("../pool.js")

router.get("/",(req,res)=>{
    var sql="select id,img_url,title from vue_imagelist";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})
module.exports=router;