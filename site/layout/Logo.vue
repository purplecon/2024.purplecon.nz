<style scoped>
header {
  display: flex;
  flex-flow: column;
  justify-content: center;
  align-items: stretch;
  overflow: hidden;

  .heading {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 12px;

    h1 {
      margin: 24px 0;
      font-weight: 500;
      letter-spacing: -2px;
      font-size: 4em;
      text-shadow: 0 4px 0 #7c17dfaa;

      @media (max-width: 600px) {
        font-size: 3em;
      }
    }

    img {
      image-rendering: pixelated;
    }
  }
}

#align {
  /* this mess means that p-books in middle doesn't overflow page */
  position: relative;
  height: 131px;

  p-books {
    position: absolute;
    top: 0;
    left: 50%;
    width: 800px;
    transform: translate(-400px);
    box-sizing: border-box;
    height: 128px;
    padding: 0 12px 1px;
    border-bottom: 2px solid #7c17df;
  }
}
</style>
<template>
  <header>
    <div id="align">
      <p-books></p-books>
    </div>
    <div class="heading">
      <h1>purplecon</h1>
      <img src="../static/logo-64.png" class="logo" loading="lazy" width="64" height="64" />
    </div>
  </header>
</template>
