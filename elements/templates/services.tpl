{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="services">
      <div class="container">
        <h1 class="services__title">[[*pagetitle]]</h1>
        <div class="row  services__row">

          [[pdoResources?
          &parents=`[[*id]]`
          &depth=`1`
          &tpl=`@FILE chunks/services_item.tpl`
          &includeTVs=`service_icon`
          ]]

        </div>

      </div>
    </article>
  </main>
{/block}
