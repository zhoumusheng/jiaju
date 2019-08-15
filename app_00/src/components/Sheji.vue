<template>
  <div class="sheji">
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <div class="shouyecarousel">
      <carousel :list="datacarsheji"></carousel>
    </div>
    <div>
      <tuwen v-for="(item,index) in datashejituwen" :key="index" :cid="item.cid" :title="item.title" :imgurl="require(`../assets/4sheji/${item.img}`)" :tag="item.tag" :itemClick="clickitem"></tuwen>
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
      datacarsheji:[],
      datashejituwen:[]
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "carousel":Carousel,
    "tuwen":Tuwen,
  },
  methods:{
    data_carsheji(){
      var url="sheji/sjcarousel";
      this.axios.get(url).then(result=>{
        this.datacarsheji=result.data.data;
      })
    },
    data_shejituwen(){
      var url="sheji/sjlist";
      this.axios.get(url).then(result=>{
        this.datashejituwen=result.data.data;
      })
    },
    clickitem(cid){
      var url=`/tw/${cid}`;
      this.$router.push(url);
      // console.log(cid)
    }
  },
  created() {
    this.data_carsheji();
    this.data_shejituwen();
  }
}
</script>
<style scoped>
.sheji{
  overflow: hidden;
}
</style>