/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Vue from 'vue/dist/vue.esm'
import axios from 'axios'
import SearchList from '../components/SearchList.vue'
import GenreArtist from '../components/GenreArtist.vue'
import Search from '../components/Search.vue'

// import Qs from 'qs'




// new Vue({
//   el: "#app",
//   components: {
//     SearchList
//   },
//   data: function () {
//     return {
//       items: null,
//       keyword: ""
//     }
//   },
//   methods: {
//     search: function(){
//      var key = $("#search").val();
//       if(this.keyword === ''){
//                 this.items = null
//                 this.message = ''
//                 return
//             }
//       console.log(this.keyword)
//       var vm = this
//       var params = {
//         search: this.keyword
//       }
//       axios.get(`/api/items`, { params })
//       .then(function(res){
//         console.log(res.data.array)
//         vm.items = res.data
//         console.log(vm.items)
//       })
//     }
//   }
// })


new Vue({
  el: ".searched",
  components: {
    "search-list": SearchList
    }
})



new Vue({
  el: ".genre_vue",
  components: {
    "genre-artist": GenreArtist
  }
})


new Vue({
  el: "#app",
   components: {
    "search-component": Search
    }
})


// var parent = new Vue({
//   el: "#app",
//   data: {
//     items: null,
//     keyword: "",
//     thanks: "unko"
//   },
//   methods: {
//     search: function(){
//      var key = $("#search").val();
//       if(this.keyword === ''){
//                 this.items = null
//                 this.message = ''
//                 return
//             }
//       console.log(this.keyword)
//       var vm = this
//       var params = {
//         search: this.keyword
//       }
//       axios.get(`/api/items`, { params })
//       .then(function(res){
//         console.log(res.data.array)
//         vm.items = res.data
//         console.log(vm.items)
//       })
//     }
//   }
// })


new Vue({
  el: "#signup",
  data: {
    message: "",
    last: "",
    first: "",
    pass: "",
    passcom: "",
    error: {
      require: false
    }
  },
  watch: {
        message: function(newVal, oldVal){
          this.error.require = (newVal.length < 1)? true : false;
    }
  }
})



