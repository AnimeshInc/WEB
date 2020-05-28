<template>
  <div id="app">
  <h1>Учет заработной платы</h1>
  <AddItem
      @addItem="addItem"
    />
    <List 
      v-bind:items="items"
      @remove-item="removeItem"
    />
    <h2 v-if="items.length == 0">Список сотрудников</h2>
    <span v-if="items.length > 0">
      <strong>Cумма всех заработных плат сотрудников: </strong>{{ this.sumPrice }}
    </span>
  </div>
</template>

<script>
import AddItem from '@/components/AddTodo.vue'
import List from '@/components/TodoList.vue'

export default {
  name: 'App',

  data() {
    return {
      items: [],
      sumCount: 0,
      sumPrice: 0
    }
  },
  components: {
    List, AddItem
  },
  methods: {
    addItem(newItem) {
      this.items.push(newItem)
      this.sumCount += parseInt(newItem.count)
      this.sumPrice += parseInt(newItem.price)
    },
    removeItem(item) {
      this.items = this.items.filter(t => t.id !== item.id)
      this.sumCount -= parseInt(item.count)
      this.sumPrice -= parseInt(item.price)
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
