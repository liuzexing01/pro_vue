<template>
    <div class="app-member">
      <div class="head">
        <div class="head-msg">
          <span>苏糖糖酒官方商城</span>
          <span>消息</span>
        </div>
        <img src="../../assets/personal-imge.png" alt="">
        <div class="login">点击登录</div>
      </div>
      <div class="order">
        <span>我的订单</span>
        <router-link to="/Cart">查看全部订单<div></div></router-link>
      </div>
      <div class="order-list">
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><router-link to="/home/news">
                    <img src="../../assets/fukuan.png">
                    <div class="mui-media-body">待付款</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><router-link to="/home/goods">
                    <img src="../../assets/fahuo.png">
                    <div class="mui-media-body">代发货</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><router-link to="/Member">
                    <img src="../../assets/shouhuo.png">
                    <div class="mui-media-body">待收货</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><router-link to="/Classify">
                    <img src="../../assets/pingjia.png">
                    <div class="mui-media-body">待评价</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2"><router-link to="/Classify">
            <img src="../../assets/tuihuo.png">
            <div class="mui-media-body">退款/售后</div></router-link></li>
        </ul> 
      </div>
      <div class="devide"></div>
      <div class="order">
        <span>我的资产</span> 
      </div>
      <div class="m-list">
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/home/news">
                    <strong>￥0</strong>
                    <div class="mui-media-body">可用金额</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/home/goods">
                    <strong>0</strong>
                    <div class="mui-media-body">积分
                    </div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Member">
                    <strong>0张可用</strong>
                    <div class="mui-media-body">优惠券</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Classify">
                    <strong>0张可用</strong>
                    <div class="mui-media-body">礼品卡</div></router-link></li>
        </ul> 
      </div>
      <div class="devide"></div>
      <div class="member">
        <div><p>我的会员码</p><span>线下购物出示立享优惠</span></div>
        <router-link to="/Erweima"><img src="../../assets/erweima.png"><div></div></router-link>
      </div>
      <div class="devide"></div>
      <div class="myServer">
        <span>我的服务</span>
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/home/news">
                    <img src="../../assets/mendian.png">
                    <div class="mui-media-body">门店订单</div>
                    <div class="new">NEW</div>
                    </router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/home/goods">
                    <img src="../../assets/pingdan.png">
                    <div class="mui-media-body">拼团订单
                    </div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Member">
                    <img src="../../assets/kefu.png">
                    <div class="mui-media-body">客服中心</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Classify">
                    <img src="../../assets/qiandao.png">
                    <div class="mui-media-body">签到</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Classify">
                    <img src="../../assets/shoucang.png">
                    <div class="mui-media-body">我的收藏</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Classify">
                    <img src="../../assets/zuji.png">
                    <div class="mui-media-body">我的足迹</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Classify">
                    <img src="../../assets/pingjia2.png">
                    <div class="mui-media-body">我的评价</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/Classify">
                    <img src="../../assets/zhanghao.png">
                    <div class="mui-media-body">账号管理</div></router-link></li>
        </ul> 
      </div>
      <div class="devide"></div>
      <div class="tuijian">为你推荐</div>
      <div class="devide"></div>
      <div class="goods" v-for="item in drinklist" :key="item.id" v-if="item.classify=='今世缘'">
            <img :src="item.img_url"/>
            <div class="title">{{item.title}}</div>
            <div class="good-info">
                <p>￥{{item.price}}</p>
                <div class="mui-icon mui-icon-extra mui-icon-extra-cart">
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import {Toast} from "mint-ui";
export default {
  data(){
    return{
      drinklist:[]
    }
  },
  methods:{
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
    this.getDrink();
  }
}
</script>
<style>
    *{
      padding:0;
      margin:0;
      box-sizing: border-box
    }
    .app-member{
      background: white;
      margin-bottom: 50px;
    }
    .head,.head img{
      width:100%;
      position: relative;
    }
    .head-msg{
      width:100%;
      padding:0 20px;
      display:flex; 
      background: #000;
      justify-content: space-between;
      align-items: center;
    }
    .head-msg span{
      color:white; 
      line-height: 30px;
      font-size: 14px;
    }
    .login{
      position: absolute;
      bottom:5px;
      left:0;
      text-align: center;
      color:white; 
      line-height: 30px;
      font-size: 14px;
      height:30px;
      width:100%;
      background:rgba(0,0,0,.5)
    }
    .order{
      display:flex; 
      justify-content: space-between;
      align-items: center;
      line-height: 50px;
      padding:0 20px;
      border-bottom:1px solid #ddd;
    }
    .order span{
      color:#333;
      font-size: 15px;
    }
    .order div{
      display: inline-block;
      width:10px;
      height:10px;
      transform: rotateZ(45deg);
      border-top:1px solid #666;
      border-right:1px solid #666;
    }
    .order a{
      color:#666;
      font-size: 14px;
    }
    .app-member .order-list .mui-table-view.mui-grid-view{
      border-bottom:1px solid #ddd;
      border-top:0;
      background:white !important;
    }
    .app-member .order-list .mui-table-view-cell.mui-media{
      width:20%;
      padding:0 !important;   
    }
    .app-member .mui-table-view-cell.mui-media div.mui-media-body{
      font-size: 12px;
      color:#666;
    }
    .app-member .mui-table-view-cell.mui-media img{
      width:24px;
    }
    .app-member .order-list .mui-table-view-cell.mui-media{
      border:none !important;
    }
    .app-member .m-list .mui-table-view{
      border-top:none;
      border-bottom:1px solid #ddd;
    }
    .app-member .m-list .mui-table-view .mui-table-view-cell{
      color:#333;
      font-size:14px;
      padding:0;
      background: white;
      border:0;
    }
    .app-member .member{
      display: flex;
      justify-content: space-between;
      padding:20px 20px;
    }
    .app-member .member div{
      width:50%;
    }
    .app-member .member div p{
      color:#333;
      font-size: 13px;
    }
    .app-member .member div span{
      color:#666;
      font-size: 12px;
    }
    .app-member .member a {
      line-height: 50px;
      align-items: center
    }
    .app-member .member a div{
      display: inline-block;
      width:14px;
      height:14px;
      transform: rotateZ(45deg);
      border-top:1px solid #666;
      border-right:1px solid #666; 
    }
    .app-member .member a img{
      width:16px;
    } 
    .devide{
      width:100%;
      height:10px;
      background:#eee;
    } 
    .app-member .myServer span{
      line-height: 50px;
      padding:0 20px;
      font-size: 15px;
    }
    .app-member .mui-table-view.mui-grid-view{
      background:white;
    }
    .app-member .mui-table-view.mui-grid-view .mui-table-view-cell{
      padding:0;
      border:0;
    }
    .app-member .myServer .mui-table-view.mui-grid-view a div:nth-child(3){
      transform:rotate(45deg);
      color:white;
      width:50px;
      height:15px;
      line-height: 15px;
      font-size: 12px;
      background:red;
      position:absolute;
      top:5px;
      right:-12px;
    }
    .tuijian{
      text-align: center;
      line-height: 50px;
      font-size: 15px;
    }
    .app-member .goods{
        width:46%;
        border:1px solid #ddd;
        margin:6px;
        display:inline-block;
    }
    .app-member .goods img{
        width:100%;
        margin-bottom:5px;
    }
    .app-member .goods .title{
        padding:5px 20px;
        font-size:12px;
        color:#666
    }
    .app-member .goods .good-info{
        display:flex;
        justify-content:space-between;
        align-items:center;
        padding:5px;
    }
    .app-member .goods .good-info p{
        width:20%;
        font-size:18px;
        color:red;
        line-height:30px;
        margin-bottom:0;
    }
    .app-member .goods .good-info div{
        color:red;
    }
</style>