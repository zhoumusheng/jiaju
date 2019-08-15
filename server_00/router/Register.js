const express=require("express");
const pool=require("../pool.js");
var router=express.Router();

router.post("/register",(req,res)=>{
  var uid="";
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  var email="";
  var phone="";

  var sql="INSERT INTO jiaju_user VALUES (?,?,md5(?),?,?)";
  pool.query(sql,[uid,uname,upwd,email,phone],(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"注册成功"});
    }else{
      res.send({code:-1,msg:"注册失败"})
    }
  })
});


//验证用户名是否已经存在
router.post("/verify",(req,res)=>{
  var sql="SELECT uid FROM jiaju_user WHERE uname=?";
  pool.query(sql,[req.body.uname],(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send({code:-1,msg:"用户名已经存在"});
    }else{
      res.send({code:1,msg:"用户名可以用"});
    }
  })
})





module.exports=router;





