<script setup lang="ts">
import Nav from './Nav.vue';
import Logo from './Logo.vue';
import { useData } from 'vitepress';
const { page, frontmatter, theme } = useData();
</script>
<script client lang="ts">
import '../src/index.ts';
</script>
<script lang="ts">
// Vitepress is confused about dev/client envs for MPAs.
// The "script client" above isn't run during dev, but this is.
// So import the site's code, even though it'll act as a SPA.
if (import.meta.env.DEV) {
  await import('../src/index.ts');
}
</script>
<style>
@import url(../static/fonts.css);
@import url(../static/styles.css);

a {
  color: #ff75e5;
  text-decoration: none;

  &:focus {
    background: #a6cdfa;
    border-radius: 2px;
    color: #ff75e5;
  }

  &:hover {
    color: #a6cdfa;
    background: purple;
  }
}

html {
  min-width: 320px;
}
body {
  background: #40315a;
  color: #f2c8fd;
  font-family: 'Urbanist';
  font-size: 20px;
  font-weight: 300;
  min-width: 375px; /* iPhone SE */
  box-sizing: border-box;
  margin: 0;
  overflow-x: hidden;
  margin-top: 4em;
  scroll-padding-top: 4em;
}
.middle {
  margin: 0 auto;
  max-width: 800px;
  padding: 32px;
}
</style>
<template>
  <Nav />
  <div v-if="frontmatter.layout == 'home'">
    <Logo />
  </div>
  <div class="middle">
    <div v-if="page.isNotFound">
      <h2>404</h2>
    </div>
    <Content v-else />
  </div>
</template>
