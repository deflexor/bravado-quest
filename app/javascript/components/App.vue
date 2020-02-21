<template>
  <div id="app">
    <section class="main">
      <search-field v-model="searchText" @input="onSearch"></search-field>
      <div v-if="error" class="error">{{error}}</div>
      <user-list :users="usersF"></user-list>
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
    this.updateFilter()
    this.fetchAllUsers()
  },
  computed: {
    usersF () {
      const re = new RegExp('^' + this.searchText + '.*$')
      for (let i = 0; i < this.users.length; i++) {
        const u = this.users[i];
        u.show = this.searchText && re.test(u.name) 
      }
    }
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
    updateFilter () {
      let m = document.location.href.match(new RegExp('^' + window.ROOT_URL + 'search/(.+)$'))
      if (m !== null) {
        this.searchText = m[1]
      }
    },
    onSearch (v) {
      if (v !== '') {
        window.history.pushState('', '', window.ROOT_URL + 'search/' + v)
        // this.updateFilter()
      } else {
        window.history.pushState('', '', window.ROOT_URL)
      }
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
