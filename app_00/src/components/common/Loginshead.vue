<template>
  <div class="loghead">
    <i class="iconfont icon-huaban" @click="homeClick"></i>
    <span class="logheadtitle">{{loginsheadtitle}}</span>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  },
  props:{
    loginsheadtitle:{default:""}
  },
  methods:{
    homeClick(){
      this.$router.push('/Index')
    }
  }
}
</script>
<style scoped>
.loghead{
  width:100%;
  margin:0;
  padding:0;
  background:#2f2f2f;
  height:50px;
  line-height:50px;
  display:flex;
}
.iconfont{
  margin:0 15px;
  font-size:30px;
  color:#f5f5f5;
}
.logheadtitle{
  height:50px;
  margin-left:10px;
  color:#f5f5f5;
  font-size:18px;
  font-weight: blod;
}
</style>
