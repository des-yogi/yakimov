{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main  main--noindex">
    <article class="contacts">
      <div class="container">
        <h1 class="contacts__title">[[*pagetitle]]</h1>

        <section class="contacts__row">
          <div class="contacts__text">
            <h2 class="contacts__address-name">
              {if $_modx->config.cultureKey == 'ru' ?}
                Киев
              {elseif $_modx->config.cultureKey == 'ua' ?}
                Київ
              {else}
                Kiev
              {/if}
            </h2>
            <div class="contacts__address-wrapper">
              <h4 class="contacts__name">
                {if $_modx->config.cultureKey == 'ru' ?}
                  Адрес Бюро:
                {elseif $_modx->config.cultureKey == 'ua' ?}
                  Адреса Бюро:
                {else}
                  Office Address:
                {/if}
              </h4>
              <span class="contacts__address">
                {if $_modx->config.cultureKey == 'ru' ?}
                  [[++company_address_kiev]]
                {elseif $_modx->config.cultureKey == 'ua' ?}
                  [[++company_address_kiev_ua]]
                {else}
                  [[++company_address_kiev_en]]
                {/if}
              </span>
            </div>
            <div class="contacts__address-wrapper">
              <h4 class="contacts__name">
                {if $_modx->config.cultureKey == 'ru' ?}
                  Телефоны:
                {elseif $_modx->config.cultureKey == 'ua' ?}
                  Телефони:
                {else}
                  Telephones:
                {/if}
              </h4>
              <span>
                    <a href="tel:+[[++company_phone1_kiev]]" class="contacts__tel-link">[[++company_phone1_kiev:phone_format]]</a>
                    — {if $_modx->config.cultureKey == 'ru' ?}Ассистент{elseif $_modx->config.cultureKey == 'ua' ?}Асистент{else}Assistant{/if}
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
            <h2 class="contacts__address-name">
              {if $_modx->config.cultureKey == 'ru' ?}
                Одесса
              {elseif $_modx->config.cultureKey == 'ua' ?}
                Одеса
              {else}
                Odessa
              {/if}
            </h2>
            <div class="contacts__address-wrapper">
              <h4 class="contacts__name">
                {if $_modx->config.cultureKey == 'ru' ?}
                  Адрес Бюро:
                {elseif $_modx->config.cultureKey == 'ua' ?}
                  Адреса Бюро:
                {else}
                  Office Address:
                {/if}
              </h4>
              <span class="contacts__address">
                {if $_modx->config.cultureKey == 'ru' ?}
                  [[++company_address_odessa]]
                {elseif $_modx->config.cultureKey == 'ua' ?}
                  [[++company_address_odessa_ua]]
                {else}
                  [[++company_address_odessa_en]]
                {/if}
              </span>
            </div>
            <div class="contacts__address-wrapper">
              <h4 class="contacts__name">
                {if $_modx->config.cultureKey == 'ru' ?}
                  Телефон:
                {elseif $_modx->config.cultureKey == 'ua' ?}
                  Телефон:
                {else}
                  Telephone:
                {/if}
              </h4>
              <span>
                    <a href="tel:+[[++company_phone_odessa]]" class="contacts__tel-link">[[++company_phone_odessa:phone_format]]</a>
                  </span>
            </div>
          </div>
          <div class="contacts__map-wrapper  contacts__map-wrapper--odessa">
            <article class="map  map--odessa">Карта</article>
          </div>
        </section>

        <h2 class="contacts__subtitle">
          {if $_modx->config.cultureKey == 'ru' ?}
            Напишите нам
          {elseif $_modx->config.cultureKey == 'ua' ?}
            Напишіть нам
          {else}
            Contact Us
          {/if}
        </h2>
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
            &validationErrorMessage=`{if $_modx->config.cultureKey == 'ru' ?}В поле формы содержатся ошибки!{elseif  $_modx->config.cultureKey == 'ua' ?}В поле форми містяться помилки!{else}The form field contains errors!{/if}`
            &successMessage=`{if $_modx->config.cultureKey == 'ru' ?}Сообщение успешно отправлено{elseif  $_modx->config.cultureKey == 'ua' ?}Повідомлення успішно відправлено{else}Message sent successfully{/if}`
            ]]

          </div>
          <div class="contacts__tel-wrapper">
            <h3 class="contacts__tel">
              {if $_modx->config.cultureKey == 'ru' ?}
                Звоните нам:
              {elseif $_modx->config.cultureKey == 'ua' ?}
                Телефонуйте нам:
              {else}
                Call Us:
              {/if}
            </h3>
            <a href="tel:+[[++company_phone2_kiev]]" class="contacts__tel-link">[[++company_phone2_kiev:phone_format]]</a>
            <a href="tel:+[[++company_phone1_kiev]]" class="contacts__tel-link">[[++company_phone1_kiev:phone_format]]</a>
          </div>
        </section>
      </div>
    </article>
  </main>
{/block}
