<template>
  <div class="allstyle">
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <div>
      <carousel :list="datacarshenghuo"></carousel>
    </div>
    <div class="tuwen">
      <tuwen v-for="(item,index) in datashenghuotuwen" :key="index" :cid="item.cid" :title="item.title" :imgurl="require(`../assets/7shenghuo/${item.img}`)" :tag="item.tag" :itemClick="clickitem"></tuwen>
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
      datacarshenghuo:[],
      datashenghuotuwen:[]
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "carousel":Carousel,
    "tuwen":Tuwen,
  },
  methods:{
    data_carshenghuo(){
      var url="Shenghuo/shcarousel";
      this.axios.get(url).then(result=>{
        this.datacarshenghuo=result.data.data;
      })
    },
    data_shenghuotuwen(){
      var url="Shenghuo/shlist";
      this.axios.get(url).then(result=>{
        this.datashenghuotuwen=result.data.data;
      })
    },
    clickitem(cid){
      var url=`/tw/${cid}`;
      this.$router.push(url);
      // console.log(cid)
    }
  },
  created() {
    this.data_carshenghuo();
    this.data_shenghuotuwen();
  }
}
</script>
<style scoped>
.allstyle{
  overflow: hidden;
}
.tuwen{
  position: relative;
  top:20px;
}
</style>