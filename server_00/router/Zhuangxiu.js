const express=require("express");
var router=express.Router();
var pool=require("../pool");

//获取装修页面轮播图信息
router.get('/zxcarousel',(req,res)=>{
  var sql="SELECT cid,img,title,href FROM zhuangxiu_carousel";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"轮播图没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
})

//获取装修页面图文列表信息
router.get('/zxlist',(req,res)=>{
  var sql="SELECT cid,img,title,tag FROM zhuangxiu_tuwen";
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




















