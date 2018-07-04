{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="page-404">
      <div class="container">
        <h1 class="page-404__title">404</h1>
        <div class="page-404__inner">
          <div class="page-404__img-wrapper">
            <img src="assets/img/page-404-icon.svg" alt="page-404" width="102" height="128">
          </div>
          <div class="page-404__descr">
            <h2>Страница не найдена или не сущестует…</h2>
          </div>
        </div>
      </div>
    </article>
  </main>
{/block}
