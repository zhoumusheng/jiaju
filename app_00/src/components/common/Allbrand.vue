<template>
<!-- 品牌大全页面 -->
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
      <ul class="allbrandnavul">
        <li class="current">热门</li>
        <li class="">建材</li>
        <li class="">家具</li>
        <li class="" >软装</li>
        <li class="">家电</li>
      </ul>
    </div>
    <!-- 图片 -->
    <!-- 综合 -->
    <div class="allbrandlist1">
    <div class="allbrandlist2">
      <div id="zonghe" class="allbrandlist">
        <ul>
          <li v-for="(item,index) in allbrandlist" :key="index">
            <img :src="require(`../../assets/12pinpaiku/pinpailogo/${item.img}`)" alt="">
            <p>{{item.titlename}}</p>
          </li>
        </ul>
      </div>
      <!-- 建材 -->
      <div id="jiancai" class="allbrandlist">
        <ul>
          <li v-for="(item,index) in allbrandlist2" :key="index">
            <img :src="require(`../../assets/12pinpaiku/pinpailogo/${item.img}`)" alt="">
            <p>{{item.titlename}}</p>
          </li>
        </ul>
        <div>
          <foldlist1></foldlist1>
        </div>
      </div>
      <!-- 家具 -->
      <div id="jiaju" class="allbrandlist">
        <ul>
          <li v-for="(item,index) in allbrandlist3" :key="index">
            <img :src="require(`../../assets/12pinpaiku/pinpailogo/${item.img}`)" alt="">
            <p>{{item.titlename}}</p>
          </li>
        </ul>
        <div>
          <foldlist2></foldlist2>
        </div>
      </div>
      <!-- 软装 -->
      <div id="ruanzhuang" class="allbrandlist">
        <ul>
          <li v-for="(item,index) in allbrandlist4" :key="index">
            <img :src="require(`../../assets/12pinpaiku/pinpailogo/${item.img}`)" alt="">
            <p>{{item.titlename}}</p>
          </li>
        </ul>
        <div>
          <foldlist2></foldlist2>
        </div>
      </div>
      <!-- 家电 -->
      <div id="jiadian" class="allbrandlist">
        <ul>
          <li v-for="(item,index) in allbrandlist5" :key="index">
            <img :src="require(`../../assets/12pinpaiku/pinpailogo/${item.img}`)" alt="">
            <p>{{item.titlename}}</p>
          </li>
        </ul>
        <div>
          <foldlist2></foldlist2>
        </div>
      </div>
    </div>
    </div>
    <!-- 生活服务 -->
    <div>
      <lifeservice></lifeservice>
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
import Lifeservice from './Lifeservice'
import Foldlist1 from './Foldlist1'
import Foldlist2 from './Foldlist2'
export default {
  data(){
    return{
      allbrandlist:[],
      allbrandlist2:[],
      allbrandlist3:[],
      allbrandlist4:[],
      allbrandlist5:[],
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "loginshead":Loginshead,
    "lifeservice":Lifeservice,
    "foldlist1":Foldlist1,
    "foldlist2":Foldlist2,
  },
  methods: {
    allbrand_list(){
      var url="allbrand/alllogo";
      this.axios.get(url).then(result=>{
        this.allbrandlist=result.data.data;
      })
    },
    allbrand_list2(){
      var url="allbrand/brandjc";
      this.axios.get(url).then(result=>{
        this.allbrandlist2=result.data.data;
      })
    },
    allbrand_list3(){
      var url="allbrand/brandjj";
      this.axios.get(url).then(result=>{
        this.allbrandlist3=result.data.data;
      })
    },
    allbrand_list4(){
      var url="allbrand/brandrz";
      this.axios.get(url).then(result=>{
        this.allbrandlist4=result.data.data;
      })
    },
    allbrand_list5(){
      var url="allbrand/brandjd";
      this.axios.get(url).then(result=>{
        this.allbrandlist5=result.data.data;
      })
    },
  },
  created() {
    this.allbrand_list();
    this.allbrand_list2();
    this.allbrand_list3();
    this.allbrand_list4();
    this.allbrand_list5();
  },
  mounted() {
    var abnv=document.getElementsByClassName("allbrandnavul")[0];
    var abl2=document.getElementsByClassName("allbrandlist2")[0];
    var abnv2=abnv.getElementsByTagName("li");

    for(var i=0;i<abnv2.length;i++){
      abnv2[i].index=i;
      abnv2[i].onclick=function(){
        for(var i=0;i<5;i++)abnv2[i].className="";
        this.className="current";
        abl2.style.left=-this.index*100+"%";
        
      }
    }
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
  display: flex;
  justify-content: space-around;
  border-bottom: 1px solid #aaa;
}
.allbrandnav li{
  width:100%;
  padding-bottom: 10px;
  text-align: center;
}
.allbrandnav .current{
  border-bottom:2px solid #77c111;
}
/* 品牌图片列表 */
.allbrandlist>ul{
  width:100%;
  padding-left:0;
  display:flex;
  flex-wrap: wrap;
}
.allbrandlist2{
  width:500%;
  display: flex;
  position: relative;
  top:0;
  left: 0;
  transition:left 0.3s;
}
.allbrandlist1{
  width:100%;
  overflow: hidden;
}
.allbrandlist2>div{
  width:100%;
  height:auto;
}
.allbrandlist>ul>li{
  width:47%;
  margin:5px;
  padding:0;
  flex-direction: column;
  text-align: center;
}
.allbrandlist>ul>li>img{
  width:100%;
  height: 98px;
}
.allbrandlist>ul>li>p{
  width:100%;
  background:rgba(0,0,0,0.2);
  color:#fff;
  font-size:16px;
  padding:3px;
}


</style>
