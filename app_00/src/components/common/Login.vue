<template>
  <div>
    <div>
      <loginshead loginsheadtitle="通行证登录"></loginshead>
    </div>
    <div class="intext">
      <div>
        <span class="inputtext1">
          <i class="iconfont icon-denglu"></i>
          <input type="text" id="username" v-model="us" name="username" placeholder="用户名/邮箱/手机号">
        </span>
        <span class="inputtext2">
          <i class="iconfont icon-mima"></i>
          <!-- 密码隐藏的输入 -->
          <input type="password" id="password" name="password" placeholder="密码" v-if="showPwd" v-model="ups">
          <!-- 密码显示的输入 -->
          <input type="text" id="password" name="password" placeholder="密码" v-else v-model="ups">
          <!-- 点击控制密码显示或隐藏 -->
          <i class="iconfont icon-xianshi" @click="showPwd=!showPwd"></i>
        </span>
      </div>
      <div class="submitbtn">
        <input type="submit" id="submitButton" name @click="login" value="登录" class="btn-submit">
      </div>
      <div class="forgetpassword">
        <p>忘记密码</p>
        <span class="register-wap" @click="goregister">
          <p>立即注册</p>
          <i class="iconfont icon-right"></i>
        </span>
      </div>
      <div class="otherLogin">
        <span>其他登录方式</span>
        <div class="otherLogin-wap">
          <a href="javascript:;" class="weibologo">
            <i class="iconfont icon-weibo"></i>
          </a>
          <a href="javascript:;" class="qqlogo">
            <i class="iconfont icon-QQ"></i>
          </a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import Loginshead from './Loginshead'
export default {
  data(){
    return{
      us:'',//用户名的双向绑定
      ups:'',//密码的双向绑定
      showPwd:true,//点击控制密码显示或隐藏
      uname:'',//用户名输入框的name
      em:"",
      ph:'',
    }
  },
  components:{
    "loginshead":Loginshead
  },
  methods:{
    goregister(){
      this.$router.push("/register")
    },
    login(){//登录的axios
      var url="login/login";
      // this.axios.post(url,{
      //   user:this.users,
      //   upwd:this.upwds,
      // })
      var user=this.us;
      var upwd=this.ups;
      var em=/^\w+@\w+\.[A-Za-z]{2,3}(\.[A-Za-z]{2,3})?$/;//验证邮箱的正则表达式
      var ph=/^1[34578]\d{9}$/;//验证手机号的正则表达式
      var un=/^[a-zA-Z0-9]{3,10}$/;//验证用户名的正则表达式
      var up= /^[a-zA-Z0-9]{3,16}$/;//验证密码的正则表达式
      if(!un.test(user)&&!em.test(user)&&!ph.test(user)){
        this.$toast("用户名/手机号/邮箱格式不正确");
        return;
      }
      if(!up.test(upwd)){
        this.$toast("密码格式不正确");
      }
      var obj={us:user,ups:upwd};
      this.axios.get(url,{params:obj}).then(result=>{
        this.$router.push("/index")
      })
    }
  }
}
</script>
<style scoped>
.intext{
  margin-top:20px;
  padding:5px 15px;
}
/* 用户名 */
.inputtext1{
  line-height: 40px;
  background: #fff;
  border:1px solid #999;
  padding:5px;
  display: flex;
}
.inputtext1 .iconfont{
  font-size:28px;
  color:#aaa;
}
.inputtext1 input{
  font-size:16px;
  margin:auto;
  border:0;
}
/* 密码 */
.inputtext2{
  line-height: 40px;
  background: #fff;
  border:1px solid #999;
  border-top:0;
  padding:5px;
  display: flex;
}
.inputtext2 .iconfont{
  font-size:25px;
  color:#aaa;
}
.inputtext2 input{
  font-size:16px;
  margin:auto;
  border:0;
}
/* 登录按钮 */
.submitbtn{
  margin:20px 0;
  width:100%;
  border-radius:5px;
  background:#77c111;
}
.submitbtn .btn-submit{
  width:100%;
  height: 40px;
  padding:1px 6px;
  background:#77c111;
  border:0;
  font-size: 18px;
  color: #f5f5f5;
}
/* 忘记密码 */
.forgetpassword{
  width:100%;
  display:flex;
  justify-content: space-between;
}
.forgetpassword p{
  color:#77c111;
}
.register-wap{
  display: flex;
}
.register-wap p{
  color:#333;
  margin:0 10px;
}
.register-wap .iconfont{
  font-size:14px;
  color:#666;
}
/* 其他登录方式 */
.otherLogin{
  width:100%;
  border-top:1px solid #aaa;
  padding:20px 0;
  margin-top:10px;
  text-align: center;
  font-size:14px;
  color:#666;
}
.otherLogin-wap{
  padding:8px;
}
.otherLogin-wap .weibologo{
  width:30px;
  height:30px;
  line-height: 30px;
  margin:0 5px;
  display: inline-block;
  border-radius:50%;
  background:#ff4740;
}

.otherLogin .iconfont{
  color:#fff;
  font-size:20px;
}
.otherLogin-wap .qqlogo{
  width:30px;
  height:30px;
  line-height: 30px;
  margin:0 5px;
  display: inline-block;
  border-radius:50%;
  background:#67b5d8;
}
</style>
