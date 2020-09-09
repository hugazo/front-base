<template lang="pug">
  .box(@click="deleteMe")
    p {{ message }}
</template>

<script>
export default {
  props: {
    message: {
      type: String,
      default: 'NOMESSAGE',
    },
  },
  methods: {
    deleteMe() {
      this.$emit('delete-me', this.message);
    },
  },
};
</script>

<style lang="css" scoped>
</style>
