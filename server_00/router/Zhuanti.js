const express=require("express");
var router=express.Router();
var pool=require("../pool");


//获取专题页面图文列表信息
router.get('/ztlist',(req,res)=>{
  var sql="SELECT cid,img,title FROM special_tuwen";
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