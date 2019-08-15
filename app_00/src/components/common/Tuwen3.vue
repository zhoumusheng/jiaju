<template>
<!-- ????????3 -->
  <!-- <div class="liststyle"> -->
    <div class="pptuwenlist" @click="itemClick(cid)">
      <div class="imgbackground">
        <img :src="ppimgurl" alt="">
      </div>
      <p class="pptitle">{{title}}</p>
      <div class="allprice">
        <span class="ppprice">￥{{price}}</span>
        <span class="pporiginal">￥{{original}}</span>
      </div>
    </div>
  <!-- </div> -->
</template>
<script>
export default {
  data(){
    return{}
  },
  props:{
    cid:{default:""},
    ppimgurl:{default:""},
    title:{type:String,default:""},
    price:{type:Number,default:""},
    original:{default:""},
    itemClick:{type:Function}
  }
}
</script>
<style scoped>
.pptuwenlist{
  width:48%;
  margin:0 3px;
  padding: 5px 0 15px 0;
}
.imgbackground{
  height: 182px;
  display: table-cell;
  vertical-align: middle;
  background:#fff;
}
.pptuwenlist img{
  width:100%;
  height:150px;
  font-style:normal;
}
.pptitle{
  margin:8px 0;
  font-size:14px;
  color:#333;
}
.pptuwenlist .allprice{
  padding:5px;
  display: flex;
  justify-content: start;
}
.ppprice{
  color:#77c111;
  font-size:20px;
  margin-right: 15px;
}
.allprice .pporiginal{
  font-size: 16px;
  color:#999;
}
</style>
