<template>
  <div id="app">
    <section class="main">
      <search-field v-model="searchText" @input="onSearch"></search-field>
      <div v-if="error" class="error">{{error}}</div>
      <user-list :users="users"></user-list>      
    </section>
  </div>
</template>
<script>

import axios from 'axios'
import SearchField from './SearchField'
import UserList from './UserList'

export default {
  components: {
    SearchField,
    UserList
  },
  data() {
    return {
      searchText: '',
      error: '',
      users: []
    }
  },
  mounted () {
    this.fetchAllUsers()
  },
  methods: {
    async fetchAllUsers () {
      try {
        let resp = await axios('/users')
        this.users = resp.data
      } catch (e) {
        this.error = 'Error getting users!'
        console.log(e)
      }
    },
    onSearch (v) {
      console.log('onSearch', v)
    }
  }
}
</script>

<style>

html {
  box-sizing: border-box;
  font-family: sans-serif;
  font-size: 14px;
}
*, *:before, *:after {
  box-sizing: inherit;
}

.main {
  width: 565px;
  height: 645px;
  margin: 0 auto;
}

.error {
  color: red;
}

</style>
