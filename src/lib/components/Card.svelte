<script lang="ts">
  export let imageSrc: string;
  export let title: string;
  export let description: string;
</script>

<div class="flex bg-gray-900/75 overflow-hidden m-8 mx-32 rounded-2xl shadow-2xl shadow-gray-900">
  <img src={imageSrc} alt={title} class="h-64 object-cover" />
  <div class="flex-1 p-4">
    <h2 class="text-5xl font-semibold text-white">{title}</h2>
    <p class="text-xl text-gray-200 mt-2">{description}</p>
    <slot />
  </div>
</div>
