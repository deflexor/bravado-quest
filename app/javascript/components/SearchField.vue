<template>
  <section class="search">
    <input type="text" class="input-search" :value="value" @input="onInput($event.target.value)">
  </section>
</template>
<script>
export default {
  props: {
    value: String
  },
  data() {
    return {
      users: []
    }
  },
  mounted () {
  },
  methods: {
      onInput(v) {
          this.$emit('input', v)
      }
  }
}
</script>

<style scoped>

.search {

}

.input-search {
  border: 2px solid black;
}

</style>
