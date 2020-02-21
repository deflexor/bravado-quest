<template>
  <section class="users-list">
    <user-item v-for="user in users" :key="user.id" :user="user" :selected="selectedItem === user.id" v-show="user.show" @selection="onItemSelected"></user-item>
  </section>
</template>
<script>

import UserItem from './UserItem'

export default {
  props: {
    users: {
      type: Array,
      required: true
    }
  },
  data() {
    return {
      selectedItem: null
    }
  },
  components: {
      UserItem
  },
  methods: {
    onItemSelected (id, selected) {
      this.selectedItem = selected ? id : null
    }
  }
}
</script>
