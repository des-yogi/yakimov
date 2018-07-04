{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="about">
      <div class="container">
        <h1 class="about__title">[[*parent:getThisField=`pagetitle`]]</h1>
        <section class="about__intro  clearfix">
          <img src="[[pthumb? &input=`[[*employee_img]]` &options=`w=320&h=449&aoe=0&fltr[]=usm`]]" class="about__img-left" alt="[[*pagetitle]]" style="width:auto;height:auto;">
          <h2 class="about__subtitle">[[*pagetitle]]</h2>
          <p>[[*employee_position]]<br>[[*employee_ranks]]</p>
          [[*content]]
        </section>
      </div>
    </article>

  </main>
{/block}
