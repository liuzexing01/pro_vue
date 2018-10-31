<template>
  <div class="app-container">
    <!--路由显示其他模块-->
    <router-view></router-view>
    <!--mui tarbar-->
   <nav class="mui-bar mui-bar-tab">
        <router-link class="mui-tab-item" to="/Home">
            <span class="mui-icon mui-icon-home"></span>
            <span class="mui-tab-label">首页</span>
        </router-link>

        <router-link class="mui-tab-item" to="/Classify">
            <span class="mui-icon mui-icon-list"></span>
            <span class="mui-tab-label">分类</span>
        </router-link>
        <router-link class="mui-tab-item" to="/Cart">
            <span class="mui-icon mui-icon-extra mui-icon-extra-cart">
            <span class="mui-badge" v-if="$store.getters.optCount>0">{{$store.getters.optCount}}</span>
            </span>
            <span class="mui-tab-label">购物车</span>
        </router-link>
        <router-link class="mui-tab-item" to="/Member">
            <span class="mui-icon mui-icon-search"></span>
            <span class="mui-tab-label">我的</span>
        </router-link>
    </nav>
 </div>
</template>
<script>
export default {
  data(){
    return{}
  },
  methods:{},
  created(){}
}
</script>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}
.app-container{
     overflow-x:hidden;
     background:white;
   }
 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
</style>
