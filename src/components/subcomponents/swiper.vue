<template>
    <div class="app-swipt">
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="item in list" :key="item.id"><img :src="item.img_url"/></mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
    export default{
        date(){
            return{
            }
        },
        methods:{

        },
        created() {
        },
        props:["list"]
    }
</script>
<style>
    .app-swipt .mint-swipe{
        height:170px;
    }
    .app-swipt .mint-swipe .mint-swipe-item{
        text-align:center;
    }
    .app-swipt img{
        width:100%;
    }
</style>