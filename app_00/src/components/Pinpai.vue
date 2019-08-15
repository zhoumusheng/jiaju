<template>
  <div class="allstyle">
    <!-- 页头 -->
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <!-- 轮播图头部导航栏 -->
    <div class="topnav">
      <ul>
        <li @click="navclick1">
          <i class="iconfont icon-pinpai" style="color:#00acff"></i>
          <p>品牌大全</p>
        </li>
        <li @click="navclick2">
          <i class="iconfont icon-paixing" style="color:#f26a78"></i>
          <p>家居排行</p>
        </li>
        <li @click="navclick3">
          <i class="iconfont icon-weibiaoti--" style="color:#77c111"></i>
          <p>查找产品</p>
        </li>
      </ul>
    </div>
    <!-- 轮播图 -->
    <div>
      <carousel :list="datapinpai"></carousel>
    </div>
    <!-- 建材导航 -->
    <div class="jiancainav">
      <strong>建材</strong>
      <ul>
        <li>马桶</li>
        <li>涂料</li>
        <li>瓷砖</li>
        <li>浴室柜</li>
        <li>更多
          <i class="iconfont icon-right"></i>
        </li>
      </ul>
    </div>
    <!-- 建材图文列表 -->
    <div style="display:flex; flex-wrap: wrap; ">
      <tuwen3 v-for="(item,index) in datajiancai" :key="index" :cid="item.cid" :title="item.title" :ppimgurl="require(`../assets/12pinpaiku/products/${item.img}`)" :itemClick="clickjiancai" :price="item.price" :original="item.original"></tuwen3>
    </div>
    <!-- 热门建材品牌 -->
    <div class="recommend">
      <p>热门建材品牌：</p>
      <ul>
        <li>三棵树</li>
        <li>大自然地板</li>
        <li>芬琳溙</li>
        <li>傲胜地板</li>
        <li>乐家</li>
        <li>安华陶瓷</li>
      </ul>
      <p class="f-more">更多建材产品
        <i class="iconfont icon-zhishi1"></i>
      </p>
    </div>
    <!-- 家居图文列表 -->
    <div class="jiancainav">
      <strong>家具</strong>
      <ul>
        <li>收纳柜</li>
        <li>沙发</li>
        <li>床</li>
        <li>布艺沙发</li>
        <li>更多
          <i class="iconfont icon-right"></i>
        </li>
      </ul>
    </div>
    <div style="display:flex; flex-wrap: wrap; ">
      <tuwen3 v-for="(item,index) in datajiaju" :key="index" :cid="item.cid" :title="item.title" :ppimgurl="require(`../assets/12pinpaiku/products/${item.img}`)" :itemClick="clickjiaju" :price="item.price" :original="item.original"></tuwen3>
    </div>
    <!-- 热门家具品牌 -->
    <div class="recommend">
      <p>热门家具品牌：</p>
      <ul>
        <li>全友家私</li>
        <li>华源轩</li>
        <li>好莱客</li>
        <li>华日家具</li>
        <li>科宝博洛尼</li>
        <li>健威</li>
      </ul>
      <p class="f-more">更多家具产品
        <i class="iconfont icon-zhishi1"></i>
      </p>
    </div>
    <!-- 软装图文列表 -->
    <!-- 软装导航 -->
    <div class="jiancainav">
      <strong>软装</strong>
      <ul>
        <li>床头灯</li>
        <li>装饰画</li>
        <li>吊灯</li>
        <li>靠垫</li>
        <li>更多
          <i class="iconfont icon-right"></i>
        </li>
      </ul>
    </div>
    <div style="display:flex; flex-wrap: wrap; ">
      <tuwen3 v-for="(item,index) in dataruanzhuang" :key="index" :cid="item.cid" :title="item.title" :ppimgurl="require(`../assets/12pinpaiku/products/${item.img}`)" :itemClick="clickruanzhuang" :price="item.price" :original="item.original"></tuwen3>
    </div>
    <!-- 热门软装品牌 -->
    <div class="recommend">
      <p>热门软装品牌：</p>
      <ul>
        <li>友家园艺</li>
        <li>多样屋</li>
        <li>梦洁家纺</li>
        <li>德国玛堡壁纸</li>
        <li>穗宝</li>
        <li>博洋家纺</li>
      </ul>
      <p class="f-more">更多软装产品
        <i class="iconfont icon-zhishi1"></i>
      </p>
    </div>
    <!-- 页脚 -->
    <div>
      <allfooter></allfooter>
    </div>
  </div>
