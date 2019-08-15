<template>
  <div>
    <div>
      <loginshead loginsheadtitle="通行证登录"></loginshead>
    </div>
    <form action="" id="register" method="post" name="register">
      <ul>
        <li class="firstlist">
          <span>
            <input type="text" name="mobile" id="mobile" length="11" placeholder="请输入您的手机号">
          </span>
        </li>
        <li class="secondlist">
          <span>
            <input type="text" id="mobileVCode" name="mobileVCode" placeholder="请输入手机验证码">
          </span>
          <span class="secondspan">
            <a href="javascript:;" id="getMobileVCode" class="vcode">免费获取验证码</a>
          </span>
        </li>
        <li class="thirdlist">
          <span>
            <input type="password" name="password" id="password" placeholder="(请输入密码,8-16位字母数字组合)">
            <i class="iconfont icon-xianshi"></i>
          </span>
        </li>
      </ul>
      <div class="warn-tips" id="warn">
        <span>tips</span>
      </div>
      <div class="regbtn">
        <input type="submit" id="submitButton" name value="注册" class="btnsubmit">
      </div>
      <div class="gologin">
        <p>已有账号?</p>
        <span @click="gologining" class="gologining">去登录
          <i class="iconfont icon-zhishi1"></i>
        </span>
      </div>
    </form>
  </div>
</template>
<script>
import Loginshead from './Loginshead'
export default {
  data(){
    return{}
  },
  props:{

  },
  components:{
    "loginshead":Loginshead
  },
  methods:{
    gologining(){
      this.$router.push("/login");
    }
  }
}
</script>
<style scoped>
#register{
  width:100%;
  padding:8px;
  margin-top:10px;
  font-size:14px;
}
ul{
  list-style: none;
  margin:0;
  padding:0;
}
#register input{
  font-size:16px;
}
/* 第二行输入框 */
.secondlist{
  width:100%;
  display:flex;
  flex:1;
  justify-content:space-between;
}
.secondlist .secondspan{
  width:140px;
  margin-left:10px;
  margin-bottom: 15px;
  border:1px solid #ccc;
  background: #fff;
  line-height:40px;
  text-align: center;
}
.secondlist .vcode{
  height:40px;
  margin-left:8px;
  flex:1;
  color:#77c111;
}
/* 第三行输入框 */
.thirdlist span{
  height:42px;
  margin-bottom:10px;
  display: flex;
  line-height:42px;
  background:#fff;
  border:1px solid #ccc;
}
.thirdlist #password{
  border:0;
  margin-bottom:0;
}
.thirdlist .iconfont{
  font-size:26px;
  padding:0 8px;
  color:#999;
}
/* tips 提示信息 */
.warn-tips{
  text-align: center;
  color:#476e0f;
  font-size:16px;
}
/* 注册按钮 */
.regbtn .btnsubmit{
  width:100%;
  height:42px;
  margin:10px auto;
  background:#77c111;
  border:0;
}
/* 有账号，去登录 */
.gologin{
  display: flex;
  justify-content: center;
  margin:15px auto;
  font-size:16px;
}
.gologin p{
  color:#333;
  margin:0 5px;
}
.gologin .gologining{
  margin:0 5px;
  color:#77c111;
}
.gologin .iconfont{
  font-size:14px;
}
</style>
