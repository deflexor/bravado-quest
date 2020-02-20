
<template>
  <section class="user-item">
      {{user}}
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

}

</style>
