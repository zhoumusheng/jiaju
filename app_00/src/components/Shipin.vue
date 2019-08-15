<template>
  <div class="allstyle">
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <div>
      <carousel2 :list="datacarshipin"></carousel2>
    </div>
    <div class="tuwen">
      <tuwen2 v-for="(item,index) in datashipintuwen" :key="index" :cid="item.cid" :title="item.title" :time="item.time" :imgurl="require(`../assets/9shipin/${item.img}`)" :tag="item.tag" :itemClick="clickitem"></tuwen2>
    </div>
    <div class="">
      <allfooter></allfooter>
    </div>
  </div>
</template>
<script>
import Header from './common/Header'
import Footer from './common/Footer'
import Carousel2 from './common/Carousel2'
import Tuwen2 from './common/Tuwen2'
export default {
  data(){
    return{
      datacarshipin:[],
      datashipintuwen:[]
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
    "carousel2":Carousel2,
    "tuwen2":Tuwen2,
  },
  methods:{
    data_carshipin(){
      var url="Shipin/spcarousel";
      this.axios.get(url).then(result=>{
        this.datacarshipin=result.data.data;
      })
    },
    data_shipintuwen(){
      var url="Shipin/splist";
      this.axios.get(url).then(result=>{
        this.datashipintuwen=result.data.data;
      })
    },
    clickitem(cid){
      var url=`/tw/${cid}`;
      this.$router.push(url);
      // console.log(cid)
    }
  },
  created() {
    this.data_carshipin();
    this.data_shipintuwen();
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