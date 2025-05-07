<script lang="ts">
  // TODO: this should be this if logged out, discord pfp if logged in
  import UserPlaceHolder from 'virtual:icons/lucide/user';
  import About from 'virtual:icons/lucide/info';
  import Home from 'virtual:icons/lucide/home';
</script>

<nav
  class="bg-gray-900/75 text-white px-6 py-4 flex justify-between items-center m-4 rounded-2xl shadow-2xl shadow-gray-900"
>
  <div class="text-xl font-mono font-bold">
    <a href="/">TEx (Beta)</a>
  </div>
  <div class="space-x-4">
    <a href="/"><Home class="inline-block" /></a>
    <a href="/about"><About class="inline-block" /></a>
    <!-- svelte-ignore a11y_invalid_attribute -->
    <a href="#" on:click={() => alert('WIP')}><UserPlaceHolder class="inline-block" /></a>
  </div>
</nav>
