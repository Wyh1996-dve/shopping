<template>
   <div>
     <mt-button @click="back()" icon="back" slot="right" style="width:10%;position: absolute;left:5px;height:52px;background-color:rgb(215, 215, 215);border-radius:0;"></mt-button>
     <mt-search id="search" style="width:90%;float:right;" cancel-text="取消" placeholder="城市"></mt-search>
     <div style="position:absolute; top:80px;"><span id="address" style="margin-right:10px;"></span><span>定位城市</span></div>
    <mt-index-list id="d1" style="position:absolute; top:110px;text-align: left;">
      <mt-index-section index="#">
        <mt-cell class="c1" title="北京"></mt-cell>
        <mt-cell class="c1" title="上海"></mt-cell>
        <mt-cell class="c1" title="西安"></mt-cell>
        <mt-cell class="c1" title="杭州"></mt-cell>
      </mt-index-section>
      <mt-index-section index="B">
        <mt-cell class="c1" title="北京"></mt-cell>
      </mt-index-section>
      <mt-index-section index="C">
        <mt-cell class="c1" title="重庆"></mt-cell>
        <mt-cell class="c1" title="成都"></mt-cell>
        <mt-cell class="c1" title="长沙"></mt-cell>
        <mt-cell class="c1" title="长春"></mt-cell>
        <mt-cell class="c1" title="常州"></mt-cell>
      </mt-index-section>
      <mt-index-section index="D">
        <mt-cell class="c1" title="大连"></mt-cell>
      </mt-index-section>
      <mt-index-section index="F">
        <mt-cell class="c1" title="福州"></mt-cell>
        <mt-cell class="c1" title="佛山"></mt-cell>
      </mt-index-section>
      <mt-index-section index="G">
        <mt-cell class="c1" title="广州"></mt-cell> 
      </mt-index-section>
      <mt-index-section index="H">
        <mt-cell class="c1" title="杭州"></mt-cell>
        <mt-cell class="c1" title="合肥"></mt-cell>
        <mt-cell class="c1" title="哈尔滨"></mt-cell>
        <mt-cell class="c1" title="呼和浩特"></mt-cell>
        <mt-cell class="c1" title="海口"></mt-cell>
        <mt-cell class="c1" title="惠州"></mt-cell>
      </mt-index-section>
      <mt-index-section index="J">
        <mt-cell class="c1" title="济南"></mt-cell>
      </mt-index-section>
      <mt-index-section index="K">
        <mt-cell class="c1" title="昆明"></mt-cell>
      </mt-index-section>
      <mt-index-section index="L">
        <mt-cell class="c1" title="临祈"></mt-cell>
        <mt-cell class="c1" title="成都"></mt-cell>
      </mt-index-section>
      <mt-index-section index="N">
        <mt-cell class="c1" title="南京"></mt-cell>
        <mt-cell class="c1" title="南宁"></mt-cell>
        <mt-cell class="c1" title="南昌"></mt-cell>
        <mt-cell class="c1" title="宁波"></mt-cell>
      </mt-index-section>
      <mt-index-section index="Q">
        <mt-cell class="c1" title="青岛"></mt-cell>
        <mt-cell class="c1" title="泉州"></mt-cell>
      </mt-index-section>
      <mt-index-section index="S">
        <mt-cell class="c1" title="上海"></mt-cell>
        <mt-cell class="c1" title="沈阳"></mt-cell>
        <mt-cell class="c1" title="苏州"></mt-cell>
        <mt-cell class="c1" title="深圳"></mt-cell>
        <mt-cell class="c1" title="石家庄"></mt-cell>
      </mt-index-section>
      <mt-index-section index="T">
        <mt-cell class="c1" title="天津"></mt-cell>
        <mt-cell class="c1" title="太原"></mt-cell>
      </mt-index-section>
      <mt-index-section index="W">
        <mt-cell class="c1" title="武汉"></mt-cell>
        <mt-cell class="c1" title="温州"></mt-cell>
        <mt-cell class="c1" title="无锡"></mt-cell>
      </mt-index-section>
      <mt-index-section index="X">
        <mt-cell class="c1" title="西安"></mt-cell>
        <mt-cell class="c1" title="厦门"></mt-cell>
      </mt-index-section>
      <mt-index-section index="Y">
        <mt-cell class="c1" title="银川"></mt-cell>
        <mt-cell class="c1" title="宜昌"></mt-cell>
      </mt-index-section>
      <mt-index-section index="Z">
        <mt-cell class="c1" title="郑州"></mt-cell>
        <mt-cell class="c1" title="珠海"></mt-cell>
        <mt-cell class="c1" title="淄博"></mt-cell>
        <mt-cell class="c1" title="中山"></mt-cell>
      </mt-index-section>
    </mt-index-list>
   </div>
</template>
<script>
export default {
  data(){
    return {
    }
  },
  methods:{
    showposition(){
      let gl = window.navigator.geolocation;
      gl.getCurrentPosition((result)=>{
      let long = result.coords.longitude;
      let lat = result.coords.latitude;
      let coder = new BMap.Geocoder();
      let point = new BMap.Point(long, lat) // 坐标点
      coder.getLocation(point, result=>{
        let add=document.getElementById('address');
        if(result!==null){
           add.innerHTML=result.addressComponents.city;
        }else{
          add.innerHTML='定位失败';
        }
      })
    })
    },
    back(){
                this.$router.replace('/')
            },
    loadposition(){
      let unal=document.getElementById('d1');
      var uu=unal.getElementsByClassName("c1");
      let dw=document.getElementById('address');
      dw.onclick=()=>{
        this.$store.state.city=dw.innerText;
        this.$router.replace('/');
      }
      uu.forEach(item=>{
        item.onclick=()=>{
          this.$store.state.city=item.innerText;
          this.$router.replace('/');
          }
      });
    }
  },
  mounted(){
      this.showposition();
      this.loadposition();
  }
}
</script>

<style scoped>

</style>
