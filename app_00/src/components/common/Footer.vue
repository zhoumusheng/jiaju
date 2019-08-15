<template>
  <div class="footer">
    <!-- 页脚第一行 -->
    <div class="footer-first">
      <ul>
        <li><a href="javascript:;">电脑网</a></li>
        <li><a href="javascript:;">汽车网</a></li>
        <li><a href="javascript:;">时尚网</a></li>
        <li><a href="javascript:;">亲子网</a></li>
        <li><a href="javascript:;">家居网</a></li>
      </ul>
    </div>
    <!-- 页脚第二行 -->
    <div class="footer-second">
      <ul>
        <li>
          <i class="iconfont icon-jianbanqiapianicon-xiao"></i>
          简版
        </li>
        <li>
          <i class="iconfont icon-chupingban_shouji"></i>
          触屏版
        </li>
        <li>
          <i class="iconfont icon-diannaoban"></i>
          电脑版
        </li>
        <li>
          <i class="iconfont icon-yijianfankui"></i>
          意见反馈
        </li>
      </ul>
    </div>
    <!-- 页脚第三行 -->
    <div class="footer-third">
      <ul>
        <li @click="footshouye">首页</li>
        <li @click="footzx">装修</li>
        <li @click="footsy">试用中心</li>
        <li @click="footlt">论坛</li>
        <li @click="footwd">问答</li>
        <li @click="footbk">百科</li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  },
  methods: {
    footshouye(){this.$router.push("/Index")},
    footzx(){this.$router.push("/Zhuangxiu")},
    footsy(){this.$router.push("/Shiyong")},
    footlt(){this.$router.push("/Luntan")},
    footwd(){this.$router.push("/Wenda")},
    footbk(){this.$router.push("/Baike")},
  },
}
</script>
<style scoped>
.footer{
  width:100%;
  font-size:14px;
  background:#353739;
  position: relative;
  top:10px;
}
.footer ul{
  list-style: none;
  display: flex;
}
/* 第一行样式 */
.footer-first{
  width:100%;
}
.footer-first ul{
  padding:11px 0 20px 0;
  border-top:4px solid #288bde;
  justify-content: space-around;
}
.footer-first li a{
  color:#fff;
}
/* 第二行样式 */
.footer-second ul{
  padding:0;
  justify-content: center;
}
.footer-second ul li{
  width:65px;
  margin:0 5px;
  display: flex;
  flex-direction: column;
  align-items: center;
  color:#fff;
  font-size: 14px;
}
.footer-second .iconfont{
  color:#67696a;
  font-size: 18px;
  margin-bottom:8px;
}
/* 第三行样式 */
.footer-third ul{
  padding:6px 0 12.5px 0;
  width:100%;
  justify-content: space-around;
}
.footer-third ul li{
  color:#fff;
  font-size:14px;
}
</style>
