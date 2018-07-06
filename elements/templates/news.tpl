{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="news">
      <div class="container">
        <h1 class="news__title">[[*pagetitle]]</h1>

        <div class="news__inner">
          [[pdoResources?
          &parents=`
          {if $_modx->config.cultureKey == 'ru' ?}
            6
          {elseif $_modx->config.cultureKey == 'ua' ?}
            [[BabelTranslation? &resourceId=`6` &contextKey=`ukr`]]
          {else}
            [[BabelTranslation? &resourceId=`6` &contextKey=`eng`]]
          {/if}
          `
          &tpl=`@FILE chunks/news_card.tpl`
          &limit=`20`
          &sortby=`{ "publishedon":"DESC" }`
          ]]
        </div>
      </div>
    </article>
  </main>
{/block}
