<script lang="ts">
	import '../app.css';
	import Header from "$lib/components/Header.svelte"
	import Footer from "$lib/components/Footer.svelte"
	let { children } = $props();
</script>

<Header />
<main class="container py-4">
	{@render children()}
</main>
<Footer />