<template>
<!-- 品牌大全页面各子页面的倒数第二页脚 -->
  <div class="lifeservices">
    <p>生活服务</p>
    <ul>
      <li>
        <i class="iconfont icon-chupingban_shouji"></i>
        <p>专业IT</p>
      </li>
      <li>
        <i class="iconfont icon-qiche"></i>
        <p>汽车世界</p>
      </li>
      <li>
        <i class="iconfont icon-shishang" style="font-size:30px"></i>
        <p>时尚潮流</p>
      </li>
      <li>
        <i class="iconfont icon-qinzi-"></i>
        <p>亲子乐园</p>
      </li>
      <li>
        <i class="iconfont icon-qiabao"></i>
        <p>家居导购</p>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  }
}
</script>
<style scoped>
.lifeservices{
  background:#fff;
  padding-top:8px;
  margin-bottom:0; 
}
.lifeservices ul{
  padding-left: 0;
  list-style:none;
  display:flex;
  justify-content: space-around;
}
.lifeservices p{
  color:#333;
  font-size: 18px;
}
.lifeservices li{
  text-align: center;
}
.lifeservices .iconfont{
  color:#77c111;
  font-size:26px;
}
.lifeservices ul li p{
  font-size: 14px;
}
</style>
