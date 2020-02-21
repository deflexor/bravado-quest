
<template>
  <section class="user-item">
      <img :src="user.avatar" class="user-item-avatar">
      <div class="user-item-info">
        <div class="user-item-info-top">
          <div class="user-item-info-top-center">
            <div class="user-item-name">{{user.name}}</div>
            <div class="user-item-title">{{user.title}}</div>
            <div class="user-item-address">{{user.address}}</div>
          </div>
          <div class="user-item-email">{{user.email}}</div>
          
        </div>
        <div :class="{ 'user-item-info-bottom': true, 'has-border-top': !selected }">
          <a href="" @click.prevent="selectionClicked">{{selected ? 'skip selection' : 'mark as suitable'}}</a>
        </div>
      </div>
  </section>
</template>
<script>

import UserItem from './UserItem'

export default {
  props: {
    user: {
      type: Object,
      required: true
    },
    selected: {
      type: Boolean,
      default: false
    }
  },
  data() {
    return {
    }
  },
  mounted () {
  },
  methods: {
    selectionClicked () {
      this.$emit('selection', !this.selected)
    }
  }
}
</script>

<style scoped>

a {
  color: inherit;
  text-decoration: none;
}

.user-item {
  height: 135px;
  width: 525px;
  display: flex;
  flex-direction: row;
  background-color: #fafafa;
  border-radius: 3px;
  box-shadow: 0 2px 2px 0px #e2e2e2;
  margin-bottom: 20px;
}

.user-item-avatar {
  height: 135px;
  width: 135px;
  background-color: #bbbbbb;
  border-top-left-radius: 2px;
  border-bottom-left-radius: 2px;
}

.user-item-name {
  color: #212121;
  font-size: 22px;
}

.user-item-title {
  color: #727272;
  font-weight: bold;
  white-space: nowrap;
}

.user-item-address {
  color: #949494;
}

.user-item-email {
  color: #949494;
  text-align: right;
  flex-grow: 1;
}

.user-item-info {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
  justify-content: space-between;
  overflow: hidden;
}

.user-item-info-top {
  display: flex;
  flex-direction: row;
  padding-top: 10px;
  padding-right: 10px;
}

.user-item-info-top-center {
  display: flex;
  flex-direction: column;
  padding-left: 25px;
}

.user-item-info-bottom {
  color: #009688;
  text-transform: uppercase;
  border-top: 1px solid #fafafa;
  height: 55px;
  padding-left: 40px;
  display: flex;
  align-items: center;
}

.has-border-top {
  border-top: 1px solid #dcdcdc;
}

</style>
