<template>

<div class="form">

  <input type="search" name="item_name" id="search" class="form-control" v-model:value="keyword">

  <input type="submit" name="commit" value="検索" data-disable-with="検索" class="btn btn-default" id="search-submit" v-on:click="search">

</div>

</template>





<script>

import axios from 'axios'

export default {
 name: "Search",
  data: function () {
    return {
      items: [],
      keyword: "",
    }
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
      axios.get(`/api/items/search`, { params })
      .then(function(res){
       
        vm.items = res.data
      })
    }
  }
}

</script>
//検索結果をもとにレンダリングさせる


