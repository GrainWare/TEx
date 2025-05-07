<script>
  import { T, useTask } from '@threlte/core';
  import { Environment, ImageMaterial, OrbitControls } from '@threlte/extras';
  import { Spring } from 'svelte/motion';
  import { interactivity } from '@threlte/extras';
  import { DoubleSide } from 'three';

  interactivity();
  const scale = new Spring(1);

  let rotation = 0;
  let rotation2 = 0;
  let negative = false;
  useTask((delta) => {
    rotation += delta;
    rotation2 += delta * 0.1;
  });
</script>

<T.PerspectiveCamera
  makeDefault
  position={[10, 10, 10]}
  oncreate={(ref) => {
    ref.lookAt(0, 1, 0);
  }}><OrbitControls autoRotate={false} /></T.PerspectiveCamera
>

<T.DirectionalLight position={[0, 10, 10]} />

<T.Mesh
  rotation.y={rotation}
  position.y={1}
  scale={scale.current}
  onpointerenter={() => {
    scale.target = 1.5;
    negative = !negative;
  }}
  onpointerleave={() => {
    scale.target = 1;
    negative = !negative;
  }}
  onclick={() => {
    // redirect to /
  }}
>
  <T.BoxGeometry args={[4, 4, 4]} />
  <ImageMaterial url="favicon.png" transparent {negative} />
</T.Mesh>

<T.Mesh rotation.y={rotation2} position.y={1} scale={scale.current}>
  <T.BoxGeometry args={[100, 100, 100]} />
  <ImageMaterial url="bg.png" transparent side={DoubleSide} />
</T.Mesh>
