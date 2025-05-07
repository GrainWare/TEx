<script>
  import Title from '$lib/components/Title.svelte';
  import Card from '$lib/components/Card.svelte';
</script>

<Title />

<Card
  imageSrc="/placeholder.png"
  title="Unparalleled Graphs"
  description="We have partnered with accuratelinuxgraphs to provide you with the best graphs of our data. We may not be as accurate, but we have the best graphs."
/>
<Card
  imageSrc="/placeholder.png"
  title="The House Always Wins"
  description="We have partnered with accuratelinuxgraphs to provide you with the most rigged website. We may not be fair, but we have the best graphs."
/>
<Card
  imageSrc="/placeholder.png"
  title="Insert Third Selling Point Here"
  description="We have partnered with accuratelinuxgraphs to provide you with the most selling points. We may not have the best selling points, but we have the most*."
>
  <p class="text-sm text-gray-200/50 mt-2">
    *"Most" is a term in the Accuracy Metric System (AMS) and is not a real metric.
  </p>
</Card>
