const express=require("express");
var router=express.Router();
var pool=require("../pool");

//获取设计页面轮播图信息
router.get('/sjcarousel',(req,res)=>{
  var sql="SELECT cid,img,title,href FROM sheji_carousel";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"轮播图没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
})

//获取设计页面图文列表信息
router.get('/sjlist',(req,res)=>{
  var sql="SELECT cid,img,title,tag FROM sheji_tuwen";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"没有图文内容哦"});
    }else{
      res.send({code:1,data:result});
    }
  })
})


module.exports=router;




















