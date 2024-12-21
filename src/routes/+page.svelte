<script lang="ts">
  import { Button } from "$lib/components/ui/button/index";

  let { data } = $props();
  const products = data.products;
</script>

<section>
  <div class="h-full text-center mx-auto max-w-2xl py-32 sm:py-48 lg:py-56">
      <h1 class="font-medium text-7xl font-cabinet-grotesk mb-8">
        Realtime Product Price Tracker
      </h1>
      <p class="max-w-xl mx-auto">Track and compare the prices of 5.3 million products accross all major retailers including Amazon, Ebay, Walmart, MediaMarkt, Fnac and much more.</p>
      <div class="mt-10 flex items-center justify-center gap-x-6">
        <Button>Browse Deals</Button>
        <a href="/" class="text-sm/6 font-semibold text-gray-900">See all retailers <span aria-hidden="true">→</span></a>
      </div>
  </div>
  {#each products as product}
    <a href={`/price/${product.id}`} class="block bg-white shadow-lg rounded-lg p-6 mt-8 no-underline">
      <div>
        <h2 class="font-medium text-2xl font-cabinet-grotesk">{product.title}</h2>
        <p>{product.description}</p>
        <p>{product.category}</p>
      </div>
    </a>
  {/each}
</section>

