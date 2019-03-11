<template>
<div class="container col-sm-8">
 <div class="mt-5">
   <table class="table table-hover">
     <thead>
      <tr>
        <th scope="col">画像</th>
        <th scope="col">アーティスト名</th>
        <th scope="col">タイトル</th>
        <th scope="col">情報</th>
        <th scope="col">価格</th>
        <th scope="col">在庫</th>
      </tr>
    </thead>
  <tbody v-for="item in items">
     <tr>
       <td>
         {{ item.item_name }}
        </td>
        <td>aaa </td>
         <td> </td>
        <td> </td>
           <td> </td>
   <td> </td>


     </tr>
    </tbody>
    </table>
  </div>
</div>

</template>

<script>

import axios from 'axios'

export default {
 name: "SearchList",
  data: function () {
    return {
      items: [],
      keyword: "",
    }
  },
  created: function(){
    this.getItems().then(result => {
      this.items = result

    })
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
        vm.items = res.data
      })
    },
    getItems: async function() {
      const res = await axios.get(`/api/items`)
      if (res.status !== 200) { process.exit() }
      return res.data.array
    }
  }
}

</script>


