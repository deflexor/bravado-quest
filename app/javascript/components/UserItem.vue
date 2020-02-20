
<template>
  <section class="user-item">
      {{user.name}}
  </section>
</template>
<script>

import UserItem from './UserItem'

export default {
  props: {
    user: {
      type: Object,
      required: true
    }
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

.user-item {
  height: 135px;
}

</style>
