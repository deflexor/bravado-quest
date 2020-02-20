<template>
  <section class="users-list">
    <user-item v-for="user in users" :key="user.id" :user="user"></user-item>
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
  methods: {
  }
}
</script>

<style scoped>

.users-list {

}

</style>
