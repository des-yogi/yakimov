{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="contacts">
      <div class="container">
        <h1 class="contacts__title">[[*pagetitle]]</h1>

        <section class="contacts__row">
          <div class="contacts__text">
            <h2 class="contacts__address-name">Киев</h2>
            <div class="contacts__address-wrapper">
              <h4 class="contacts__name">Адрес Бюро:</h4>
              <span class="contacts__address">[[++company_address_kiev]]</span>
            </div>
            <div class="contacts__address-wrapper">
              <h4 class="contacts__name">Телефоны:</h4>
              <span>
                    <a href="tel:+[[++company_phone1_kiev]]" class="contacts__tel-link">[[++company_phone1_kiev:phone_format]]</a>
                    — Ассистент
                  </span>
              <span>
                    <a href="tel:+[[++company_phone2_kiev]]" class="contacts__tel-link">[[++company_phone2_kiev:phone_format]]</a>
                  </span>
            </div>
          </div>
          <div class="contacts__map-wrapper  contacts__map-wrapper--kiev">
            <article class="map  map--kiev">Карта</article>
          </div>
        </section>

        <section class="contacts__row">
          <div class="contacts__text  contacts__text--odessa">
            <h2 class="contacts__address-name">Одесса</h2>
            <div class="contacts__address-wrapper">
              <h4 class="contacts__name">Адрес Бюро:</h4>
              <span class="contacts__address">[[++company_address_odessa]]</span>
            </div>
            <div class="contacts__address-wrapper">
              <h4 class="contacts__name">Телефон:</h4>
              <span>
                    <a href="tel:+[[++company_phone_odessa]]" class="contacts__tel-link">[[++company_phone_odessa:phone_format]]</a>
                  </span>
            </div>
          </div>
          <div class="contacts__map-wrapper  contacts__map-wrapper--odessa">
            <article class="map  map--odessa">Карта</article>
          </div>
        </section>

        <h2 class="contacts__subtitle">Свяжитесь с нами</h2>
        <section class="contacts__row  contacts__row--form">
          <div class="contacts__form-wrapper">

            [[!AjaxForm?
            &snippet=`FormIt`
            &form=`contact_form_tpl`
            &hooks=`spam,email`
            &emailTpl=`@INLINE
            <p>Имя: <strong>[[+name]]</strong></p>
            <p>Email: <strong>[[+email]]</strong></p>
            <p>Телефон: <strong>[[+tel]]</strong></p>
            <p>Сообщение: <strong>[[+message]]</strong></p>
            `
            &emailSubject=`Сообщение с сайта [[++site_url]]`
            &emailTo=`info@yakimov.com.ua`
            &emailBCC=`dm@itdoors.com.ua`
            &emailFrom=`webmaster@yakimov.com.ua`
            &validate=`truemail:blank,name:required,email:required,message:required`
            &validationErrorMessage=`{if $_modx->config.cultureKey == 'ua' ?}В поле форми містяться помилки!{else}В поле формы содержатся ошибки!{/if}`
            &successMessage=`{if $_modx->config.cultureKey == 'ua' ?}Повідомлення успішно відправлено{else}Сообщение успешно отправлено{/if}`
            ]]

          </div>
          <div class="contacts__tel-wrapper">
            <h3 class="contacts__tel">Звоните по телефону:</h3>
            <a href="tel:+[[++company_phone2_kiev]]" class="contacts__tel-link">[[++company_phone2_kiev:phone_format]]</a>
            <a href="tel:+[[++company_phone1_kiev]]" class="contacts__tel-link">[[++company_phone1_kiev:phone_format]]</a>
          </div>
        </section>
      </div>
    </article>
  </main>
{/block}
