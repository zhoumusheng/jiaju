const express=require("express");
var router=express.Router();
var pool=require("../pool");

//获取宜家宜居页面信息
// 综合页面
router.get('/lbzonghe',(req,res)=>{
  var sql="SELECT cid,img,tag,title,price FROM livable_zonghe";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

router.get('/lbwenzhang',(req,res)=>{
  var sql="SELECT cid,img,tag,title,tag2,time FROM livable_zonghewenzhang";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

router.get('/lbzhuanti',(req,res)=>{
  var sql="SELECT cid,img,title,tag,title2,tag2,time FROM livable_zonghezhuanti";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

router.get('/lbtupian',(req,res)=>{
  var sql="SELECT cid,img,tag,title FROM livable_zonghetupian";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

router.get('/lbshipin',(req,res)=>{
  var sql="SELECT cid,img,tag,title,tag2,atime FROM livable_zongheshipin";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});


// 产品页面
router.get('/lbchanpin',(req,res)=>{
  var sql="SELECT cid,img,tag,title,price FROM livable_chanpin";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

// 文章页
router.get('/lbwenzhang2',(req,res)=>{
  var sql="SELECT cid,img,tag,title,tag2,time FROM livable_wenzhang";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

// 专题页
router.get('/lbzhuanti2',(req,res)=>{
  var sql="SELECT cid,img,title1,tag,title2,tag2,time FROM livable_zhuanti";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

// 图片页
router.get('/lbtupian2',(req,res)=>{
  var sql="SELECT cid,img,tag,title FROM livable_tupian";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});

// 图片页
router.get('/lbshipin2',(req,res)=>{
  var sql="SELECT cid,img,tag,title,tag2,atime FROM livable_shipin";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"内容没有过来"});
    }else{
      res.send({code:1,data:result});
    }
  })
});





module.exports=router;





