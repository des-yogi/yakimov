<div class="team__slide">
  <div class="team__img-wrapper">
    <a href="[[+uri]]" class="team__img-link" title="[[+pagetitle]]">
      <picture>
        <source srcset="[[pthumb? &input=`[[+tv.employee_img]]` &options=`w=430&h=449&aoe=0&zc=t&fltr[]=usm`]]" media="(min-width: 1200px)">
        <source srcset="[[pthumb? &input=`[[+tv.employee_img]]` &options=`w=430&h=449&aoe=0&zc=t&fltr[]=usm`]]" media="(min-width: 768px)">
        <img src="[[pthumb? &input=`[[+tv.employee_img]]` &options=`w=320&h=449&aoe=1&fltr[]=usm`]]" alt="[[+pagetitle]]" width="320" height="449">
      </picture>
    </a>
  </div>
  <div class="team__text">
    <h3 class="team__subtitle">
      <a href="[[+uri]]" title="[[+pagetitle]]">[[+pagetitle]]</a>
    </h3>
    <p class="team__para">[[+tv.employee_position]]<br>[[+tv.employee_ranks]]</p>
    <a href="[[+uri]]" class="btn">
      {if $_modx->config.cultureKey == 'ru' ?}
        Больше
      {elseif $_modx->config.cultureKey == 'ua' ?}
        Більше
      {else}
        More
      {/if}
    </a>
  </div>
</div>
