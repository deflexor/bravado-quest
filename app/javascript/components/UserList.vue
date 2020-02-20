<template>
  <section class="users-list">
    <user-item v-for="user in usersFiltered" :key="user.id" :user="user"></user-item>
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
  components: {
      UserItem
  },
  data() {
    return {
    }
  },
  mounted () {
  },
  computed: {
      usersFiltered () {
          let us = this.users.map(u => Object.assign(u, { id: JSON.stringify(u) }))
          return us.splice(0, 20)
      }
  },
  methods: {
  }
}
</script>

<style scoped>

.users-list {

}

</style>
