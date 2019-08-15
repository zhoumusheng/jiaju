<template>
<!-- 图文列表公用组件2 -->
  <div class="rootstyle" @click="itemClick(cid)">
    <div class="leftimg">
      <img :src="imgurl" alt="" class="imgstyle">
      <i class="iconfont icon-shipin"></i>
    </div>
    <div class="righttitle">
      <span class="titleable">{{title}}</span>
      <div class="titletag">
        <div>
        <i class="iconfont icon-icon_biaoti"></i>
        <span class="subtag">{{tag}}</span>
        </div>
        <span class="sptime">{{time}}</span>
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
    time:{type:String,defualt:""},
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
.leftimg{
  display:flex;
}
.leftimg .imgstyle{
  width:110px;
  height:73px;
}
.leftimg .iconfont{
  color:#fff;
  width:0.5rem;
  height:0.5rem;
  position: relative;
  left:-20px;
  bottom:-50px;
  z-index: 90;
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
  width:100%;
  position: absolute;
  bottom:0;
  display: flex;
}
.titletag .iconfont{
  color:#999;
  font-size:12px;
}
.subtag{
  color:#77c111;
  padding:5px;
  font-size:12px;
}
.titletag .sptime{
  font-size:12px;
  color:#aaa;
} 
</style>
