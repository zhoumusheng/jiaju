<template>
<!-- 页头 -->
  <div class="header">
    <!-- 页头logo，搜索和个人按钮 -->
    <div class="headlogo">
      <div>
        <img :src="headlogoimg" alt="" class="logoimg">
      </div>
      <b class="asearch" @click="composites">
        <i class="iconfont icon-weibiaoti--" ></i>
        <em class="text">宜家宜居</em>
      </b>
      <i class="iconfont icon-geren" @click="personallogin"></i>
    </div>
    <!-- 页头导航栏 -->
    <div class="headlist">
      <!-- 显示的部分 -->
      <div class="menu-first">
        <div class="menu-first-wrap">
          <ul>
            <li @click="homepage">首页</li>
            <li @click="design">设计</li>
            <li @click="renovation">装修</li>
            <li @click="decorate">装饰</li>
            <li @click="life">生活</li>
          </ul>
        </div>
        <i @click="menuSecond" class=" iconfont icon-zhishi "></i>
      </div>
      <!-- 隐藏的部分 -->
      <div v-show="isShow" class="menu-second" >
        <ul>
          <li @click="pingce">评测</li>
          <li @click="pcvideo">视频</li>
          <li @click="zhuanti">专题</li>
          <li @click="shiyong">试用</li>
          <li @click="brand">品牌库</li>
          <li @click="zhuanqu">专区</li>
          <li @click="luntan">论坛</li>
          <li @click="wenda">问答</li>
          <li @click="tuji">图集</li>
          <li @click="huodong">活动</li>
          <li @click="gongju">工具</li>
          <li @click="shejishi">设计师</li>
          <li @click="baike">百科</li>
          <li @click="tuliao">涂料专家</li>
          <li @click="zhengwu">整屋案例</li>
          <li @click="jingxiaoshang">经销商</li>
          <li @click="zhongshi">中式家具</li>
        </ul>
      </div>
    </div>
  </div>
</template> 
<script>
export default {
  props:{
    headlogoimg:{default:""},
  },
  data(){
    return{
      isShow:false,
    }
  },
  methods:{
    composites(){
      this.$router.push("/composite");
    },
     personallogin(){
      var session=sessionStorage.getItem("sessionLogin");
      if(session!==null){
        this.$router.push("/bbs/myfourm");
      }else{
        this.$toast("请先登录");
        this.$router.push("/login");
      }
    },
    // 导航栏第一行点击事件
    homepage(){
      this.$router.push("/Index")
    },
    design(){
      this.$router.push("/sheji")
    },
    renovation(){
      this.$router.push("/zhuangxiu")
    },
    decorate(){
      this.$router.push("/zhuangshi")
    },
    life(){
      this.$router.push("/Shenghuo")
    },
    // 导航栏隐藏区域点击事件
    pingce(){this.$router.push("/Pingce")},
    pcvideo(){this.$router.push("/Shipin")},
    zhuanti(){this.$router.push("/Zhuanti")},
    shiyong(){this.$router.push("/Shiyong")},
    brand(){this.$router.push("/Pinpai")},
    zhuanqu(){this.$router.push("/Zhuanqu")},
    luntan(){this.$router.push("/Luntan")},
    wenda(){this.$router.push("/Wenda")},
    tuji(){this.$router.push("/Tuji")},
    huodong(){this.$router.push("/Huodong")},
    gongju(){this.$router.push("/Gongju")},
    shejishi(){this.$router.push("/Shejishi")},
    baike(){this.$router.push("/Baike")},
    tuliao(){this.$router.push("/Tuliao")},
    zhengwu(){this.$router.push("/Zhengwu")},
    jingxiaoshang(){this.$router.push("/Jingxiaoshang")},
    zhongshi(){this.$router.push("/Zhongshi")},
    menuSecond(){
      this.isShow=!this.isShow
      // 下面是另一种写法
      /*if(this.isShow){
        this.isShow=false;
      }else{
       this.isShow=true;
      }*/
    }
  },
   
   
}
</script>
<style scoped>
/* 页头样式 */
.header{
  width:100%;
  z-index: 100;
  display:block;
  font-size:16px;
  position:fixed;
  background:#f5f5f5;
  opacity:inherit; /*透明度*/
}
/* 页头logo，搜索，个人按钮样式 */
.headlogo{
  width:100%;
  padding:11px 15px;
  display:flex;
  justify-content: space-between;
}
.logoimg{
  height:20px;
}
/* 搜索 */
.asearch{
  width:195px;
  padding-left:12px;
  background-color:#f5f5f5;
  border-radius:12px;
  text-decoration: none;
  color:#bbb;
  font-size:14px;
}
/* 个人头标样式 */
.headlogo>.iconfont{
  font-family:"iconfont" !important;
  font-size:25px;
}
/* 头部导航栏样式 */
/* 导航栏第一行样式 */
.menu-first{
  display:flex;
}
.menu-first-wrap{
  width:100%;
}
.menu-first-wrap ul{
  padding:0;
  margin-bottom: 0;
  display:flex;
  justify-content:space-around;
  list-style: none;
}
/* 下拉菜单指示符号的样式 */
.menu-first .iconfont{
  margin:16px 5px 0 5px;
  line-height: 21px;
  color:#bbb;
  display:inline-block;
}
.menu-first .checked{
  transition:all 1s;
};
.menu-first .iconfont2{
  transform:rotate(180deg);
  transition:all 1s;
}
/* 隐藏的下拉菜单样式 */
.menu-second{
  width:100%;
  left:0;
  top:100%;
  z-index: 100;
  overflow: hidden;
  transition:height .3s ease-in-out;
}
.menu-second ul{
  padding:0;
  color:#333;
  display: block;
  list-style:none;
  font-size:16px;
}
.menu-second li{
  width:69px;
  padding:8px 0;
  text-align: center;
  display: inline-block;
  vertical-align: top;
  letter-spacing: normal;
  word-spacing: normal;
}
</style>