</template>
<script>
import Header from './common/Header'
import Footer from './common/Footer'
import Carousel from './common/Carousel'
import Tuwen3 from './common/Tuwen3'
export default {
  data(){
    return{
      datapinpai:[],
      datajiancai:[],
      datajiaju:[],
      dataruanzhuang:[]
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "carousel":Carousel,
    "tuwen3":Tuwen3,
  },
  methods:{
    // 轮播图顶部的品牌大全导航点击事件
    navclick1(){
      this.$router.push("/allbrand")
    },
    navclick2(){},
    navclick3(){},
    data_pinpai(){
      var url="Pinpai/ppcarousel";
      this.axios.get(url).then(result=>{
        this.datapinpai=result.data.data;
      })
    },
    data_jiancai(){
      var url="Pinpai/material";
      this.axios.get(url).then(result=>{
        this.datajiancai=result.data.data;
      })
    },
    data_jiaju(){
      var url="Pinpai/furniture";
      this.axios.get(url).then(result=>{
        this.datajiaju=result.data.data;
      })
    },
    data_ruanzhuang(){
      var url="Pinpai/soft";
      this.axios.get(url).then(result=>{
        this.dataruanzhuang=result.data.data;
      })
    },
    clickjiancai(){},
    clickjiaju(){},
    clickruanzhuang(){},
  },
  created(){
    this.data_pinpai();
    this.data_jiancai();
    this.data_jiaju();
    this.data_ruanzhuang();
  }
}
</script>
<style scoped>
.allstyle{
  overflow: hidden;
}
ul{list-style: none;}
.topnav ul{
  margin:0;
  padding:0;
  display:flex;
  justify-content: space-around;
}
.topnav ul li{
  display: flex;
  width:33%;
  height:45px;
  line-height: 45px;
  background:#fff;
  box-sizing: border-box;
  justify-content: center;
}
.topnav li p{
  color:#333;
  font-size:16px;
}
.topnav .iconfont{
  font-size:22px;
}
/* 建材 */
.jiancainav{
  margin:20px 5px 5px 5px;
  border-bottom:1px solid #77c111;
  display: flex;
  justify-content: space-between;
}
.jiancainav strong{
  line-height: 30px;
  border-bottom:2px solid #77c111;
}
.jiancainav ul{
  display:flex;
  margin:0;
  font-size:14px;
  color:#77c111;
}
.jiancainav ul li{
  border-right:1px solid #77c111;
  height:16px;
  margin-top:7px;
  padding:0 9px;
}
.jiancainav li:last-child{
  border:0;
}
.jiancainav .iconfont{
  font-size:12px;

}
/* 热门建材品牌 */
.recommend{
  margin-top:10px; 
}
.recommend p{
  margin:0;
}
.recommend ul{
  overflow: hidden;
  border:1px solid #ddd;
  border-radius:3px;
  padding:0;
  margin:5px;
  display: flex;
  flex-wrap:wrap;
}
.recommend ul li{
  width:50%;
  height:50px;
  line-height: 50px;
  border:1px solid #ddd;
  text-align: center;
}
.recommend .f-more{
  position: relative;
  width:245px;
  height:50px;
  line-height: 50px;
  text-align: center;
  border:1px solid #77c111;
  border-radius:25px;
  color:#77c111;
  font-size:22px;
  margin:24px auto 0;
}
</style>
