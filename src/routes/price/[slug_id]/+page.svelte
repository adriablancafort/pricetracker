<script lang="ts">
    import Client from "$lib/components/Client.svelte";
    
    let { data } = $props();
    const product = data.product;
</script>

<h1 class="font-medium text-3xl font-cabinet-grotesk">{product.title}</h1>

<p>{product.description}</p>

<p>{product.category}</p>

<Client />