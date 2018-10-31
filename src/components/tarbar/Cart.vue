<template>
    <div class="app-cart">
      <ul class="mui-table-view">
        <li class="mui-table-view-cell mui-media" v-for="(item,index) in list" :key="index">
                <img class="mui-media-object mui-pull-left" :src="item.img_url">
                <div class="mui-media-body">
                    <p class='mui-ellipsis'>{{item.title}}</p>
                    <div class="content">
                      <span class="price">￥{{item.price}}</span>
                      <div class="mui-numbox">
                      <button class="mui-btn mui-btn-numbox-minus" type="button" @click="minus(item.id)">-</button>
                      <input class="mui-input-numbox" type="number" v-model="kind[item.id]"/>
                      <button class="mui-btn mui-btn-numbox-plus" type="button" @click="plus(item.id)">+</button>
                      </div>   
                    </div>
                </div>
        </li>
      </ul>
      <div class="total">
        <button @click="clean()">清空购物车</button>
        <span class="t-price">总计￥:{{total.toFixed(2)}}</span>
      </div>
    </div>
</template>
<script>
export default {
  data(){
    return{
      list:[],    //购物车商品的详细信息
      kind:{},   //购物车中商品的id值和数量
      total:0
    }
  },
  methods:{
    clean(){
      this.$store.commit("clearcount");
      this.list=this.$store.getters.optlist;
      this.kind=this.$store.getters.optkind;
      this.total=0;
    },
    getTotal(){
      var price=0;
      for(var i in this.kind){
        for(var j of this.list){
          if(j.id==i){
            price=j.price;
            break;
          }
        }
        this.total+=parseFloat(this.kind[i]*price);
      }
    },
    minus(id){
      this.$store.commit("substract");
      this.kind[id]=parseInt(this.kind[id])-1;
      if(parseInt(this.kind[id])<=0){
        this.kind[id]=0
      }
      this.total=0;
      this.getTotal();
    },
    plus(id){
      this.$store.commit("increment");
      this.kind[id]=parseInt(this.kind[id])+1;
      this.total=0
      this. getTotal()
    }
  },
  created(){
    this.list=this.$store.getters.optlist;
    this.kind=this.$store.getters.optkind;
    this.getTotal()
  }
}
</script>
<style>
   .app-cart .content{
     display:flex;
     justify-content: space-between;
     line-height: 35px;
     margin-top:10px;
   }
   .app-cart .mui-table-view .mui-table-view-cell{
     padding:20px;
   }
   .app-cart .mui-table-view .mui-table-view-cell .mui-ellipsis{
     font-size: 17px;
     line-height: 17px;
   }
   .app-cart .price{
     color:red;
     font-size: 16px;
   }
   .app-cart .total{
     display: flex;
     justify-content: space-between;
     align-items: center;
     padding:0 20px;
   }
   .app-cart .total button{
     height:50%;
     align-items: center
   }
   .app-cart .total .t-price{
     text-align: right;
     width:100%;
     padding:20px;
     color:red;
     font-weight: bold
   }
</style>