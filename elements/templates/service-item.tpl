{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="services  services-item">
      <div class="container">
        <h1 class="services__title  services-item__title">[[*pagetitle]]</h1>
        <h3 class="services-item__subtitle">[[*introtext]]</h3>

        [[*service_list:notempty=`
          <div class="services-item__content">
            [[!getImageList?
            &tvname=`service_list`
            &wrapperTpl=`@CODE: <ul class="services-item__list">[[+output]]</ul>`
            &tpl=`@CODE: <li class="services-item__list-item">[[+service_item]]</li>`
            &docid=`[[*id]]`
            &limit=`99`
            ]]
          </div>
        `]]

        [[*content:notempty=`
        <div style="margin-top:3em;margin-bottom:1.5em;">
          [[*content]]
        </div>
        `]]

        <div class="news-item__prev-wrapper">
          <a href="javascript:history.back();" class="btn  btn--prev" title="Вернуться на предыдущую страницу">Вернуться</a>
        </div>
      </div>
    </article>
  </main>
{/block}
