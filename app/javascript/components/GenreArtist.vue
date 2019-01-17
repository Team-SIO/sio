
<template>
<div class="col-sm-4 mt-5" id="genre">
  <div class="row">
     <div class="col-sm-12 col-md-6 panel panel-primary" style="border:none">
        <div class="panel-heading">
          ジャンルで選ぶ
        </div>
        <div class="panel-body">
          <ul>
            <li v-for="(genre,index) in genres" :key="genre.id" v-on:click="setGenreInfo(genre.id)" style="cursor:pointer" class="genre_non">
                      {{ genre.genre_name }}
            </li>
          </ul>
        </div>
     </div>
     <div class="col-sm-10 col-sm-offset-1 col-md-5 mt-5 artist_vue" vcloak>
        <div class="aaa" v-show="showModal" vcloak>

          <p class="p-art text-center">アーティスト一覧</p>
          <transition-group name="list" tag="div">
              <li v-for="artist in artists" v-on:click="setArtistInfo(artist.id)" class= "lime" v-bind:key="artist">
       
                   {{ artist.artist_name }}
           
               </li> 
          </transition-group>
         </div>
     </div>
  </div>
</div>
</template>


<script>
import axios from 'axios'


export default {
  name: 'GenreArtist',
  data: function(){
  return {
    genres: [],
    genreInfo: {},
    artists: [],
    showModal: false,
  }},
   created: function() {
    this.getGenres().then(result => {
      this.genres = result
    })
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
    },
    getGenres: async function() {
      const res = await axios.get(`/api/genres`)
      if (res.status !== 200) { process.exit() }
      return res.data.array
    }
  }
}

</script>
