<template>
  <div class="allstyle">
    <!-- 页头 -->
    <div>
      <allheader :headlogoimg="require('../assets/2shouyetuwen/head_bg.png')"></allheader>
    </div>
    <div style="width:100%;margin-top:100px;"></div>
    <!-- 图文 -->
    <div>
      <div class="zhuantituwen" v-for="(item,index) in datazhuantituwen" :key="index" @click="clickitem(cid)">
        <img :src="require(`../assets/10zhuanti/${item.img}`)" alt="">
        <span>{{item.title}}</span>
      </div>
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
export default {
  data(){
    return{
      datazhuantituwen:[]
    }
  },
  components:{
    "allheader":Header,
    "allfooter":Footer,
  },
  methods:{
    data_zhuantituwen(){
      var url="Zhuanti/ztlist";
      this.axios.get(url).then(result=>{
        this.datazhuantituwen=result.data.data;
      })
    },
    clickitem(cid){
      var url=`/zt/${cid}`;
      this.$router.push(url);
    }
    },
    created(){
      this.data_zhuantituwen();
  }
}
</script>
<style scoped>
.allstyle{
  overflow: hidden;
}
.zhuantituwen{
  position: relative;
  width:100%;
  display: flex;
  flex-direction: column;
}
.zhuantituwen img{
  width:100%;
  height:184px;
}
.zhuantituwen span{
  width:100%;
  padding:8px;
  margin:8px auto;
}
</style>
