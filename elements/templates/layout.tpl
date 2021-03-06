<!DOCTYPE html>
<html class="no-js  page" lang="[[++cultureKey]]" prefix="og: https://ogp.me/ns#">
<head>
  <meta charset="utf-8">
  {block 'title'}
    <title>[[*pagetitle:default=`[[*longtitle]]`]] - [[++company_name]]</title>
  {/block}
  <base href="[[++site_url]]">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="MobileOptimized" content="320">
  <meta name="format-detection" content="telephone=no">
  <meta name="keywords" content="[[+seoPro.keywords]]">
  <meta name="description" content="[[*description]]">
  <meta name="robots" content="[[+seoTab.robotsTag]]">
  <meta property="og:url"           content="[[++site_url]]" />
  <meta property="og:type"          content="website" />
  <meta property="og:title"         content="[[++company_name]]" />
  <meta property="og:description"   content="[[#1.description]]" />
  <meta property="og:image"         content="https://yakimov.com.ua/assets/images/og-img.jpg" />
  <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;subset=cyrillic" rel="stylesheet">
  <link href="assets/css/style.min.css" rel="stylesheet" media="screen">
  {block 'add_css'}{/block}
  <script>
    // Picture element HTML5 shiv
    document.createElement("picture");
  </script>
  <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
  <link rel="manifest" href="assets/img/site.webmanifest">
  <link rel="mask-icon" href="assets/img/safari-pinned-tab.svg" color="#ffffff">
  <link rel="shortcut icon" href="assets/img/favicon.ico">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/img/mstile-144x144.png">
  <meta name="msapplication-config" content="assets/img/browserconfig.xml">
  <meta name="theme-color" content="#ffffff"></head>
