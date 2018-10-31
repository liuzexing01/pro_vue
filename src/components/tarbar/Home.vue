<template>
    <div class="app-home">
        <!--顶部导航-->
        <div class="mui-input-row mui-search">
            <input type="search" class="mui-input-clear" placeholder="请输入搜索内容">
        </div>
        <!--轮播-->
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <swiper-box :list="Imglist"></swiper-box>
                </div>
            </div>
        </div>
        <!--四个标签-->
        <div>
            <ul class="mui-table-view mui-grid-view mui-grid-9">
                <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/home/news">
                        <img src="../../assets/nav1.png"/>
                        <div class="mui-media-body">我的收藏</div></router-link></li>
                <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/home/goods">
                        <img src="../../assets/nav2.png"/>
                        <div class="mui-media-body">联系客服</div></router-link></li>
                <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Member">
                        <img src="../../assets/nav3.png"/>
                        <div class="mui-media-body">个人中心</div></router-link></li>
                <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Classify">
                        <img src="../../assets/nav4.png"/>
                        <div class="mui-media-body">全部分类</div></router-link></li>
            </ul> 
        </div>
        <div class="youhuiquan">
            <img src="../../assets/youhuiquan.jpg"/>
        </div>
        <div class="fenlei">
            <div class="content">茅台</div>
        </div>
        <div class="goods" v-for="item in drinklist" :key="item.id" v-if="item.classify=='茅台'">
            <img :src="item.img_url"/>
            <div class="title">{{item.title}}</div>
            <div class="good-info">
                <p>￥{{item.price}}</p>
                <div class="mui-icon mui-icon-extra mui-icon-extra-cart" @click="addCart(item)">
                </div>
            </div>
        </div>
        <div class="fenlei">
            <div class="content">五粮液</div>
        </div>
        <div class="goods" v-for="item in drinklist" :key="item.id" v-if="item.classify=='五粮液'">
            <img :src="item.img_url"/>
            <div class="title">{{item.title}}</div>
            <div class="good-info">
                <p>￥{{item.price}}</p>
                <div class="mui-icon mui-icon-extra mui-icon-extra-cart" @click="addCart(item)">
                </div>
            </div>
        </div>
        <div class="fenlei">
            <div class="content">剑南春</div>
        </div>
        <div class="goods" v-for="item in drinklist" :key="item.id" v-if="item.classify=='剑南春'">
            <img :src="item.img_url"/>
            <div class="title">{{item.title}}</div>
            <div class="good-info">
                <p>￥{{item.price}}</p>
                <div class="mui-icon mui-icon-extra mui-icon-extra-cart" @click="addCart(item)">
                </div>
            </div>
        </div>
        <div class="fenlei">
            <div class="content">郎酒</div>
        </div>
        <div class="goods" v-for="item in drinklist" :key="item.id" v-if="item.classify=='郎酒'">
            <img :src="item.img_url"/>
            <div class="title">{{item.title}}</div>
            <div class="good-info">
                <p>￥{{item.price}}</p>
                <div class="mui-icon mui-icon-extra mui-icon-extra-cart" @click="addCart(item)">
                </div>
            </div>
        </div>
        <div class="fenlei">
            <div class="content">今世缘</div>
        </div>
        <div class="goods" v-for="item in drinklist" :key="item.id" v-if="item.classify=='今世缘'">
            <img :src="item.img_url"/>
            <div class="title">{{item.title}}</div>
            <div class="good-info">
                <p>￥{{item.price}}</p>
                <div class="mui-icon mui-icon-extra mui-icon-extra-cart" @click="addCart(item)">
                </div>
            </div>
        </div>
        <div class="fenlei">
            <div class="content">红酒</div>
        </div>
         <div class="goods" v-for="item in drinklist" :key="item.id" v-if="item.classify=='红酒'">
            <img :src="item.img_url"/>
            <div class="title">{{item.title}}</div>
            <div class="good-info">
                <p>￥{{item.price}}</p>
                <div class="mui-icon mui-icon-extra mui-icon-extra-cart" @click="addCart(item)">
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import swiper from "../subcomponents/swiper.vue";
import {Toast} from "mint-ui";
export default {
  data(){
    return{
        Imglist:[],
        drinklist:[]
    }
  },
  methods:{
    addCart(item){
        this.$store.commit("increment");
        this.$store.commit("addkind",item)
    },
    getlist(){
        this.$http.get("image/").then(result=>{
            if(result.body.code==1){   
                this.Imglist=result.body.msg;
            }else{
                Toast("加载失败")
            }
        })
    },
    getDrink(){
        this.$http.get("drink/").then(result=>{
            if(result.body.code==1){   
                this.drinklist=result.body.msg;
            }else{
                Toast("加载失败")
            }
        })
    }     
  },
  created(){
       this.getlist();
       this.getDrink();
  },
    components:{
        "swiper-box":swiper,
    }
}
</script>
<style>
.app-home{
    padding-bottom:50px;
}
   .mui-card .mui-card-content-inner{
       padding:10px;
   }
   .app-home .mui-grid-view.mui-table-view{
        background:white;
        border:0;
    }
    .app-home .mui-grid-view .mui-table-view-cell.mui-media{
        border:0;
        padding:0;
    }
    .app-home .mui-grid-view .mui-table-view-cell img{
        width:45px; 
        height:45px;
    }
    .app-home .mui-grid-view .mui-table-view-cell a .mui-media-body{
        font-size:12px;
        width:100%;
    }
    .app-home .mui-input-row.mui-search{
        padding:10px;
    }
    .app-home .mui-input-row.mui-search input{
        margin-bottom: 0;
    }
    .app-home .youhuiquan{
        width:100%;
        padding:10px;
    }
    .app-home .youhuiquan img{
        width:100%;
    }
    .app-home .fenlei{
        width:100%;
        text-align:center;
        position:relative;
        margin:20px 0;
    }
    .app-home .fenlei .content{
        font-size:16px;
        border:1px solid #aaa;
        padding:5px;
        width:30%;
        border-radius:5px;
        text-align:center;
        color:#666;
        background:white;
        position:relative;
        margin:0 auto;
    }
    .app-home .fenlei::before{
        content:"";
        border:0.5px solid #999;
        width:100%;
        height:0px;
        position:absolute;
        left:0;
        top:50%;
    }
    .app-home .goods{
        width:46%;
        border:1px solid #ddd;
        margin:6px;
        display:inline-block;
    }
    .app-home .goods img{
        width:100%;
        margin-bottom:5px;
    }
    .app-home .goods .title{
        padding:5px 20px;
        font-size:12px;
        color:#666
    }
    .app-home .goods .good-info{
        display:flex;
        justify-content:space-between;
        align-items:center;
        padding:5px;
    }
    .app-home .goods .good-info p{
        width:20%;
        font-size:18px;
        color:red;
        line-height:30px;
        margin-bottom:0;
    }
    .app-home .goods .good-info div{
        color:red;
    }
</style>