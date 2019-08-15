<template>
<!-- 图文列表公用组件1 -->
  <div class="rootstyle" @click="itemClick(cid)">
    <div class="leftimg">
      <img :src="imgurl" alt="" class="imgstyle">
    </div>
    <div class="righttitle">
      <span class="titleable">{{title}}</span>
      <div class="titletag">
        <i class="iconfont icon-icon_biaoti"></i>
      <span class="subtag">{{tag}}</span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  },
  props:{
    cid:{defualt:""},
    imgurl:{default:""},
    title:{type:String,defualt:""},
    tag:{type:String,defualt:""},
    itemClick:{type:Function}
  }
}
</script>
<style scoped>
.rootstyle{
  width:100%;
  margin-top:20px;
  display:flex;
}
.leftimg .imgstyle{
  width:110px;
  height:73px;
}
.righttitle{
  padding:0 5px 0 10px;
  position: relative;
}
.titleable{
  color:#030000;
  font-size:17px;
}
.titletag{
  position: absolute;
  bottom:0;
}
.iconfont{
  color:#999;
  font-size:12px;
}
.subtag{
  color:#999;
  padding:5px;
  font-size:12px;
}
</style>
