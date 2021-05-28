<template>
  <div>
    <mt-navbar id="nar" style="width:60%;position:fixed;top:0px;left:0;z-index:1;">
      <mt-tab-item class="n1" id="1" >演出</mt-tab-item>
      <mt-tab-item class="n1" id="2" >周边</mt-tab-item>
      <mt-tab-item class="n1" id="3" >众筹</mt-tab-item>
    </mt-navbar>
    <mt-navbar style="position:fixed;top:0px;right:0px;background-color:#fff;width:45%;height:46px;z-index:1;">
      <div id="dw" class="h1" style="float:left;width:20px;height:20px;margin-right:10px;margin-top:10px;"><img style="width:100%;height:100%;" src="../assets/address-Fill.svg"></div>
      <span class="h1" style="margin:10px 10px;">{{city}}</span>
      <mt-button @click="sousuo()" style="position:absolute;right:20px;"><img style="width:20px;height:15px;" src="../assets/tubiao/search.svg" alt=""></mt-button>
    </mt-navbar>
    <div
        infinite-scroll-distance="10" 
        v-infinite-scroll="loadmore"
        infinite-scroll-disabled="busy"
        >
      <div id="a1">
      <div id="d1">
      <router-link to="#">
        <mt-swipe  id="lunbo" class="mtswipe" 
            :style="{height: swipeHeight}"
            :auto="2000"
            :speed="150"  style="top:40px;">
            <mt-swipe-item v-for="(item,i) in lunbo" :key="i">
                <img :src="item.image" alt="">
            </mt-swipe-item>
         </mt-swipe>
      </router-link>
    </div>
    <div style="position:absolute;top:230px;">
      <h3 style="position:absolute;left:0px;">精选演出</h3>
       <router-link :to="`/details?lid=${item.lid}`" v-for="(item,i) in jx" :key="i" style="color:black;">
        <div class="yanc">
          <img style="width:100%;height:100%;" :src="item.avatar" alt="">
          <p style="font-size:10px;">{{item.heading}}</p>
          <p style="font-size:10px;">{{item.keyword}}</p>
        </div>
       </router-link>
    </div>
    <div style="position:absolute;top:450px;left:10px;width:100%;text-align:left;">
      <van-dropdown-menu style="width:60%;position:absolute;">
          <van-dropdown-item id="o1" v-model="value1" :options="option1" />
          <van-dropdown-item id="o2" v-model="value2" :options="option2" />
      </van-dropdown-menu>
      <router-link to="/data" style="float:right;margin-right:20px;">
        <img style="width:30px;height:30px;" src="../assets/tubiao/Days.svg" alt="">
      </router-link>
    </div>
    <div style="position:absolute;top:520px;left:0;">
        <router-link :to="`/details?lid=${item.lid}`" v-for="(item,i) in yanchu" :key="i" style="display:flex;text-align:left;text-decoration:none;padding:10px 0;">
          <div><img style="width:80px;height:120px;margin-left:10px;" v-if="item.avatar" v-lazy="item.avatar" alt=""></div>
          <div style="margin-left:15px;color: darkgrey;">
            <p style="color:black;font-weight:700;">{{item.heading}}</p>
            <p><span>{{item.city}}</span>{{item.address}}</p>
            <p>{{item.data}}</p>
            <p>{{item.keyword}}</p>
            <p style="color:red;font-weight:700;">{{item.price}}</p>
          </div>
        </router-link>
    </div>
      </div>
      <div id="a2" style="display:none;">
      <div style="width:100%;height:50px;position:absolute;top:70px;"><img style="width:100%;height:100%;" src="../assets/zb/z1.jpg" alt=""></div>
      <div style="position:relative;top:150px;">
          <router-link :to="`/product?solgan=${item.solgan}&&image=${item.image}&&head=${item.head}`" v-for="(item,i) in band" :key="i" style="display:block;width:90%;height:200px;margin:20px auto;">
              <img style="width:100%;height:100%;" :src="item.image" alt="">
          </router-link>
          <div>
            <router-link to="#" v-for="(item,i) in product" :key="i" style="display:block;float:right;width:50%;height:200px;margin:20px auto;text-decoration:none;text-align:left;color:black;">
              <div style="padding:0 20px;"><img style="width:100%;height:100%;" :src="item.image" alt=""></div>
              <p style="padding:0 20px;">{{item.title}}</p>
              <p style="padding:0 20px;color:red;">￥{{item.price}}</p>
          </router-link>
          </div>
      </div>
      </div>
      <div id="a3" style="display:none;">
        <router-link to="#" v-for="(item,i) in zhongchou" :key="i" style="display:block;width:100%;text-decoration: none;color:black;">
          <div><img style="width:90%;height:70%;" :src="item.image" alt=""></div>
          <p class="zc" style="">{{item.title}}</p>
          <p class="zc"><span style=" display:inline-block;border-right:1px solid lightgray;padding-right:15px;">￥{{item.price}}</span><span style=" display:inline-block;padding-right:15px;padding:0 15px;">支持</span><span style=" display:inline-block;border-left:1px solid lightgray;padding-left:15px;">天剩余</span></p>
          <p class="zc" style="width:100%;padding-bottom:50px;"><span style="display:inline-block;border:1px solid red;color:red;padding:0 5px;margin-right:10px;">预售</span><span>专辑唱片</span><span style="float:right;margin-right:50px;">众筹进度%</span></p>
        </router-link>
      </div>
    </div>
    <mt-tabbar id="bottom" v-model="selected" fixed>
        <mt-tab-item id="shouye" v-model="selected">
          <img v-if="selected=='shouye'" slot="icon" src="../assets/shouye-b.svg">
          <img v-else slot="icon" src="../assets/shouye.svg">
            首页 
        </mt-tab-item>
        <mt-tab-item id="faxian">
          <img v-if="selected=='faxian'" slot="icon" src="../assets/faxian-b.svg">
          <img v-else slot="icon" src="../assets/faxian.svg">
          发现
          </mt-tab-item>
        <mt-tab-item id="xiaoxi">
          <img v-if="selected=='xiaoxi'" slot="icon" src="../assets/xiaoxi-b.svg">
          <img v-else slot="icon" src="../assets/xiaoxi.svg">
          消息</mt-tab-item>
        <mt-tab-item id="me">
          <img v-if="selected=='wode'" slot="icon" src="../assets/wode-b.svg">
          <img v-else slot="icon" src="../assets/wode.svg">
            我的
        </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>


