<script>
  import { Canvas } from '@threlte/core';
  import Scene from './Scene.svelte';
</script>

<div class="fixed inset-0 overflow-hidden">
  <div class="w-full h-full">
    <Canvas>
      <Scene />
    </Canvas>
  </div>
</div>

<!-- normally hidden links for screen reader who cant see the 3d scene -->
<a href="/about" class="sr-only">About</a>