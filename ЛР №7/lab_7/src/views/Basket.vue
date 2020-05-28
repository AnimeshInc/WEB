<template>
  <div class="basket">
    <table>
      <thead>
        <tr>
          <th>Изображение</th>
          <th>Товар</th>
          <th>Количество</th>
          <th>Цена</th>
          <th class="none__style"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="product in cart" :key="product.id">
          <td><img :src="product.image" alt=""></td>
          <td>{{ product.name }}</td>
          <td>{{ product.count }}</td>
          <td>{{ product.price }}</td>
          <td ><button class="button__del" @click="deleteFromCart" :data-id="product.id">Удалить</button></td>
        </tr>
      </tbody>
      <tfoot>
        <td class="none__style"></td>
        <td class="none__style"></td>
        <td>Итого:</td>
        <td>{{total}}</td>
      </tfoot>
    </table>
  </div>
</template>

<script>
import { map } from '@/modules/utils';

export default {
  name: 'Basket',
   data() {
    return {
      products: []
    }
  },
  async mounted() {
    const response = await fetch('/catalog.json');
    const data = await response.json();

    this.products = data;
  },
  computed: {
    cart() {
      const productsMap = map(this.products, 'id');
      const store = JSON.parse(localStorage.getItem('cart')) || [];

      return store.map(entry => ({
        ...entry,
        ...productsMap.get(Number(entry.id))
      }));
    },
      total(){
        return this.cart.reduce((accumulator, текущий_элемент) => {
                accumulator += текущий_элемент.price;

                return accumulator;
            }, 0);

      }
  },
  methods: {
    deleteFromCart(event) {
      const id = event.target.dataset.id;
      const cart = (JSON.parse(localStorage.getItem('cart')) || [])
        .filter(entry => (entry.id !== id));
      localStorage.setItem('cart', JSON.stringify(cart));
      location.reload();
    }
  }
};
</script>

<style scoped>
table {
  width: 100%;
  text-align: center;
}
.button__del{
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  background-color:red;
  color:white;
}
.basket{
padding:24px;
}
td,th{
  font-weight: 500;
  font-size: 1.2em;
  padding: 8px;
--shadow-color: rgba(151, 151, 151, 0.1);
  gap: 10px;
  border-radius: 4px;
  background: #f1f1f1;
  box-shadow: 2px 0 2px 2px var(--shadow-color),
  4px 0 4px 4px var(--shadow-color)
}
.none__style{
  box-shadow:none;
}
</style>