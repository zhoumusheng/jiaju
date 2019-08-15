<template>
<!-- 品牌大全里的英文字母列表公用组件 -->
  <div>
    <div class="fold-list">
      <div class="m-title" @click="clickon(index)" v-for="(item,index) in foldlist" :key="index">
        <p>{{item}}</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
    <!-- <div>
      <div class="m-title" @click="click2">
        <p>B</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click3">
        <p>C</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click4">
        <p>D</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click5">
        <p>E</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click6">
        <p>F</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click7">
        <p>G</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click8">
        <p>H</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click9">
        <p>I</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click10">
        <p>J</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click11">
        <p>K</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click12">
        <p>L</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click13">
        <p>M</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click14">
        <p>N</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click15">
        <p>O</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click16">
        <p>P</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click17">
        <p>Q</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>R</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>S</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>T</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>U</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>V</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>W</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>Y</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>Z</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
      <div class="m-title" @click="click">
        <p>其他</p>
        <i class="iconfont icon-zhishi"></i>
      </div>
    </div>-->
    </div>
    <div>
      <ul v-for="(item2,ind) in Alist" :key="ind" class="listA" v-show="isShow">
        <li>{{item2}}</li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      isShow:false,
      
      foldlist:["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","其他"],
      Alist:[                
        "A.O.史密斯","ABB","AINLAN","Alessi","Anmon","ARCA","Artemide","ARTSLIGHT","阿波罗卫浴","阿尔贝娜","阿发","阿雷佐","阿洛尼","阿茂灯饰","阿姆斯壮","埃尔顿","埃飞灵","埃美柯","埃特纳","艾邦照明","艾迪迈斯瓷砖","艾戈恋家","艾克诗顿","艾克斯顿","艾普瑞","艾瑞亚家居","艾思妮","艾斯蓝","艾维斯","艾西米兰","爱德朗","爱德普","爱德视","爱迪龙","爱迪胜","爱尔卡","爱尔诗陶瓷","爱迩美","爱格地板","爱克华莱","爱朗仕","爱琴海"
      ],
    }
  },
  methods:{
    clickon(index){
      this.isShow=!this.isShow;
    }
  }
}
</script>
<style scoped>
/* 英文字母导航列表 */
.fold-list .m-title{
  padding:8px;
  border-top:1px solid #ccc;
  display:flex;
  justify-content: space-between;
}
.fold-list .m-title P{
  margin:0;
  padding:0;
  color:#333;
  font-size:18px;
  font-weight:500;
}
.m-title:last-child{
  border-bottom:1px solid #ccc;
  margin-bottom:20px;
}
</style>
