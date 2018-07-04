{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="news">
      <div class="container">
        <h1 class="news__title">[[*pagetitle]]</h1>

        <div class="news__inner">
          [[pdoResources?
          &parents=`6`
          &tpl=`@FILE chunks/news_card.tpl`
          &limit=`20`
          &sortby=`{ "publishedon":"DESC" }`
          ]]
        </div>
      </div>
    </article>
  </main>
{/block}
