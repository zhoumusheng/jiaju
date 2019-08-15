<template>
  <div class="allstyle">
    <!-- 页头 -->
    <div>
      <allheader :headlogoimg="require('../../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <div>
      <loginshead loginsheadtitle="购物品 &gt; 牌大全"></loginshead>
    </div>
    <!-- 页面导航栏 -->
    <div class="allbrandnav">
      <ul>
        <li class="current">热门</li>
        <li class="">建材</li>
        <li class="">家具</li>
        <li class="">软装</li>
        <li class="">家电</li>
      </ul>
    </div>
    <!-- 图片 -->
    <div class="allbrandlist">
      <ul>
        <li v-for="(item,index) in allbrandlist" :key="index">
          <img :src="require(`../../assets/12pinpaiku/pinpailogo/${item.img}`)" alt="">
          <p>{{item.titlename}}</p>
        </li>
      </ul>
    </div>

    <!-- 页脚 -->
    <div class="">
      <allfooter></allfooter>
    </div>
  </div>
</template>
<script>
import Header from './Header'
import Footer from './Footer'
import Loginshead from './Loginshead'
export default {
  data(){
    return{
      allbrandlist:[],
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "loginshead":Loginshead,
  },
  methods: {
    allbrand_list(){
      var url="allbrand/alllogo";
      this.axios.get(url).then(result=>{
        this.allbrandlist=result.data.data;
      })
    }
  },
  created() {
    this.allbrand_list();
  },
}
</script>
<style scoped>
.allstyle{
  overflow: hidden;
}
ul{
  list-style: none;
}
/* 导航栏 */
.allbrandnav ul{
  padding-left:0;
  padding-bottom: 10px;
  display: flex;
  justify-content: space-around;
  border-bottom: 1px solid #aaa;
}
/* 品牌图片列表 */
.allbrandlist ul{
  padding-left:0;
  display:flex;
  flex-wrap: wrap;
}
.allbrandlist ul li{
  width:47%;
  margin:5px;
  padding:0;
  flex-direction: column;
  text-align: center;
}
.allbrandlist img{
  width:100%;
}
.allbrandlist p{
  width:100%;
  background:rgba(0,0,0,0.2);
  color:#fff;
  font-size:16px;
  padding:3px;
}

</style>
