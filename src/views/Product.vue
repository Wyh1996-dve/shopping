<template>
    <div>
        <div style="position:fixed;width:100%;top:10px;">
            <button @click="back()" class="b1" style="position:absolute;left:0;"><img style="width:20px;height:20px;" src="../assets/tubiao/back.svg" alt=""></button>
            <span style="color:#fff;display:none;">{{this.head}}</span>
            <button class="b1" style="position:absolute;right:40px;"><img style="width:20px;height:20px;" src="../assets/tubiao/fx.svg" alt=""></button>
            <button class="b1" style="position:absolute;right:0;"><img style="width:20px;height:20px;" src="../assets/tubiao/shopping.svg" alt=""></button>
        </div>
       <div infinite-scroll-distance="10" 
            v-infinite-scroll="loadmore"
            infinite-scroll-disabled="busy">
            <div style="width:100%;height:30%;"><img style="width:100%;height:100%;" :src="this.bcimage" alt=""></div>
            <div>
                <router-link to="#" v-for="(item,i) in bandproduct" :key="i" style="display:block;float:left;width:50%;height:200px;margin:20px auto;text-decoration:none;text-align:left;color:black;">
                    <div style="padding:0 20px;width:100px;height:100px;"><img style="width:100%;height:100%;" :src="item.image" alt=""></div>
                    <p style="padding:0 20px;">{{item.title}}</p>
                    <p style="padding:0 20px;color:red;">￥{{item.price}}</p>
                </router-link>
            </div>
      </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            busy:false,
            bandproduct:[],
            bcimage:'',
            head:''
        }
    },
    methods:{
        loadmore(){
        // 设置busy=true
        this.busy = true;
      },
      loadband(){
        let _solgan=this.$route.query.solgan;
        this.bcimage=this.$route.query.image;
        this.head=this.$route.query.head;
        this.axios.get(`/bandproduct/${_solgan}`).then(res=>{
            res.data.results.forEach(item=>{
                if(item.image){
                    item.image=require(`../assets/product/${item.image}`)
                }
            })
              this.bandproduct=res.data.results
        })
      },
      back(){
          this.$router.replace('/')
      }
    },
    mounted(){
        this.loadmore();
        this.loadband();
    }
}
</script>
<style scoped>
.b1{
    background-color:rgba(255,255,255,0);
    border: none;
}
</style>