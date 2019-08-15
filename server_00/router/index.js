const express=require("express");
var router=express.Router();
var pool=require("../pool");

//获取轮播图资源
router.get('/sycarousel',(req,res)=>{
  var sql="SELECT cid,img,title,href FROM shouye_carousel";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"轮播图为空"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

// 获取图文列表信息
router.get('/sylist',(req,res)=>{
  var sql="SELECT cid,img,title,tag FROM shouye_tuwen";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"图文列表为空"});
    }else{
      res.send({code:1,data:result});
    }
  })
})

//获取首页广告图文信息
router.get('/sygg',(req,res)=>{
  var sql="SELECT cid,img1,img2,img3,title FROM shouye_guanggaotuwen";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"没有广告"})
    }else{
      res.send({code:1,data:result});
    }
  })
});


module.exports=router;