export default {
  data(){
    return {
      swipeHeight: '0px',
      selected:'shouye',
      yanchu:[],
      city:'',
      busy:false,
      band:[],
      product:[],
      zhongchou:[],
      lunbo:[],
      jx:[],
       value1: 0,
      value2: 'a',
      option1: [
        { text: '全部风格', value: 0 },
        { text: '儿童亲子', value: 1 },
        { text: '摇滚', value: 2 },
        { text: '古典', value: 3 },
        { text: '独立', value: 4 },
        { text: '脱口秀', value: 5 },
        { text: '曲苑杂坛', value: 6 },
        { text: '话剧歌剧', value: 7 },
        { text: '流行', value: 8 },
        { text: 'HipHop', value: 9 },
        { text: '民谣', value: 10 },
        { text: '金属', value: 11 },
        { text: '布鲁斯', value: 12 },
        { text: '轻音乐', value: 13 },
        { text: '电子', value: 14 },
        { text: '朋克', value: 15 }
      ],
      option2: [
        { text: '综合排序', value: 'a' },
        { text: '最热演出', value: 'b' },
        { text: '近期上演', value: 'c' },
      ],
    }    
  },
  watch:{
    value1(){
      let _city=this.$store.state.city;
      let newvalue=this.option1[this.value1].text;
      if(newvalue=='全部风格'){
        this.loadyanchu();
      }else{
        this.axios.get(`/yc/${_city}&&${newvalue}`).then(res=>{
          res.data.results.forEach(item => {
            if(item.avatar){ // 存在
              item.avatar= require(`../assets/yc/${item.avatar}`)
            }
          })
          this.yanchu=res.data.results;
      })
      }
    }
  },
  methods:{
    /** 无限滚动触底后，执行loadmore */
   loadmore(){
        // 设置busy=true
        this.busy = true;
   },
   initSwipeHeight(){
        // 通过公式  计算轮播图应该设置的高度 
        let picwidth = 734;
        let picheight = 310;
        let screenwidth = window.screen.width;
        let height = Math.floor((picheight * screenwidth) / picwidth)+"px";
        this.swipeHeight = height;
   },
   sousuo(){
      this.$router.replace('/search');
   },
   loadposition(){
       let c=this.$store.state.city;
       this.city=this.$store.state.city;
   },
   loaddw(){
     let _dw=document.getElementById('dw');
        _dw.onclick=()=>{
          this.$router.replace('/position');
        }
   },
   //导航栏切换
   loadNav(){
     let _nar=document.getElementById('nar');
     let a=_nar.getElementsByClassName('n1')[0];
     let b=_nar.getElementsByClassName('n1')[1];
     let c=_nar.getElementsByClassName('n1')[2];
     let _a1=document.getElementById('a1');
     let _a2=document.getElementById('a2');
     let _a3=document.getElementById('a3');
     a.onclick=()=>{
        let _h1=document.getElementsByClassName('h1');
         _h1.forEach(item=>{
         item.style.display='block'
       });
       _a1.style.display='block';
       _a2.style.display='none';
       _a3.style.display='none';
     }
     b.onclick=()=>{
       let _h1=document.getElementsByClassName('h1');
       console.log(_h1)
       _a1.style.display='none';
       _a2.style.display='block';
       _a3.style.display='none';
       _h1.forEach(item=>{
         item.style.display='none'
       })
     }
     c.onclick=()=>{
       _a1.style.display='none';
       _a2.style.display='none';
       _a3.style.display='block';
     }
   },
   loadyanchu(){
     this.axios.get(`/yanchu/${this.city}`).then(res=>{
         res.data.results.forEach(item => {
            if(item.avatar){ // 存在
              item.avatar= require(`../assets/yc/${item.avatar}`)
            }
     })
     this.yanchu=res.data.results;
     })
   },
   loadband(){
     this.axios.get('/band').then(res=>{
        res.data.results.forEach(item=>{
          if(item.image){
             item.image=require(`../assets/zb/${item.image}`)
          }
        })
        this.band=res.data.results
     })
   },
   loadproduct(){
     this.axios.get('/product').then(res=>{
       res.data.results.forEach(item=>{
          if(item.image){
             item.image=require(`../assets/product/${item.image}`)
          }
        })
        this.product=res.data.results
     })
   },
   loadzhongchou(){
    this.axios.get('/zhongchou').then(res=>{
       res.data.results.forEach(item=>{
          if(item.image){
             item.image=require(`../assets/zc/${item.image}`)
          }
        })
        this.zhongchou=res.data.results
     })
   },
   loadlunbo(){
     let _city=this.$store.state.city;
     this.axios.get(`/lunbo/${_city}`).then(res=>{
       res.data.results.forEach(item=>{
          if(item.image){
             item.image=require(`../assets/lunbo/${item.image}`)
          }
        })
        this.lunbo=res.data.results;
     })
   },
   loadjingxuan(){
     let _city=this.$store.state.city;
     this.axios.get(`/jx/${_city}&&${'精选'}`).then(res=>{
          res.data.results.forEach(item=>{
          if(item.avatar){
             item.avatar=require(`../assets/yc/${item.avatar}`)
          }
        })
        this.jx=res.data.results;
     })
   },
   
  },
  mounted(){
    //无限滚轮
    this.loadmore();
    // 初始化轮播图的高度
      this.initSwipeHeight();
    //获取定位
      this.loadposition();
    //跳转到定位页面
      this.loaddw();
    //导航栏切换
      this.loadNav();
    //加载演出列表
    this.loadyanchu();
    //获取周边乐队
    this.loadband();
    //获取产品列表
    this.loadproduct();
    //获取众筹列表
    this.loadzhongchou();
    //获取当前城市的轮播图
    this.loadlunbo();
    //获取精选列表
    this.loadjingxuan();
  }
}
</script>
<style scoped>
*{
  margin: 0;
  padding: 0;
}
.zc{
  text-align: left;
  margin:10px 20px;
}
#nar>span{
  color: black;
  font-size: 16px;
  padding-right: 10px;
}
#lunbo{
  border-radius: 2%;
  margin-top: 20px;
}
#lunbo img{
  width: 100%;
  height: 100%;
}
#bottom{
  color: black;
}
#yc>div>div{
    width:80px;
    height: 100px;
    border: 1px solid #eeeeee;
    float: left;
    margin-left: 5px;
}
.yanc{
   width:80px;
   height:90px;
   margin-top:30px;
   float: left;
   margin-right: 10px;
}
</style>