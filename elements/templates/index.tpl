{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main">

    <article class="services">
      <div class="container">
        <h2 class="services__title">[[#7.pagetitle]]</h2>
        <div class="row  services__row">

          [[pdoResources?
          &parents=`7`
          &depth=`1`
          &tpl=`@FILE chunks/services_item.tpl`
          &includeTVs=`service_icon`
          ]]

        </div>
      </div>
    </article>

    <article class="team">
      <div class="container">
        <h2 class="team__title">[[#21.pagetitle]]</h2>
      </div>
      <div class="team__slider  owl-carousel  owl-theme">

        [[pdoResources?
        &parents=`21`
        &depth=`0`
        &tpl=`@FILE chunks/team_slide.tpl`
        &includeTVs=`employee_img,employee_position,employee_ranks`
        ]]

      </div>
    </article>

  </main>
{/block}
