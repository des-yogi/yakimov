{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="about">
      <div class="container">
        <h1 class="about__title">[[*pagetitle]]</h1>
        <section class="about__intro  clearfix">
          <picture>
            <source srcset="assets/img/about-top-desktop@1x.jpg" media="(min-width: 1200px)">
            <source srcset="assets/img/about-top-tablet@1x.jpg" media="(min-width: 768px)">
            <img src="assets/img/about-top-mobile@1x.jpg" alt="Img" class="about__img-left" width="280" height="215">
          </picture>
          <h2 class="about__subtitle">[[++company_name]]</h2>
          [[*content]]
        </section>

        <section class="about__middle  clearfix">
          <h4 class="about__emphasis">[[*about_subtitle]]</h4>
          [[!getImageList?
          &tvname=`about_result_list`
          &wrapperTpl=`@CODE: <ul class="about__list  about__list--left">[[+output]]</ul>`
          &tpl=`@CODE: <li class="about__list-item">[[+list_item]]</li>`
          &docid=`[[*id]]`
          &limit=`99`
          ]]

          <picture>
            <source srcset="assets/img/about-middle-desktop@1x.jpg" media="(min-width: 1200px)">
            <source srcset="assets/img/about-middle-mobile@1x.jpg" media="(min-width: 768px)">
            <img src="assets/img/about-middle-mobile@1x.jpg" alt="Img" class="about__img-bottom-right" width="280" height="81">
          </picture>
          <p class="about__para"><strong>Указанные выше дела лишь незначительная часть успешно проведенных Адвокатами нашей Юридической компании уголовных дел (производств).</strong></p>
        </section>

        <section class="about__card-blocks">
          <div class="about__card  about__card--full">
            <p class="about__para"><strong>Кроме защиты интересов наших клиентов в уголовных производствах, адвокаты и юристы Юридической компании «Якимов и партнеры» успешно представляют интересы наших клиентов по гражданским делам:</strong></p>

            [[!getImageList?
            &tvname=`about_civil_list`
            &wrapperTpl=`@CODE: <ul class="about__list">[[+output]]</ul>`
            &tpl=`@CODE: <li class="about__list-item">[[+list_item]]</li>`
            &docid=`[[*id]]`
            &limit=`99`
            ]]
          </div>

          <div class="about__card  about__card--half">
            <p class="about__para"><strong>Юристами Юридической компании «Якимов и партнеры» выиграно значительное количество судебных дел в хозяйственных судах всех уровней и территориальной подсудности в большей части по таким категориям дел наших клиентов:</strong></p>
            [[!getImageList?
            &tvname=`about_economic_list`
            &wrapperTpl=`@CODE: <ul class="about__list">[[+output]]</ul>`
            &tpl=`@CODE: <li class="about__list-item">[[+list_item]]</li>`
            &docid=`[[*id]]`
            &limit=`99`
            ]]
          </div>

          <div class="about__card  about__card--half">
            [[*about_final_textarea]]
          </div>
        </section>

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
