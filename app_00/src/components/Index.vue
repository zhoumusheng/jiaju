<template>
  <div class="page-tabbar">
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <div class="shouyecarousel">
      <carousel :list="datacar"></carousel>
    </div>
    <div>
      <tuwen v-for="(item,index) in datatuwen" :key="index" :cid="item.cid" :title="item.title" :imgurl="require(`../assets/2shouyetuwen/${item.img}`)" :tag="item.tag" :itemClick="clickitem"></tuwen>
    </div>
    <div class="">
      <allfooter></allfooter>
    </div>
  </div>
</template>
<script>
import Header from './common/Header'
import Footer from './common/Footer'
import Carousel from './common/Carousel'
import Tuwen from './common/Tuwen'
export default {
  data(){
    return{
      datacar:[],
      datatuwen:[],
    }
  },
  components:{//组件注册
    "allheader":Header,
    "allfooter":Footer,
    "carousel":Carousel,
    "tuwen":Tuwen,
  },
  methods:{
    data_car(){
      var url="Index/sycarousel";
      this.axios.get(url).then(result=>{
        this.datacar=result.data.data;
      })
    },
    data_tuwen(){
      var url="Index/sylist";
      this.axios.get(url).then(result=>{
        this.datatuwen=result.data.data;
      })
    },
    clickitem(cid){
      var url=`/index/${cid}`;
      this.$router.push(url);
      // console.log(cid)
    }
  },
  created(){
    this.data_car();
    this.data_tuwen();
  }
}
</script>
<style scoped>
.page-tabbar{
  overflow: hidden;
}
</style>
