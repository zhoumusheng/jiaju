const express=require("express");//引入express
var router=express.Router();//创建路由器对象
var pool=require("../pool.js")

router.post("/login",(req,res)=>{
  var obj=req.body;
  var sql="SELECT uid FROM jiaju_user WHERE (uname=? OR email=? OR phone=?) AND upwd=md5(?)";
  pool.query(sql,[obj.uname,obj.upwd],function(err,result){
    if(err)throw err;
    if(result.length>0){
      req.session.uid=result[0].uid  //session值
      // console.log(req.session)
      res.send({code:1,msg:"登录成功",session:req.session.uid});
    }else{
      res.send({code:-1,msg:"用户名或者密码错误"});
    }
  })
});

router.post("/loglog",(req,res)=>{//登录返回用户名
  var sql="SELECT uname FROM jiaju_user WHERE uid=?";
  pool.query(sql,[req.session.uid],(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send({code:1,data:result});
    }else{
      res.send({code:-1,msg:"请先登录"});
    }
  })
})



module.exports=router;



