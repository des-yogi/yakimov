{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="news  news-item">
      <div class="container">
        <h1 class="news__title">[[*parent:getThisField=`pagetitle`]]</h1>
        <article class="news-item__content">

          [[*news_img:notempty=`
            <div class="news-item__img-wrapper">
              <picture>
                <source srcset="[[pthumb? &input=`[[*news_img]]` &options=`w=900&h=600&aoe=0&fltr[]=usm`]]" media="(min-width: 768px)">
                <img src="[[pthumb? &input=`[[*news_img]]` &options=`w=320&h=212&aoe=0&fltr[]=usm`]]" alt="[[*pagetitle]]" width="320" height="212">
              </picture>
            </div>
          `]]

          <h2 class="news-item__title">[[*pagetitle]]</h2>

          [[*content]]

          <p>[[*publishedon:date=`%d.%m.%Y`]]</p>

          [[*news_source:notempty=`
            <a class="news-item__source" href="[[*news_source]]" rel="nofollow,noindex" target="_blank">[[*news_source]]</a>
          `]]

          <div class="news-item__prev-wrapper">
            <a href="javascript:history.back();" class="btn  btn--prev" title="Вернуться на предыдущую страницу">Вернуться</a>
          </div>
        </article>
      </div>
    </article>
  </main>
{/block}
