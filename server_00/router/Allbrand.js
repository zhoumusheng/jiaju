const express=require("express");
var router=express.Router();
var pool=require("../pool");

//获取品牌大全页面信息
router.get('/alllogo',(req,res)=>{
  var sql="SELECT cid,img,titlename FROM brand_alllogo";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没跟上"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

router.get('/brandjc',(req,res)=>{
  var sql="SELECT cid,img,titlename FROM brand_jiancai";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没跟上"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

router.get('/brandjj',(req,res)=>{
  var sql="SELECT cid,img,titlename FROM brand_jiaju";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没跟上"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

router.get('/brandrz',(req,res)=>{
  var sql="SELECT cid,img,titlename FROM brand_ruanzhuang";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没跟上"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

router.get('/brandjd',(req,res)=>{
  var sql="SELECT cid,img,titlename FROM brand_jiadian";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没跟上"});
    }else{
      res.send({code:1,data:result});
    }
  })
});





module.exports=router;















