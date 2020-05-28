<template>
  <div class="products">
    <h1 class="products__title">Список товаров</h1>
    <div class="products__grid">
      <div class="product" v-for="product in products" :key="product.id">
        <h2 class="product__name">{{ product.name }}</h2>
        <img class="product__image" :src='product.image' alt="">
        <div class="product__group">
          <p class="product__price">{{ product.price }}</p>
          <button class="product__button" @click="addToCart" :data-id="product.id">
            <svg class="product__button-icon" viewBox="0 0 511.343 511.343">
            </svg>
            Купить
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { map } from '@/modules/utils';

export default {
  name: 'List',
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
  methods: {
    addToCart(event) {
      const cartMap = map(JSON.parse(localStorage.getItem('cart')) || [], 'id');
      const id = event.target.dataset.id;
      if (id !== null) {
        if (cartMap.has(id)) {
          cartMap.get(id).count++;
        } else {
          cartMap.set(id, {
            id,
            count: 1
          });
        }

        localStorage.setItem('cart', JSON.stringify([...cartMap.values()]));
      }
    }
  }
};
</script>

<style scoped>
.products {
  padding: 24px;
}
.products__title {
  margin: 0 0 12px 0;
  font-weight: 500;
  font-size: 1.5em;
  text-align: center;
}
.products__grid {
  gap: 24px;
  display: grid;
  grid-template-columns: repeat(auto-fit, 270px);
  justify-content: center;
}
.product__name {
  margin: 0;
  font-weight: 500;
  font-size: 1.25em;
  text-align: center;
}
.product__image {
  border-radius: 4px;
  display: block;
}
.product__price {
  margin: 0;
  font-size: 1.5em;
  color: #070580;
  text-align: center;
}
.product__button {
  padding: 10px 85px;
  border: none;
  border-radius: 4px;
  display: flex;
  font: inherit;
  background: #0a91ec;
  color: #ffffff;
	cursor: pointer;
}
.product__button-icon {
  width: 20px;
  height: 20px;
  margin-right: 10px;
  display: block;
  fill: currentColor;
}
</style>