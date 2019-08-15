<template>
  <div class="sheji">
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <div>
      <carousel :list="datacarzhuangshi"></carousel>
    </div>
    <div>
      <tuwen v-for="(item,index) in datazhuangshituwen" :key="index" :cid="item.cid" :title="item.title" :imgurl="require(`../assets/6zhuangshi/${item.img}`)" :tag="item.tag" :itemClick="clickitem"></tuwen>
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
      datacarzhuangshi:[],
      datazhuangshituwen:[]
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "carousel":Carousel,
    "tuwen":Tuwen,
  },
  methods:{
    data_carzhuangshi(){
      var url="zhuangshi/zscarousel";
      this.axios.get(url).then(result=>{
        this.datacarzhuangshi=result.data.data;
      })
    },
    data_zhuangshituwen(){
      var url="zhuangshi/zslist";
      this.axios.get(url).then(result=>{
        this.datazhuangshituwen=result.data.data;
      })
    },
    clickitem(cid){
      var url=`/tw/${cid}`;
      this.$router.push(url);
      // console.log(cid)
    }
  },
  created() {
    this.data_carzhuangshi();
    this.data_zhuangshituwen();
  }
}
</script>
<style scoped>
.sheji{
  overflow: hidden;
}
</style>