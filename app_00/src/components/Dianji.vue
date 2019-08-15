<template>
	 <div>
        
          <i class="iconfont  icon-zhishi"  @click="showToggle"></i>
        
        <div v-show="!isShow">要显示与隐藏的内容块</div>
    </div>
</template>

<script>
	export default {
	  data () {
	      return {
	          isShow: true,
	          // btnText: "隐藏",
	      }
       },
	   methods:{
            showToggle(){
                this.isShow = !this.isShow
                // if(this.isShow){
                //     this.innerHTML = "&and;"
                // }else{
                //     this.innerHTML = "&or;"
                // }
            }
        }
  }
</script>
<style scoped>

</style>
