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
            <a {if $_modx->resource.id == '1' ?}{else}href="/"{/if} class="logo" title="[[++site_name]]">
              <picture>
                <source srcset="assets/img/yakimov-logo-tablet@1x.png" media="(min-width: 768px)">
                <img src="assets/img/yakimov-logo-mobile@1x.png" alt="[[++site_name]]" width="198" height="34">
              </picture>
            </a>
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
                &levelClass=`level`
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
                    <a href="" class="main-nav__lang-link  main-nav__lang-link--ru">RU</a>
                    <a href="" class="main-nav__lang-link  main-nav__lang-link--ua">UA</a>
                    <a href="" class="main-nav__lang-link  main-nav__lang-link--en">EN</a>
                  </li>
                </ul>

              </div>
            </nav>
          </div>
        </div>
      </div>

      {if $_modx->resource.id == '1' ?}
        <div class="page-header__bottom">
          <div class="container">
            <article class="hero">
              <div class="hero__row">
                <div class="hero__text">
                  <h1 class="hero__title"><span>Юридическая компания</span> Якимов и Партнеры</h1>
                  <p class="hero__descr">[[#1.introtext]]</p>
                  <a href="[[~5]]" class="hero__link">[[#5.pagetitle]]</a>
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
            <h3 class="page-footer__title">[[#7.pagetitle]]</h3>

            [[pdoMenu?
            &parents=`7`
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
            <h3 class="page-footer__title">[[#6.pagetitle]]</h3>

            [[pdoMenu?
            &parents=`6`
            &level=`1`
            &showHidden=`1`
            &limit=`5`
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
            <h3 class="page-footer__title">[[#8.pagetitle]]</h3>
            <ul class="page-footer__list">
              <li class="page-footer__item">
                {*<span>м. Київ,<br>вул. Богдана Хмельницького, 26,<br>оф. 312</span>*}
                <span>[[++company_address_kiev]]</span>
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
            <span class="copyrights__master">© 2012-2017 [[++company_name]]</span>
            <a href="http://it-doors.com" class="copyrights__dev" rel="nofollow" target="_blank" title="IT-Doors Outsourcing">Разработка
              <span>
                <img src="assets/img/it-doors-logo-color.png" alt="IT-Doors" width="89" height="33">
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
