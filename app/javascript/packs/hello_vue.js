/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Vue from 'vue/dist/vue.esm'
import axios from 'axios'
import Qs from 'qs'


new Vue({
  el: ".genre_vue",
  data: {
    genreInfo: {},
    artists: [],
    showModal: false,
  },
  methods: {
    setGenreInfo(id){
      axios.get(`api/genres/${id}.json`)
      .then(res => {
        this.genreInfo = res.data;
        this.artists = res.data.array;
        this.showModal = true
      });
    },
    setArtistInfo(id){
     window.location.href = `artists/${id}`;
    }
  }
});



new Vue({
  el: "#app",
  data: {
    items: null,
    keyword: "",
  },
  methods: {
    search: function(){
     var key = $("#search").val();
      if(this.keyword === ''){
                this.items = null
                this.message = ''
                return
            }
      console.log(this.keyword)
      var vm = this
      var params = {
        search: this.keyword
      }
      axios.get(`/api/items`, { params })
      .then(function(res){
        console.log(res.data.array)
        vm.items = res.data
      })
    }
  }
})





