<script setup>
import { useData } from 'vitepress';
const { page, frontmatter, theme } = useData();
</script>
<style scoped>
nav {
  position: fixed;
  background: #40315aee;
  width: 100%;
  height: 4em;
  padding: 1em;
  box-sizing: border-box;
  top: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 100;
  backdrop-filter: blur(4px);

  .nav-items {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1em;
  }

  a {
    color: inherit;
  }

  .mobile-open {
    display: none;
    font: inherit;
    border-radius: 2px;
    background: transparent;
    border: 2px solid currentColor;
    color: inherit;
    cursor: pointer;
    white-space: nowrap;

    @media (max-width: 600px) {
      display: block;
    }
  }

  @media (max-width: 600px) {
    justify-content: flex-start;
    align-items: stretch;

    .nav-holder {
      position: relative;
      top: -4px;
    }

    .nav-items {
      flex-flow: column;
      margin-left: 16px;
      border: 2px solid #c567b2;
      position: relative;
      right: 0;
      align-items: stretch;
      text-align: center;
      gap: 0;
      border-radius: 2px;
      background: #442457;

      &::before {
        content: '';
        background: #442457;
        position: absolute;
        top: calc(0.5em + 4px);
        box-sizing: border-box;
        width: 16px;
        height: 16px;
        left: -8px;
        transform: rotate(45deg);
        border: 2px solid #c567b2;
        border-right-color: transparent;
        border-top-color: transparent;
      }

      a {
        padding: 8px 16px;
        z-index: 10;
        margin: 2px;
        border-radius: 2px;

        &:hover {
          background: #c567b2;
        }
      }
    }

    &:not(:focus-within) .nav-items {
      display: none;
    }
  }
}
</style>
<template>
  <nav>
    <button class="mobile-open" tabindex="-1">heyy 👀</button>
    <div class="nav-holder">
      <div class="nav-items">
        <template v-for="item in theme.nav" :key="item.href">
          <a :href="item.href">{{ item.title }}</a>
        </template>
      </div>
    </div>
  </nav>
</template>
