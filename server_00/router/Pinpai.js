const express=require("express");
var router=express.Router();
var pool=require("../pool");

//获取品牌库页面轮播图信息
router.get('/ppcarousel',(req,res)=>{
  var sql="SELECT cid,img,title,href FROM brand_carousel";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"轮播图过不来呢"});
    }else{
      res.send({code:1,data:result})
    }
  })
})

//获取品牌库页面建材列表
router.get('/material',(req,res)=>{
  var sql="SELECT cid,img,title,price,original FROM brand_material";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"建材列表呢？"});
    }else{
      res.send({code:1,data:result});
    }
  })
})

//获取品牌库页面家具列表
router.get('/furniture',(req,res)=>{
  var sql="SELECT cid,img,title,price,original FROM brand_furniture";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"家具他们去哪了？"});
    }else{
      res.send({code:1,data:result})
    }
  })
})

//获取品牌库页面软装列表
router.get('/soft',(req,res)=>{
  var sql="SELECT cid,img,title,price,original FROM brand_soft";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"去找找软装列表吧，不见了"})
    }else{
      res.send({code:1,data:result})
    }
  })
})




module.exports=router;






