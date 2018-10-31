import Vue from 'vue'
import App from './App.vue'
import router from './router'
import'mint-ui/lib/style.css'
Vue.config.productionTip = false
// 导入 MUI 的样式表
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
import './lib/mui/css/icons-extra.css'
//引入header等组件
import {Header,Swipe,SwipeItem,Button} from "mint-ui";
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(Button.name,Button);
import VueResource from "vue-resource";
Vue.use(VueResource);
//引入vuex
import Vuex from "vuex"
Vue.use(Vuex)
//创建vuex对象：共享数据，操作方法，获取并监听数据方法
var store=new Vuex.Store({
  state:{           //共享数据
    cartCount:0,     //购物车中数量
    cartkind:{},      //购物车中的种类和对应数量
    cartlist:[]
  },
  mutations:{     //共享数据操作方法
    increment(state){state.cartCount++},
    substract(state){
      state.cartCount--;
      if(state.cartCount<=0){
        state.cartCount=0
      }
    },
    clearcount(state){
      state.cartCount=0;
      state.cartlist=[];
      state.cartkind={};
    },
    addkind(state,item){
      var id=item.id;
      if(state.cartkind[id]==undefined||state.cartkind[id]==0){
        state.cartkind[id]=1;   
        state.cartlist.push(item);  
      }else{
        state.cartkind[id]++;
      }
    }
  },   
  getters:{      //获取并监听数据方法
    optCount:function(state){
      return state.cartCount;
    },
    optkind:function(state){
      return state.cartkind;
    },
    optlist:function(state){
      return state.cartlist;
    }
  }
});

//设置全局ajax访问基础路径
Vue.http.options.root="http://127.0.0.1:3000/"
Vue.http.options.emulateJSON=true;
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
