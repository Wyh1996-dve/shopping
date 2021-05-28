<template>
    <div>
        <div style="position:fixed;z-index:1;text-align:center;width:100%;height:50px;background-color:#fff;">
            <p id="back" style="width:20px;height:20px;position:absolute;left:10px;">
                <img style="width:100%;height:100%;" src="../assets/tubiao/back.svg" alt="">
            </p>
            <h3 style="color:black;">{{this.style}}</h3>
        </div>
        <div style="position:absolute;top:50px;">
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
        <div id="p1" style="display:none;position:absolute;top:70px;font-weight:700;width:100%;">暂时没有该风格的演唱会</div>
    </div>
</template>
<script>
    export default{
        data(){
            return {
                yanchu:[],
                style:''
            }
        },
        methods:{
            loadyanchu(){
                let _style=this.$route.query.style;
                this.style=_style;
                this.axios.get(`/fg/${_style}`).then(res=>{
                     res.data.results.forEach(item=>{
                        if(item.avatar){
                        item.avatar=require(`../assets/yc/${item.avatar}`)
                        }
                    })
                    this.yanchu=res.data.results;
                    if(this.yanchu.length==0){
                        let _p=document.getElementById('p1');
                        _p.style.display='block'
                    }
                })
            }
        },
        mounted(){
            this.loadyanchu();
            let _back=document.getElementById('back');
            _back.onclick=()=>{
                this.$router.replace('/search');
            }
        }
    }
</script>