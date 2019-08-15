<template>
  <div class="sheji">
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <div>
      <carousel :list="datacarzhuangxiu"></carousel>
    </div>
    <div>
      <tuwen v-for="(item,index) in datazhuangxiutuwen" :key="index" :cid="item.cid" :title="item.title" :imgurl="require(`../assets/5zhuangxiu/${item.img}`)" :tag="item.tag" :itemClick="clickitem"></tuwen>
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
      datacarzhuangxiu:[],
      datazhuangxiutuwen:[]
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "carousel":Carousel,
    "tuwen":Tuwen,
  },
  methods:{
    data_carzhuangxiu(){
      var url="zhuangxiu/zxcarousel";
      this.axios.get(url).then(result=>{
        this.datacarzhuangxiu=result.data.data;
      })
    },
    data_zhuangxiutuwen(){
      var url="zhuangxiu/zxlist";
      this.axios.get(url).then(result=>{
        this.datazhuangxiutuwen=result.data.data;
      })
    },
    clickitem(cid){
      var url=`/tw/${cid}`;
      this.$router.push(url);
      // console.log(cid)
    }
  },
  created() {
    this.data_carzhuangxiu();
    this.data_zhuangxiutuwen();
  }
}
</script>
<style scoped>
.sheji{
  overflow: hidden;
}
</style>