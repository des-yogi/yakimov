{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main">

    <article class="services">
      <div class="container">
        <h2 class="services__title">
          {if $_modx->config.cultureKey == 'ru' ?}
            [[#7.pagetitle]]
          {elseif $_modx->config.cultureKey == 'ua' ?}
            [[#40.pagetitle]]
          {else}
            [[#41.pagetitle]]
          {/if}
        </h2>
        <div class="row  services__row">

          [[pdoResources?
            &parents=`
            {if $_modx->config.cultureKey == 'ru' ?}
              7
            {elseif $_modx->config.cultureKey == 'ua' ?}
              [[BabelTranslation? &resourceId=`7` &contextKey=`ukr`]]
            {else}
              [[BabelTranslation? &resourceId=`7` &contextKey=`eng`]]
            {/if}
            `
            &depth=`1`
            &sortby=`{ "id":"ASC" }`
            &tpl=`@FILE chunks/services_item.tpl`
            &includeTVs=`service_icon`
          ]]

        </div>
      </div>
    </article>

    <article class="team">
      <div class="container">
        <h2 class="team__title">
          {if $_modx->config.cultureKey == 'ru' ?}
            [[#21.pagetitle]]
          {elseif $_modx->config.cultureKey == 'ua' ?}
            [[#46.pagetitle]]
          {else}
            [[#47.pagetitle]]
          {/if}
        </h2>
      </div>
      <div class="team__slider  owl-carousel  owl-theme">

        [[pdoResources?
        &parents=`
        {if $_modx->config.cultureKey == 'ru' ?}
          21
        {elseif $_modx->config.cultureKey == 'ua' ?}
          [[BabelTranslation? &resourceId=`21` &contextKey=`ukr`]]
        {else}
          [[BabelTranslation? &resourceId=`21` &contextKey=`eng`]]
        {/if}
        `
        &depth=`0`
        &tpl=`@FILE chunks/team_slide.tpl`
        &includeTVs=`employee_img,employee_position,employee_ranks`
        ]]

      </div>
    </article>

  </main>
{/block}
