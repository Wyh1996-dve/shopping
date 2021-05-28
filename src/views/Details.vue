<template>
    <div>
            
        <div id="head" style="position:fixed;z-index:1;">
            <div style="position:fixed;left:10px;" @click="back()"><img src="../assets/tubiao/back.svg" alt=""></div>
            <div style="position:fixed;right:10px;"><img src="../assets/tubiao/fx.svg" alt=""></div>
            <div style="position:fixed;right:40px"><img src="../assets/tubiao/kefu.svg" alt=""></div>
        </div>
        <div 
            infinite-scroll-distance="10" 
            v-infinite-scroll="loadmore"
            infinite-scroll-disabled="busy">  
        
            <div>    
                <div id="header" style="position:relative;top:50px">
                    <div  style="position:absolute;left:30px;top:20px;">
                        <div><img style="width:80px;height:100px;" :src="yanchu.avatar" alt=""></div>
                    </div>
                    <div  style="position:absolute;top:20px;right:10px;">
                        <p style="width:200px;height:200px;text-align:left;">{{yanchu.heading}}</p>
                        <p style="position:absolute;top:65px;text-align:left;">{{yanchu.keyword}}</p>
                        <button style="width:150px;height:40px;position:absolute;top:100px;right:20px;color:#000; border-radius:5%;">
                            <img style="width:20px;height:20px;" src="../assets/tubiao/shouzang_1.svg" alt="">
                            收藏
                        </button>
                    </div>
                </div>
            </div>
            <div style="position:relative;top:80px;">
                <div>
                    <div style="position:absolute;left:20px;">
                        <p style="font-size:20px;font-weight:700;color:red;text-align:left;">{{yanchu.price}}</p>
                        <p>{{yanchu.data}}</p>
                    </div>
                    <div style="position:absolute;right:20px;">
                        <div><img style="width:20px;height:20px;" src="../assets/tubiao/naozhong.svg" alt=""></div>
                        <p>开演提醒</p>
                    </div>
                </div>
                <div></div>
            </div>
            <div style="position:relative;top:160px; text-align:left;">
                <div><h3>演出详情</h3></div>
                <div>
                    
                </div>
                <div>
                    <h3>购票须知</h3><br>
                    <h4>退换票说明</h4><br>
                    <p>本场演出不支持换票，如无法正常观看，还请自行处理，给您带来不便敬请谅解</p><br>
                    <h4>入场方式</h4><br>
                    <p>本场演出实行实名制购票观演政策，一证一票<br>现场验票请观演人出示电子票二维码检验入场，无实体票</p><br>
                    <h4>观演方式</h4><br>
                    <p>场地内不设座位，均为站席关演</p><br>
                    <h4>禁止转票</h4><br>
                    <p>请勿发布任何形式的转票信息</p><br><br>
                    <p>演出时间不低于90分钟(以现场为准)</p>
                </div>
            </div>
         
        </div>
        <div style="position:fixed;bottom:0;z-index:1;width:100%;height:50px;background-color:#fff;">
            <div style="position:absolute;left:30px;top:20px;"><img style="width:20px;height:20px;" src="../assets/tubiao/xiaoxi.svg" alt=""></div>
            <button style="width:70%;height:30px;position:absolute;left:70px;top:20px;background-color:red;border:0;color:#fff;">立即购票</button>
        </div>
    </div>
</template>
<script>
export default {
  data(){
    return {
        busy:false,
        yanchu:{}
    }
  },
methods:{
        loadmore(){
            this.busy=true
        },
         back(){
                this.$router.replace('/')
        },
        loadyanchu(){
            let _lid=this.$route.query.lid;
            this.axios.get(`/details/${_lid}`).then(res=>{
            this.yanchu=res.data.results[0];
            this.yanchu.avatar= require(`../assets/yc/${this.yanchu.avatar}`);
            })
        }
},
 mounted(){
        this.loadmore(); 
        this.loadyanchu(); 
 }
}
</script>
<style scoped>
*{
    margin: 0;
    padding: 0;
}
#head{
    margin-top: 20px;
}
#header{
   height: 200px;
   background-color: burlywood;
}
#head>div>img{
    width: 20px;
    height: 20px;
  
}
</style>