<body>
<div class="page__inner">
  <div class="page__content">
    <header class="page-header" role="banner">
      <div class="page-header__top">
        <div class="container">
          <div class="page-header__menu">
            <!-- Поменять версии логотипов, если надо -->
            {if $_modx->config.cultureKey == 'ru' ?}
              <a href="/" class="logo" title="[[++site_name]]">
                <picture>
                  <source srcset="assets/img/yakimov-logo-tablet@1x.png" media="(min-width: 768px)">
                  <img src="assets/img/yakimov-logo-mobile@1x.png" alt="[[++site_name]]" width="198" height="34">
                </picture>
              </a>
            {elseif $_modx->config.cultureKey == 'ua' ?}
              <a href="/ua/" class="logo" title="[[++site_name]]">
                <picture>
                  <source srcset="assets/img/yakimov-logo-tablet@1x.png" media="(min-width: 768px)">
                  <img src="assets/img/yakimov-logo-mobile@1x.png" alt="[[++site_name]]" width="198" height="34">
                </picture>
              </a>
            {else}
              <a href="/en/" class="logo" title="[[++site_name]]">
                <picture>
                  <source srcset="assets/img/yakimov-logo-tablet@1x.png" media="(min-width: 768px)">
                  <img src="assets/img/yakimov-logo-mobile@1x.png" alt="[[++site_name]]" width="198" height="34">
                </picture>
              </a>
            {/if}

            <nav id="main-nav" class="main-nav" role="navigation">
              <div class="wrapper-menu">
                <div class="line-menu half start"></div>
                <div class="line-menu"></div>
                <div class="line-menu half end"></div>
              </div>
              <div class="main-nav__inner">

                [[pdoMenu?
                &parents=`0`
                &level=`1`
                &tplOuter=`@INLINE <ul class="main-nav__list" role="navigation">[[+wrapper]]</ul>`
                &tpl=`@INLINE
                <li class="main-nav__item">
                  <a href="[[+uri]]" class="main-nav__link">[[+menutitle]]</a>[[+wrapper]]
                </li>
                `
                &tplHere=`@INLINE
                <li class="main-nav__item  main-nav__item--active  active">
                  <a href="[[+uri]]" class="main-nav__link">[[+menutitle]]</a>[[+wrapper]]
                </li>
                `
                ]]

                <ul class="main-nav__lang">
                  <li class="main-nav__lang-item">
                    {if $_modx->config.cultureKey == 'ru' ?}
                      <a href="/[[+url]]" class="main-nav__lang-link  main-nav__lang-link--ru">RU</a>
                      <a href="/ua/[[+url]]" class="main-nav__lang-link  main-nav__lang-link--ua">UA</a>
                      <a href="/en/[[+url]]" class="main-nav__lang-link  main-nav__lang-link--en">EN</a>
                    {elseif $_modx->config.cultureKey == 'ua' ?}
                      <a href="/ua/" class="main-nav__lang-link  main-nav__lang-link--ua">UA</a>
                      <a href="/" class="main-nav__lang-link  main-nav__lang-link--ru">RU</a>
                      <a href="/en/" class="main-nav__lang-link  main-nav__lang-link--en">EN</a>
                    {else}
                      <a href="/en/" class="main-nav__lang-link  main-nav__lang-link--en">EN</a>
                      <a href="/" class="main-nav__lang-link  main-nav__lang-link--ru">RU</a>
                      <a href="/ua/" class="main-nav__lang-link  main-nav__lang-link--ua">UA</a>
                    {/if}
                  </li>
                </ul>

              </div>
            </nav>
          </div>
        </div>
      </div>

      {if $_modx->resource.id == '1' || $_modx->resource.id == '34' || $_modx->resource.id == '35' ?}
        <div class="page-header__bottom">
          <div class="container">
            <article class="hero">
              <div class="hero__row">
                <div class="hero__text">
                  <h1 class="hero__title">
                    {if $_modx->config.cultureKey == 'ru' ?}
                      <span>Юридическая компания</span> Якимов и Партнеры
                    {elseif $_modx->config.cultureKey == 'ua' ?}
                      <span> Юридична компанія </span> Якимів та Партнери
                    {else}
                      <span> Law Firm </span> Yakimov & Partners
                    {/if}
                  </h1>
                  <p class="hero__descr">
                    {if $_modx->config.cultureKey == 'ru' ?}
                      [[#1.introtext]]
                    {elseif $_modx->config.cultureKey == 'ua' ?}
                      [[#34.introtext]]
                    {else}
                      [[#35.introtext]]
                    {/if}
                  </p>
                  {if $_modx->config.cultureKey == 'ru' ?}
                    <a href="[[~5]]" class="hero__link">[[#5.pagetitle]]</a>
                  {elseif $_modx->config.cultureKey == 'ua' ?}
                    <a href="[[~36]]" class="hero__link">[[#36.pagetitle]]</a>
                  {else}
                    <a href="[[~37]]" class="hero__link">[[#37.pagetitle]]</a>
                  {/if}
                </div>
                <div class="hero__img-wrapper">
                  <picture>
                    <source srcset="assets/img/yakimov-desktop@1x.jpg" media="(min-width: 992px)">
                    <img src="assets/img/yakimov-mobile@1x.jpg" alt="Владимир Якимов" width="320" height="480">
                  </picture>
                </div>
              </div>
            </article>
          </div>
        </div>
      {/if}

    </header>

  {block 'main'}

  {/block}

  </div>
  <div class="page__footer-wrapper">
    <footer class="page-footer" role="contentinfo">
      <div class="container">
        <div class="page-footer__top">
          <section class="page-footer__service">
            <h3 class="page-footer__title">
              {if $_modx->config.cultureKey == 'ru' ?}
                [[#7.pagetitle]]
              {elseif $_modx->config.cultureKey == 'ua' ?}
                [[#40.pagetitle]]
              {else}
                [[#41.pagetitle]]
              {/if}
            </h3>

            [[pdoMenu?
              &parents=`
              {if $_modx->config.cultureKey == 'ru' ?}
                7
              {elseif $_modx->config.cultureKey == 'ua' ?}
                [[BabelTranslation? &resourceId=`7` &contextKey=`ukr`]]
              {else}
                [[BabelTranslation? &resourceId=`7` &contextKey=`eng`]]
              {/if}
              `
              &level=`1`
              &showHidden=`1`
              &tplOuter=`@INLINE <ul class="page-footer__list" role="navigation">[[+wrapper]]</ul>`
              &tpl=`@INLINE
              <li class="page-footer__item">
                <a href="[[+uri]]" class="page-footer__link">[[+menutitle]]</a>[[+wrapper]]
              </li>
              `
              &tplHere=`@INLINE
              <li class="page-footer__item  active">
                <a href="[[+uri]]" class="page-footer__link">[[+menutitle]]</a>[[+wrapper]]
              </li>
              `
            ]]

          </section>
          <section class="page-footer__news">
            <h3 class="page-footer__title">
              {if $_modx->config.cultureKey == 'ru' ?}
              [[#6.pagetitle]]
              {elseif $_modx->config.cultureKey == 'ua' ?}
              [[#38.pagetitle]]
              {else}
              [[#39.pagetitle]]
              {/if}
            </h3>

            [[pdoMenu?
              &parents=`
              {if $_modx->config.cultureKey == 'ru' ?}
                6
              {elseif $_modx->config.cultureKey == 'ua' ?}
                [[BabelTranslation? &resourceId=`6` &contextKey=`ukr`]]
              {else}
                [[BabelTranslation? &resourceId=`6` &contextKey=`eng`]]
              {/if}
              `
              &level=`1`
              &showHidden=`1`
              &limit=`5`
              &sortby=`{ "publishedon":"DESC" }`
              &tplOuter=`@INLINE <ul class="page-footer__list" role="navigation">[[+wrapper]]</ul>`
              &tpl=`@INLINE
              <li class="page-footer__item">
                <span class="page-footer__date">[[+publishedon:date=`%d.%m.%Y`]]</span>
                <a href="[[+uri]]" class="page-footer__link">[[+menutitle]]</a>[[+wrapper]]
              </li>
              `
            ]]

          </section>
          <section class="page-footer__contacts">
            <h3 class="page-footer__title">
              {if $_modx->config.cultureKey == 'ru' ?}
                [[#8.pagetitle]]
              {elseif $_modx->config.cultureKey == 'ua' ?}
                [[#42.pagetitle]]
              {else}
                [[#43.pagetitle]]
              {/if}
            </h3>
            <ul class="page-footer__list">
              <li class="page-footer__item">
                {*<span>м. Київ,<br>вул. Богдана Хмельницького, 26,<br>оф. 312</span>*}
                <span>
                  {if $_modx->config.cultureKey == 'ru' ?}
                    [[++company_address_kiev]]
                  {elseif $_modx->config.cultureKey == 'ua' ?}
                    [[++company_address_kiev_ua]]
                  {else}
                    [[++company_address_kiev_en]]
                  {/if}
                </span>
              </li>
              <li class="page-footer__item">
                <a href="mailto:info@yakimov.com.ua" class="page-footer__link" title="Напишите нам">[[++company_email]]</a>
              </li>
              <li class="page-footer__item  page-footer__item--social">
                <article class="social">
                  <a href="[[++social_fb]]" class="social__link" title="Facebook" target="_blank" rel="follow,index">Facebook
                    <svg width="26" height="26">
                      <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#facebook-icon"/>
                    </svg>
                  </a>
                  <a href="[[++social_google_plus]]" class="social__link" title="Google plus" target="_blank" rel="follow,index">Google plus
                    <svg width="26" height="26">
                      <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#google-plus-icon"/>
                    </svg>
                  </a>
                  <a href="[[++social_tw]]" class="social__link" title="Twitter" target="_blank" rel="follow,index">Twitter
                    <svg width="26" height="26">
                      <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#twitter-icon"/>
                    </svg>
                  </a>
                  <a href="[[++social_youtube]]" class="social__link" title="Youtube" target="_blank" rel="follow,index">Youtube
                    <svg width="26" height="26">
                      <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#youtube-icon"/>
                    </svg>
                  </a>
                </article>
              </li>
            </ul>
          </section>
        </div>
      </div>
      <div class="page-footer__bottom">
        <div class="container">
          <article class="copyrights">
            <span class="copyrights__master">
              © 2012-2017
              {if $_modx->config.cultureKey == 'ru' ?}
                [[++company_name]]
              {elseif $_modx->config.cultureKey == 'ua' ?}
                [[++company_name_ua]]
              {else}
                [[++company_name_en]]
              {/if}
            </span>
            <a href="http://it-doors.com" class="copyrights__dev" rel="nofollow" target="_blank" title="IT-Doors Outsourcing">
              {if $_modx->config.cultureKey == 'ru' ?}
                Разработка
              {elseif $_modx->config.cultureKey == 'ua' ?}
                Розробка
              {else}
                Development by
              {/if}
              <span>
                <img src="assets/img/it-doors-logo-color.png" alt="IT-Doors Outsourcing" width="89" height="33">
              </span>
            </a>
          </article>
        </div>
      </div>
    </footer>
  </div>
</div>
<script src="assets/js/script.min.js"></script>
</body>
</html>
