<template>
    <div>
        <div>
            <mt-button @click="back()" icon="back" slot="right" style="width:10%;position: absolute;left:5px;height:52px;background-color:rgb(215, 215, 215);border-radius:0;"></mt-button>
            <mt-search  style="width:85%;float:right;" id="search" cancel-text="" placeholder="演出、周边、众筹、视频"></mt-search>
        </div>
        <h3 style="position: absolute;margin-top:70px;">音乐的风格</h3>
        <div style="position: absolute;margin-top:100px;">
            <router-link :to="`/styles?style=${item.type}`" v-for="(item,i) in musicstyle" :key="i"
            :id="item.uid.toString()">{{item.type}}</router-link>
     >   </div
    </div>
</template>
<script>
    export default{
        data(){
            return{
                musicstyle:[]
            }
        },
        methods:{
            loadMusicstyles(){
                this.axios.get('/musicstyles').then(res=>{
                    this.musicstyle = res.data.results;
                })
            },
            back(){
                this.$router.replace('/');
            }
        },
        mounted(){
            this.loadMusicstyles();
        }
    }
</script>
<style scoped>
    #search{
        border:none;
    }
    a{
       display: inline-block;
       text-decoration: none;
       color: rgb(114, 108, 108);
       border:1px solid snow;
       background-color:rgb(230, 228, 228);
       margin-right: 10px;
       margin-bottom: 10px;
       padding: 10px;
       border-radius:50%;
    
    }
</style>