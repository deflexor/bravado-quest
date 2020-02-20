<template>
  <div id="app">
    <section class="main">
      <search-field v-model="searchText" @input="onSearch"></search-field>
      <user-list :users="users"></user-list>
    </section>
  </div>
</template>
<script>

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
      users: []
    }
  },
  mounted () {
    this.fetchAllUsers()
  },
  methods: {
    async fetchAllUsers () {
      data.users = await axios('/users')
    },
    onSearch (v) {
      console.log('onSearch', v)
    }
  }
}
</script>

<style>
p {
  font-size: 2em;
  text-align: center;
}
</style>
