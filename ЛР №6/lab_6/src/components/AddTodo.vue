<template>
	<form @submit.prevent="onSubmit">
		<br id="inputs">
		<p align="center"><br><input placeholder="Ф.И.О" type="text" v-model="title"><br>
		<br><input hint="Дата выдачи зарплаты" type="date" v-model="date"><br>
		<br><input placeholder="Количество отработанных дней" type="text" v-model="count"><br>
		<br><input placeholder="Размер заработной платы сотрудника" type="text" v-model="price"><br>
		<button type="submit">Добавить</button>
		<h3 v-if="notFilled">Не все поля заполнены</h3>
	</form>
</template>

<script>
export default {
	data() {
		return {
			title: '',
			date: '',
			count: '',
			price: '',
			notFilled: false
		}
	},
	methods: {
		onSubmit() {
			if(this.title.trim() && this.date.trim() && this.count.trim() && this.price.trim()) {
				const newProduct = {
					id: Date.now(),
					title: this.title,
					date: this.date,
					count: this.count,
                    price: this.price,
				}
				this.title = '';
				this.date = '';
				this.count = '';
				this.price = '';
				this.notFilled = false;
				this.$emit('addItem', newProduct)
			}
			else
				this.notFilled = true;}
	}
}
</script>

<style scoped>
	form {
		margin-top: 3rem;
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}
	input {
		width: 20%;
		margin-right: 1rem;
  		text-align: center;
	}
	button {
		margin-top: 1.5rem;
		width: 10rem;
		height: 2.5rem;
		border: 2px solid blue;
		color: black;
		border-radius: 3%;
		align-self: center;
	}
	button:hover {
		cursor: pointer;
	}
</style>