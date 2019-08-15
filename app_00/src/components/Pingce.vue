<template>
  <div class="allstyle">
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <div>
      <carousel :list="datacarpingce"></carousel>
    </div>
    <div class="tuwen">
      <tuwen v-for="(item,index) in datapingcetuwen" :key="index" :cid="item.cid" :title="item.title" :imgurl="require(`../assets/8pingce/${item.img}`)" :tag="item.tag" :itemClick="clickitem"></tuwen>
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
      datacarpingce:[],
      datapingcetuwen:[]
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "carousel":Carousel,
    "tuwen":Tuwen,
  },
  methods:{
    data_carpingce(){
      var url="Pingce/pccarousel";
      this.axios.get(url).then(result=>{
        this.datacarpingce=result.data.data;
      })
    },
    data_pingcetuwen(){
      var url="Pingce/pclist";
      this.axios.get(url).then(result=>{
        this.datapingcetuwen=result.data.data;
      })
    },
    clickitem(cid){
      var url=`/tw/${cid}`;
      this.$router.push(url);
      // console.log(cid)
    }
  },
  created() {
    this.data_carpingce();
    this.data_pingcetuwen();
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