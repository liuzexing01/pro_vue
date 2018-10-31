<template>
    <div class="classify">
      <div class="left">
        <ul class="drink-kind">
          <li v-for="(item,index) in drinkkind" :key="index" :class="{'active': index == active}" @click="show(index,item.kind)">{{item.kind}}</li>
        </ul>
      </div>
      <div class="right">
        <ul class="r-head">
          <li @click="show1()">全部分类</li>
          <li @click="show2()">默认排序</li>
          <li @click="show3()">筛选</li>
        </ul>
        <div class="fenlei" :class="{'show': 1 == showBlock}">
          <ul>
            <li v-for="(item,index) in classify" :key="index" :class="{'on': index == on}" @click="search(kind,item.classify)">{{item.classify}}</li>
          </ul>
        </div>
        <div class="paixu" :class="{'show': 2 == showBlock}">
          <ul>
            <li :class="{'on': 0 == sort}" @click="sort0()">默认排序</li>
            <li :class="{'on': 1 == sort}" @click="sort1()">销量优先</li>
            <li :class="{'on': 2 == sort}" @click="sort2()">价格↓</li>
            <li :class="{'on': 3 == sort}" @click="sort3()">价格↑</li>
          </ul>
        </div>
        <div class="shaixuan" :class="{'show': 3 == showBlock}">
          <p>价格区间</p>
          <input type="number" v-model="min">
          <span>-</span>
          <input type="number" v-model="max">
          <div class="btn">
            <button @click="reset()">重置</button>
            <button @click="money()">确定</button>
          </div> 
        </div>
        <div class="r-body">
          <div class="content" v-for="(item,index) in list" :key="index">
            <img :src="item.img_url">
            <div class="detail">
              <p class="title">{{item.title}}</p>
              <div>
                <span class="price">￥{{item.price}}</span>
                <img src="../../assets/add.png" @click="addCart(item)">
              </div>
            </div>
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
      drinkkind:[],
      active:0,
      classify:[],
      classify1:"",
      showBlock:0,
      min:0,
      max:0,
      kind:"",
      list:[],
      sort:0,
      on:10
    }
  },
  methods:{
    addCart(item){
        this.$store.commit("increment");
        this.$store.commit("addkind",item)
    },
    getKind(){
      this.$http.get("classify/kind").then(result=>{
          if(result.body.code==1){   
              this.drinkkind=result.body.msg;
          }else{
              Toast("加载失败")
          }
        })
    },
    show(id,kind){
      this.active = id;
      this.kind=kind;
      var url=`classify/classify?kind=${kind}`;
      this.$http.get(url).then(result=>{
        if(result.body.code==1){   
              this.classify=result.body.msg;
          }else{
              Toast("加载失败")
          }
      })
      var url=`classify/all?kind=${kind}`;
      this.$http.get(url).then(result=>{
         if(result.body.code==1){   
               this.list=result.body.msg;
           }else{
               Toast("加载失败")
           }
      })
      this.sort=0;
      this.classify1="";
      this.min=0;
      this.on=10;
    },
    search(kind,classify,sort){
      kind=this.kind;
      this.classify1=classify;
      for(var i=0;i<this.classify.length;i++){
        if(this.classify[i].classify==classify){
          this.on=i;
          break;
        }
      }
      if(sort==0){
        var url=`classify/detail?kind=${kind}&classify=${classify}`;
        this.$http.get(url).then(result=>{
          if(result.body.code==1){   
                this.list=result.body.msg;
            }else{
                Toast("加载失败")
            }
        })
      }else{
        var url=`classify/sort?kind=${kind}&classify=${classify}&sort=${sort}`;
        this.$http.get(url).then(result=>{
          if(result.body.code==1){   
                this.list=result.body.msg;
            }else{
                Toast("加载失败")
            }
        })
      }
    },
    show1(){
      if(this.showBlock!=1){
        this.showBlock=1
      }else{
        this.showBlock=0
      }
    },
    show2(){
      if(this.showBlock!=2){
        this.showBlock=2
      }else{
        this.showBlock=0
      }
    },
    show3(){
      if(this.showBlock!=3){
        this.showBlock=3
      }else{
        this.showBlock=0
      }
    },
    reset(){
      this.min=0;
      this.max=0;
      this.money();
    },
    sort0(){
      this.sort=0;
      this.search(this.kind,this.classify1,this.sort)
    },
    sort1(){
      this.sort=1;
      this.search(this.kind,this.classify1,this.sort)
    },
    sort2(){
      this.sort=2;
      this.search(this.kind,this.classify1,this.sort)
    },
    sort3(){
      this.sort=3;
      this.search(this.kind,this.classify1,this.sort)
    },
    money(){
      var min=parseFloat(this.min);
      var max=parseFloat(this.max);
      if(max>min){
        var list1=[];
        for(var i of this.list){
          if(i.price<=max&&i.price>=min){
            list1.push(i);
          }
        }
        this.list=list1;
      }else{
        if(this.classify1==""){
          this.show(this.active,this.kind)
        }else{
          this.search(this.kind,this.classify1,this.sort)
        }
      }
    }
  },
  created(){
    this.getKind();
    this.show(0,'白酒');
  }
}
</script>
<style>
    .classify {
      margin-bottom: 50px;
      background:white;
    }
    .classify .left{
      width:20%;
      height:100%;
      position: fixed;
      background:#eee;
    }
    .classify .left li{
      width:100%;
      height:50px;
      line-height: 50px;
      text-align: center;
      font-size: 14px;
    }
    .classify .right{
      margin-left:20%;
      width:80%;
      height:100%;
      background: white;
    }
    .active{
      background: white ;
      border-left:2px solid red;
      color:red;
    }
    .r-head{
      position: fixed;
      list-style: none;
      display: flex;
      font-size: 14px;
      line-height: 50px;
      height:50px;
      width:80%;
      justify-content: space-around;
      background: white;
    }
    .classify .fenlei,.classify .paixu,.classify .shaixuan{
      width:80%;
      position:fixed;
      background:white;
      top:50px;
      left:20%;
      display:none;
    }
    .classify .fenlei ul,.classify .paixu ul{
      list-style: none;
      font-size: 14px;
      text-align: center;
    }
    .classify .fenlei ul li,.classify .paixu ul li{
      float: left;
      width:33.3%;
      line-height: 40px;
    }
    .classify .show{
      display:block
    }
    .classify .shaixuan{
      text-align: center
    }
    .classify .shaixuan input{
      width:30%;
    }
    .classify .shaixuan span{
      margin:0 20px;
    }
    .classify .shaixuan button{
      margin:20px 20px;
    }
    .classify .r-head{
      border-bottom:1px solid #eee;
    }
    .classify .right::before{
      content: "";
      display: table;
    }
    .classify .r-body{
      margin-top:50px; 
    }
    .classify .r-body .content{
      width:100%;
      display: flex;
      padding:5px 10px;
    }
    .classify .r-body .content>img{
      width:100px;
      height:100px;
    }
    .classify .r-body .content .detail{
      width:200px;
    }
    .classify .r-body .content .detail p{
      line-height: 50px;
      color:#333;
    }
    .classify .r-body .content .detail div{
      display: flex;
      align-items:initial;
      font-size: 16px;
      color:red;
      justify-content: space-between
    }
    .classify .r-body .content .detail div img{
      width:21px;
    }
    .on{
      color:red;
    }
</style>