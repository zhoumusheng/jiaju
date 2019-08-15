const express=require("express");
var router=express.Router();
var pool=require("../pool")

//获取问答页面图文信息
router.get('/wenda',(req,res)=>{
  var sql="SELECT cid,img,title,article FROM wenda_tuwen";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"什么是问答列表？没有看到啊"});
    }else{
      res.send({code:1,data:result})
    }
  })
})

//获取问答页面问答列表信息
router.get('/aquestions',(req,res)=>{
  var sql="SELECT cid,title,tag,reply FROM aquestions_tuwen";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"别问了，问答列表没上班"});
    }else{
      res.send({code:1,data:result})
    }
  })
})




module.exports=router;


