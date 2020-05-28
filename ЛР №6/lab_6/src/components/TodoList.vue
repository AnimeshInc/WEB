<template>
	<div>
		<ul>
			<list_item 
				v-for="(dior, i) of items"
        :dior="dior"
        :key="dior.id"
        v-bind:index="i"
				v-on:remove-item="removeItem"
			/>
		</ul>
	</div>
</template>

<script>
import list_item from '@/components/TodoItem.vue'

export default {
	props: ['items'],
	components: {
		list_item
	},
	methods: {
		removeItem(item) {
			this.$emit('remove-item', item)
		}
	}
}
</script>

<style>
	ul {
		margin: 1.5rem;
		padding: 0;
	}
</style>