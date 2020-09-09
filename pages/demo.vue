<template lang="pug">
  .container
    .notification
      p {{ instructions }}
    .notification
      input.input.is-rounded(
        v-model="message"
        type="text"
        placeholder="Escribeme algo"
        @keyup.enter="sendBox"
        /* @click="sendTask" */
        )
    .notification
      template(v-for="(box, index) in boxes")
        Box(
          :message="box"
          :index="index"
          v-on:delete-me="deleteBox($event)"
          )
    //- .notification
    //-   template(v-for="(task, index) in tasks")
    //-     Box(
    //-       :message="task"
    //-       :index="index"
    //-       v-on:delete-me="deleteTask($event)"
    //-       )
</template>

<script>
import Box from '@/components/Box.vue';

export default {
  components: {
    Box,
  },
  data() {
    return {
      message: '',
      instructions: 'Esto es un demo simple, escribe un mensaje y agregalo a la lista, clic en el mensaje y se borrará',
      boxes: [
        'Hola',
      ],
      tasks: [],
    };
  },
  methods: {
    sendBox() {
      this.$log.debug(this.message);
      this.boxes.push(this.message);
      this.cleanMessage();
    },
    deleteBox(message) {
      this.boxes = this.boxes.filter((box) => box !== message);
    },
    sendTask() {
      if (this.message) {
        this.tasks.push(this.message);
        this.cleanMessage();
      }
    },
    deleteTask(message) {
      this.tasks = this.tasks.filter((task) => task !== message);
    },
    cleanMessage() {
      this.message = '';
    },
  },
};
</script>

<style lang="css" scoped>
</style>
