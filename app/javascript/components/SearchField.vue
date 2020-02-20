<template>
  <section class="search">
    <div class="input-search">
      <input type="text" class="input-search-field" :value="value" @input="onInput($event.target.value)">
      <i class="fas fa-search input-search-icon" aria-hidden="true"></i>
    </div>
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
  display: block;
  padding-bottom: 20px;
}

.input-search {
  width: 525px;
  height: 48px;
  position: relative;  
}

 .input-search-icon {
  font-size: 15px;
  position: absolute;
  left: 16px;
  top: 16px;
  padding: 0;
  color: #777575;
  transition: 0.3s;
}

.input-search-field {
  font-size: 20px;
  padding-left: 45px;
  width: 100%;
  height: 100%;
  background-color: #FAFAFA;
  outline: none;
  border: 1px solid #FFFFFF;
  border-radius: 2px;
  box-shadow: 0 2px 2px 0px #C1C1C1;
}

</style>
