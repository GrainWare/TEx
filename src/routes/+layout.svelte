<script lang="ts">
  import Nav from '$lib/components/Nav.svelte';
  let { children } = $props();
  import '../app.css';
</script>

<Nav />
<div class="flex-1 relative overflow-hidden">
  {@render children()}
</div>
