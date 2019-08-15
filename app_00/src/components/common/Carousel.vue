<template>
  <div class="app-turns">
    <mt-swipe :auto="4000">
      <mt-swipe-item v-for="(item,i) of list" :key="i">
        <img :src="require(`../../assets/1carousel/${item.img}`)" @click="detail" :data-cid="item.cid" alt="">
        <span style="width:100%;height:48px;">{{item.title}}</span>
      </mt-swipe-item>
    </mt-swipe>
  </div>
</template>
<script>
export default {
  name:"carousel",
  props:["list"],//接收父组件数据
  
  // props:{
  //   imgSrc:{default:""},
  //   title:{type:String,default:""},
  // },
  data(){
    return{}
  },
  methods:{
    detail(e){
      var cid=e.target.dataset.cid;
      var url=`/GoodsInfo/${cid}`;
      this.$router.push(url);
    },
  },
  created() {
    // console.log(this.list)
  },
}
</script>
<style scoped>
/* .alltitle{
  width:100%;
  height:48px;
} */
.mint-swipe{
  height:265px;
  overflow: hidden;
}
.mint-swipe img{
  width:100%;
  height:200px;
}
.mint-swipe-indicator{
  opacity: 0.5;
}
.is-active{
  background-color:lightcoral;
}
</style>
