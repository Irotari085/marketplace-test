$indexHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Главная — TerrasMarket" />
  <title>TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="hero">
        <div class="hero-copy">
          <span class="hero-badge">Маркетплейс для декора и освещения</span>
          <h1>Найдите уникальный товар или разместите объявление за минуту</h1>
          <p class="hero-text">TerrasMarket объединяет мастеров и покупателей: выбор, продажи и управление заказами из личного кабинета.</p>
          <div class="hero-actions">
            <a class="button primary" href="products.html">Каталог</a>
            <a class="button secondary" href="create.html">Разместить товар</a>
          </div>
          <div class="hero-stats">
            <div><strong>1 200+</strong><span>товаров</span></div>
            <div><strong>24</strong><span>категории</span></div>
            <div><strong>24/7</strong><span>поддержка</span></div>
          </div>
        </div>
        <div class="hero-panel">
          <img src="https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=900&q=80" alt="Marketplace hero" />
          <div class="hero-panel-copy">
            <p class="panel-label">Хит продаж</p>
            <h2>Лампа Nebula</h2>
            <p>Авторское освещение для стильных интерьеров.</p>
            <p class="panel-price">24 500 ₽</p>
          </div>
        </div>
      </section>

      <section class="section-head">
        <div>
          <h2>Популярные категории</h2>
          <p>Выбирайте товары по стилю и назначению.</p>
        </div>
        <a class="button secondary" href="products.html">Весь каталог</a>
      </section>

      <section class="category-grid">
        <article class="category-card">
          <h3>Освещение</h3>
          <p>Подвесные, настольные и напольные светильники.</p>
        </article>
        <article class="category-card">
          <h3>Мебель</h3>
          <p>Столы, кресла и предметы для уютного интерьера.</p>
        </article>
        <article class="category-card">
          <h3>Декор</h3>
          <p>Аксессуары, картины и текстиль для завершенного образа.</p>
        </article>
      </section>

      <section class="product-grid featured-products">
        <article class="product-card">
          <img src="https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=900&q=80" alt="Aura Lamp" />
          <div class="product-info">
            <h3>Aura Lamp</h3>
            <p>Минималистичная лампа с мягким свечением.</p>
            <div class="product-meta">
              <span class="price">12 900 ₽</span>
              <a class="link-muted" href="item.html">Подробнее</a>
            </div>
          </div>
        </article>
        <article class="product-card">
          <img src="https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80" alt="Noctira Lamp" />
          <div class="product-info">
            <h3>Noctira Lamp</h3>
            <p>Футуристическая форма с матовым стеклом.</p>
            <div class="product-meta">
              <span class="price">16 400 ₽</span>
              <a class="link-muted" href="item.html">Подробнее</a>
            </div>
          </div>
        </article>
        <article class="product-card">
          <img src="https://images.unsplash.com/photo-1540574163026-643ea20ade25?auto=format&fit=crop&w=900&q=80" alt="Soft Chair" />
          <div class="product-info">
            <h3>Soft Chair</h3>
            <p>Комфортное кресло с обтекаемой формой.</p>
            <div class="product-meta">
              <span class="price">29 900 ₽</span>
              <a class="link-muted" href="item.html">Подробнее</a>
            </div>
          </div>
        </article>
        <article class="product-card">
          <img src="https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80" alt="Art Mirror" />
          <div class="product-info">
            <h3>Art Mirror</h3>
            <p>Зеркало с текстурированной рамой и подвеской.</p>
            <div class="product-meta">
              <span class="price">8 900 ₽</span>
              <a class="link-muted" href="item.html">Подробнее</a>
            </div>
          </div>
        </article>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
        <a href="faq.html">FAQ</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$productsHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Каталог — TerrasMarket" />
  <title>Каталог — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Каталог товаров</h2>
          <p>Выберите товара из популярных категорий и новых поступлений.</p>
        </div>
        <a class="button secondary" href="create.html">Добавить товар</a>
      </section>

      <div class="tabs">
        <button class="tab active">Освещение</button>
        <button class="tab">Мебель</button>
        <button class="tab">Декор</button>
        <button class="tab">Новинки</button>
      </div>

      <section class="product-grid">
        <article class="product-card">
          <img src="https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=900&q=80" alt="Aura Lamp" />
          <div class="product-info">
            <h3>Aura Lamp</h3>
            <p>Светильник с теплым дневным светом и белой отделкой.</p>
            <div class="product-meta">
              <span class="price">12 900 ₽</span>
              <a class="link-muted" href="item.html">Подробнее</a>
            </div>
          </div>
        </article>
        <article class="product-card">
          <img src="https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80" alt="Noctira Lamp" />
          <div class="product-info">
            <h3>Noctira Lamp</h3>
            <p>Футуристический дизайн с эффектом мягкой подсветки.</p>
            <div class="product-meta">
              <span class="price">16 400 ₽</span>
              <a class="link-muted" href="item.html">Подробнее</a>
            </div>
          </div>
        </article>
        <article class="product-card">
          <img src="https://images.unsplash.com/photo-1540574163026-643ea20ade25?auto=format&fit=crop&w=900&q=80" alt="Soft Chair" />
          <div class="product-info">
            <h3>Soft Chair</h3>
            <p>Комфортное кресло для рабочего пространства или зоны отдыха.</p>
            <div class="product-meta">
              <span class="price">29 900 ₽</span>
              <a class="link-muted" href="item.html">Подробнее</a>
            </div>
          </div>
        </article>
        <article class="product-card">
          <img src="https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=900&q=80" alt="Art Mirror" />
          <div class="product-info">
            <h3>Art Mirror</h3>
            <p>Современное зеркало с художественной рамой.</p>
            <div class="product-meta">
              <span class="price">8 900 ₽</span>
              <a class="link-muted" href="item.html">Подробнее</a>
            </div>
          </div>
        </article>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="about.html">О проекте</a>
        <a href="faq.html">FAQ</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$aboutHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="О проекте — TerrasMarket" />
  <title>О проекте — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>О TerrasMarket</h2>
          <p>Платформа для дизайнеров и авторских магазинов, готовых расти онлайн.</p>
        </div>
      </section>

      <section class="featured-grid">
        <article class="feature-card feature-large">
          <p class="feature-label">TerrasMarket помогает продавцам выводить товары на рынок быстрее, а покупателям — находить уникальные предметы интерьера.</p>
        </article>
        <article class="feature-card">
          <img src="https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80" alt="Interior" />
        </article>
        <article class="feature-card">
          <img src="https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=900&q=80" alt="Design" />
        </article>
      </section>

      <section class="about-grid">
        <div class="profile-card">
          <div class="avatar"></div>
          <div>
            <strong>Команда TerrasMarket</strong>
            <p>Мы создаем удобную платформу для российских брендов и дизайнеров.</p>
          </div>
        </div>
        <div class="feature-small">Безопасные сделки</div>
        <div class="feature-small feature-dark">Поддержка 24/7</div>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="faq.html">FAQ</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$faqHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="FAQ — TerrasMarket" />
  <title>FAQ — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Частые вопросы</h2>
          <p>Ответы на самые распространённые вопросы – о продаже, оплате и доставке.</p>
        </div>
      </section>

      <section class="featured-grid">
        <article class="feature-card">
          <h3>Как разместить товар?</h3>
          <p>Перейдите на страницу «Продать», заполните карточку товара и загрузите фотографии.</p>
        </article>
        <article class="feature-card">
          <h3>Какие способы оплаты доступны?</h3>
          <p>Покупатели могут оплатить картой или через платёжные сервисы, которые подключены к магазину.</p>
        </article>
        <article class="feature-card">
          <h3>Как работает возврат?</h3>
          <p>Возврат можно оформить в течение 30 дней после получения товара при выполнении условий продавца.</p>
        </article>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$cartHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Корзина — TerrasMarket" />
  <title>Корзина — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Ваша корзина</h2>
          <p>Проверьте выбранные товары перед оформлением заказа.</p>
        </div>
        <a class="button primary" href="order.html">Оформить заказ</a>
      </section>

      <section class="content-panel">
        <div class="product-row">
          <img src="https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=900&q=80" alt="Aura Lamp" />
          <div class="product-row-info">
            <h3>Aura Lamp</h3>
            <p>Qty 1 · 12 900 ₽</p>
          </div>
        </div>
        <div class="product-row">
          <img src="https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80" alt="Noctira Lamp" />
          <div class="product-row-info">
            <h3>Noctira Lamp</h3>
            <p>Qty 1 · 16 400 ₽</p>
          </div>
        </div>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$orderHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Оформление заказа — TerrasMarket" />
  <title>Оформление заказа — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Оформление заказа</h2>
          <p>Заполните данные доставки и подтвердите покупку.</p>
        </div>
      </section>

      <section class="checkout-grid">
        <div class="form-card">
          <h3>Доставка</h3>
          <div class="form-group">
            <label class="form-label" for="full-name">Имя получателя</label>
            <input class="form-input" id="full-name" type="text" value="Анна Иванова" />
          </div>
          <div class="form-group">
            <label class="form-label" for="address">Адрес</label>
            <input class="form-input" id="address" type="text" value="Москва, ул. Арбат, 12" />
          </div>
          <div class="form-group">
            <label class="form-label" for="phone">Телефон</label>
            <input class="form-input" id="phone" type="tel" value="+7 495 123-45-67" />
          </div>
          <div class="form-actions">
            <button class="button primary">Подтвердить заказ</button>
          </div>
        </div>
        <div class="summary-panel">
          <article class="offer-card">
            <h3>Итого</h3>
            <p>Аура Лампа · 12 900 ₽</p>
            <p>Noctira Lamp · 16 400 ₽</p>
            <p class="price">29 300 ₽</p>
          </article>
        </div>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$userHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Профиль — TerrasMarket" />
  <title>Профиль — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Здравствуйте, Анна</h2>
          <p>Управляйте заказами, объявлениями и настройками аккаунта.</p>
        </div>
        <a class="button secondary" href="settings.html">Настройки</a>
      </section>

      <section class="stats-grid">
        <article class="stat-card">
          <h3>Заказы</h3>
          <p>Активные и завершенные покупки.</p>
          <div class="stat-value">6</div>
        </article>
        <article class="stat-card">
          <h3>Избранное</h3>
          <p>Сохраненные товары и коллекции.</p>
          <div class="stat-value">14</div>
        </article>
        <article class="stat-card">
          <h3>Сообщения</h3>
          <p>Новые уведомления от покупателей.</p>
          <div class="stat-value">3</div>
        </article>
      </section>

      <section class="content-panel">
        <h3>Последний заказ</h3>
        <p>Лампа Nebula · доставка завтра.</p>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$registerHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Регистрация — TerrasMarket" />
  <title>Регистрация — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Регистрация</h2>
          <p>Создайте аккаунт, чтобы продавать и покупать ещё быстрее.</p>
        </div>
      </section>

      <section class="auth-shell">
        <div class="auth-summary">
          <div class="content-panel">
            <h3>Преимущества аккаунта</h3>
            <p>История заказов, избранное, уведомления и безопасные сделки.</p>
          </div>
          <article class="info-card">
            <h3>Безопасность</h3>
            <p>Данные защищаются по стандартам.</p>
          </article>
          <article class="info-card">
            <h3>Поддержка</h3>
            <p>Мы поможем с загрузкой товара и настройками магазина.</p>
          </article>
        </div>
        <div class="form-card">
          <form id="register-form">
            <div class="form-group">
              <label class="form-label" for="full-name">Полное имя</label>
              <input class="form-input" id="full-name" name="fullName" type="text" placeholder="Введите имя" required />
            </div>
            <div class="form-group">
              <label class="form-label" for="email">Email</label>
              <input class="form-input" id="email" name="email" type="email" placeholder="example@mail.ru" required />
            </div>
            <div class="form-group">
              <label class="form-label" for="password">Пароль</label>
              <input class="form-input" id="password" name="password" type="password" placeholder="Придумайте пароль" required />
            </div>
            <div class="form-actions">
              <button class="button primary" type="submit">Создать аккаунт</button>
              <a class="button secondary" href="user.html">Уже есть аккаунт?</a>
            </div>
            <div class="form-notice"></div>
          </form>
        </div>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$settingsHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Настройки — TerrasMarket" />
  <title>Настройки — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Настройки аккаунта</h2>
          <p>Управляйте профилем, уведомлениями и безопасностью.</p>
        </div>
        <button class="button secondary" data-toggle-theme>Включить тёмную тему</button>
      </section>

      <section class="auth-shell">
        <div class="form-card">
          <form id="settings-form">
            <div class="form-group">
              <label class="form-label" for="name">Имя</label>
              <input class="form-input" id="name" name="name" type="text" value="Анна Иванова" />
            </div>
            <div class="form-group">
              <label class="form-label" for="email">Email</label>
              <input class="form-input" id="email" name="email" type="email" value="anna@example.ru" />
            </div>
            <div class="form-group">
              <label class="form-label" for="phone">Телефон</label>
              <input class="form-input" id="phone" name="phone" type="tel" value="+7 495 123-45-67" />
            </div>
            <div class="form-actions">
              <button class="button primary" type="submit">Сохранить изменения</button>
              <a class="button secondary" href="user.html">Отменить</a>
            </div>
            <div class="form-notice"></div>
          </form>
        </div>
        <div class="settings-grid">
          <article class="setting-card">
            <h3>Уведомления</h3>
            <p>Настройте рассылки и информацию о заказах.</p>
          </article>
          <article class="setting-card">
            <h3>Безопасность</h3>
            <p>Измените пароль и включите дополнительные проверки.</p>
          </article>
        </div>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$itemHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Товар — TerrasMarket" />
  <title>Товар — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Noctira Lamp</h2>
          <p>Современный светильник для интерьера в стиле лофт и хай-тек.</p>
        </div>
      </section>

      <section class="item-grid">
        <img src="https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80" alt="Noctira Lamp" />
        <div class="content-panel">
          <p class="panel-label">Авторский товар</p>
          <p class="panel-price">16 400 ₽</p>
          <p>Лампа Noctira создана для современных гостиной и офисов. Легкая регулировка яркости и стильный корпус.</p>
          <div class="product-meta">
            <a class="button primary" href="cart.html">В корзину</a>
            <a class="button secondary" href="user.html">Контакты продавца</a>
          </div>
        </div>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$createHtml = @'
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="page-title" content="Разместить товар — TerrasMarket" />
  <title>Разместить товар — TerrasMarket</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <div class="page-shell">
    <header class="topbar">
      <div class="topbar-left">
        <a class="nav-logo" href="index.html">TerrasMarket</a>
        <nav class="topnav">
          <a href="index.html">Главная</a>
          <a href="products.html">Каталог</a>
          <a href="about.html">О проекте</a>
          <a href="faq.html">FAQ</a>
        </nav>
      </div>
      <div class="topbar-right">
        <a class="button secondary nav-action" href="create.html">Продать</a>
        <a href="user.html">Профиль</a>
        <a class="cart-link" href="cart.html">Корзина</a>
      </div>
    </header>

    <main>
      <section class="section-head">
        <div>
          <h2>Продайте свой товар</h2>
          <p>Добавьте карточку товара и начните получать заявки от покупателей.</p>
        </div>
      </section>

      <section class="form-card">
        <form id="create-form">
          <div class="form-group">
            <label class="form-label" for="title">Название товара</label>
            <input class="form-input" id="title" name="title" type="text" placeholder="Введите название" required />
          </div>
          <div class="form-group">
            <label class="form-label" for="price">Цена</label>
            <input class="form-input" id="price" name="price" type="text" placeholder="0 ₽" required />
          </div>
          <div class="form-group">
            <label class="form-label" for="description">Описание</label>
            <textarea class="form-textarea" id="description" name="description" placeholder="Краткое описание товара"></textarea>
          </div>
          <div class="form-actions">
            <button class="button primary" type="submit">Опубликовать</button>
            <a class="button secondary" href="products.html">Отмена</a>
          </div>
          <div class="form-notice"></div>
        </form>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-brand">
        <div class="brand-mark">LM</div>
        <div>
          <p>Маркетплейс для авторской продукции</p>
          <p>© 2026 TerrasMarket. Все права защищены.</p>
        </div>
      </div>
      <div class="footer-links">
        <a href="index.html">Главная</a>
        <a href="products.html">Каталог</a>
        <a href="about.html">О проекте</a>
      </div>
    </footer>
  </div>
  <script src="app.js"></script>
</body>
</html>
'@

$stylesCss = @'
:root {
  color-scheme: dark;
  font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
  font-size: 16px;
  color: #f4f4f4;
  background: #071118;
  line-height: 1.6;
}

* {
  box-sizing: border-box;
}

body {
  margin: 0;
  min-height: 100vh;
  background: radial-gradient(circle at top, rgba(51, 183, 255, 0.16), transparent 35%), #071118;
}

img {
  width: 100%;
  display: block;
  border-radius: 24px;
  object-fit: cover;
}

a {
  color: inherit;
  text-decoration: none;
}

button {
  font: inherit;
}

.page-shell {
  max-width: 1280px;
  margin: 0 auto;
  padding: 32px 24px 48px;
}

.topbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 24px;
  flex-wrap: wrap;
}

.topbar-left {
  display: flex;
  align-items: center;
  gap: 40px;
  flex-wrap: wrap;
}

.nav-logo {
  font-size: 1rem;
  font-weight: 700;
  letter-spacing: 0.2em;
  text-transform: uppercase;
}

.topnav {
  display: flex;
  gap: 24px;
  flex-wrap: wrap;
}

.topnav a,
.topbar-right a {
  color: #b0c7e1;
  font-size: 0.95rem;
}

.topnav a:hover,
.topbar-right a:hover {
  color: #ffffff;
}

.topbar-right {
  display: flex;
  gap: 16px;
  align-items: center;
  flex-wrap: wrap;
}

.cart-link {
  padding: 10px 16px;
  border: 1px solid rgba(255, 255, 255, 0.12);
  border-radius: 999px;
}

.hero {
  display: grid;
  grid-template-columns: minmax(0, 1.4fr) minmax(320px, 0.86fr);
  gap: 36px;
  align-items: center;
  margin-top: 44px;
}

.hero-copy {
  max-width: 640px;
}

.hero-badge {
  display: inline-flex;
  font-size: 0.82rem;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: #7be8ff;
  margin-bottom: 20px;
}

.hero h1 {
  font-size: clamp(3.5rem, 6vw, 5.5rem);
  margin: 0;
  line-height: 0.95;
}

.hero-text {
  margin: 28px 0 32px;
  max-width: 560px;
  color: #d7e5f7;
  font-size: 1rem;
}

.hero-actions {
  display: flex;
  gap: 16px;
  flex-wrap: wrap;
}

.hero-stats {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 16px;
  margin-top: 24px;
}

.hero-stats div {
  padding: 18px;
  border-radius: 20px;
  background: rgba(255, 255, 255, 0.05);
  border: 1px solid rgba(255, 255, 255, 0.1);
}

.hero-stats strong {
  display: block;
  font-size: 1.5rem;
}

.hero-stats span {
  color: #b0c7e1;
}

.hero-panel {
  background: linear-gradient(180deg, rgba(255, 255, 255, 0.08), rgba(255, 255, 255, 0.04));
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 30px;
  overflow: hidden;
  display: grid;
  gap: 22px;
  padding: 24px;
}

.hero-panel-copy {
  display: grid;
  gap: 12px;
}

.panel-label {
  text-transform: uppercase;
  letter-spacing: 0.18em;
  color: #7be8ff;
  font-size: 0.82rem;
  margin: 0;
}

.panel-price {
  margin: 0;
  font-size: 1.8rem;
  font-weight: 700;
  color: #ffffff;
}

.section-head {
  display: flex;
  justify-content: space-between;
  gap: 24px;
  align-items: center;
  margin: 64px 0 24px;
}

.section-head h2 {
  margin: 0;
  font-size: 2.15rem;
}

.section-head p {
  margin: 8px 0 0;
  max-width: 520px;
  color: #a8bccf;
}

.category-grid,
.product-grid,
.stats-grid,
.about-grid,
.settings-grid,
.checkout-grid {
  display: grid;
  gap: 24px;
}

.category-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
}

.category-card,
.feature-card,
.product-card,
.info-card,
.stat-card,
.setting-card,
.form-card,
.offer-card,
.content-panel {
  background: rgba(255, 255, 255, 0.05);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 28px;
}

.category-card {
  padding: 28px;
  min-height: 190px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.category-card h3 {
  margin: 0 0 14px;
}

.category-card p {
  margin: 0;
  color: #c3d4e8;
}

.featured-products .product-card {
  min-height: 420px;
}

.product-card {
  overflow: hidden;
  transition: transform 0.2s ease, border-color 0.2s ease;
}

.product-card:hover {
  transform: translateY(-4px);
  border-color: rgba(255, 255, 255, 0.16);
}

.product-info {
  padding: 22px;
  display: grid;
  gap: 16px;
}

.product-info h3 {
  margin: 0;
  font-size: 1.1rem;
}

.product-info p {
  margin: 0;
  color: #c5d6e9;
  font-size: 0.95rem;
}

.product-meta {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 12px;
  flex-wrap: wrap;
}

.price {
  font-weight: 700;
  color: #ffffff;
}

.link-muted {
  color: #8cb8d9;
  font-weight: 600;
}

.feature-card {
  padding: 28px;
}

.feature-large {
  grid-column: span 2;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  min-height: 280px;
}

.profile-card,
.stat-card,
.setting-card,
.info-card,
.offer-card,
.form-card,
.content-panel {
  padding: 26px;
}

.profile-card {
  display: flex;
  gap: 18px;
  align-items: center;
}

.avatar {
  width: 68px;
  height: 68px;
  border-radius: 50%;
  background: linear-gradient(180deg, #4d8fc4 0%, #2c5f8b 100%);
}

.feature-small {
  display: grid;
  place-items: center;
  min-height: 148px;
  color: #ffffff;
  font-weight: 700;
}

.feature-dark {
  background: #204768;
}

.stats-grid {
  grid-template-columns: repeat(3, minmax(180px, 1fr));
}

.stat-card h3,
.setting-card h3,
.info-card h3 {
  margin: 0 0 16px;
  font-size: 1rem;
  color: #ffffff;
}

.stat-card p,
.setting-card p,
.info-card p,
.section-head p,
.product-info p {
  margin: 0;
  color: #c5d6e9;
}

.stat-value {
  margin-top: 16px;
  font-size: 2rem;
  font-weight: 700;
}

.form-card {
  border-radius: 28px;
}

.form-group {
  display: grid;
  gap: 10px;
  margin-bottom: 18px;
}

.form-label {
  font-weight: 600;
  color: #f4f4f4;
}

.form-input,
.form-select,
.form-textarea {
  width: 100%;
  padding: 14px 18px;
  border: 1px solid rgba(255, 255, 255, 0.14);
  border-radius: 18px;
  background: rgba(255, 255, 255, 0.05);
  color: #ffffff;
}

.form-textarea {
  min-height: 120px;
  resize: vertical;
}

.form-actions {
  display: flex;
  gap: 16px;
  flex-wrap: wrap;
  margin-top: 12px;
}

.form-notice {
  padding: 16px;
  margin-top: 20px;
  border-radius: 20px;
  border: 1px solid rgba(51, 183, 255, 0.2);
  background: rgba(51, 183, 255, 0.12);
  color: #a8ddff;
  display: none;
}

.form-notice.visible {
  display: block;
}

.toggle-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 18px 22px;
  border: 1px solid rgba(255, 255, 255, 0.14);
  border-radius: 20px;
  background: rgba(255, 255, 255, 0.05);
}

.toggle-row span,
.toggle-button {
  color: #f4f4f4;
}

.toggle-button {
  border: 1px solid rgba(255, 255, 255, 0.14);
  padding: 10px 16px;
  border-radius: 999px;
  background: transparent;
  cursor: pointer;
}

.checkout-grid {
  grid-template-columns: 1.4fr 0.8fr;
}

.product-row {
  display: grid;
  grid-template-columns: 140px minmax(0, 1fr);
  gap: 20px;
  align-items: center;
  padding: 18px 0;
  border-bottom: 1px solid rgba(255, 255, 255, 0.08);
}

.product-row:last-child {
  border-bottom: none;
}

.product-row-info h3 {
  margin: 0 0 8px;
}

.product-row-info p,
.product-row-actions p {
  margin: 0;
  color: #c5d6e9;
}

.summary-panel {
  display: grid;
  gap: 18px;
}

.offer-card {
  border-radius: 28px;
}

.item-grid {
  display: grid;
  grid-template-columns: 1.2fr 0.8fr;
  gap: 32px;
}

.item-grid img {
  min-height: 460px;
}

.footer {
  display: flex;
  justify-content: space-between;
  gap: 24px;
  align-items: center;
  padding-top: 24px;
  margin-top: 40px;
  border-top: 1px solid rgba(255, 255, 255, 0.12);
}

.footer-brand {
  display: flex;
  gap: 18px;
  align-items: center;
}

.brand-mark {
  width: 56px;
  height: 56px;
  border-radius: 18px;
  background: #33b7ff;
  color: #071118;
  display: grid;
  place-items: center;
  font-weight: 700;
}

.footer-links {
  display: flex;
  gap: 22px;
  flex-wrap: wrap;
}

@media (max-width: 1080px) {
  .hero,
  .item-grid,
  .checkout-grid,
  .featured-grid,
  .about-grid,
  .stats-grid,
  .settings-grid {
    grid-template-columns: 1fr;
  }

  .feature-large {
    grid-column: span 1;
  }
}

@media (max-width: 768px) {
  .page-shell {
    padding: 24px 18px 36px;
  }

  .topbar {
    justify-content: center;
  }

  .topnav {
    justify-content: center;
  }

  .section-head {
    flex-direction: column;
    align-items: flex-start;
  }

  .hero h1 {
    font-size: clamp(2.5rem, 12vw, 4rem);
  }

  .hero-stats,
  .product-grid,
  .category-grid,
  .product-row,
  .checkout-grid,
  .item-grid {
    grid-template-columns: 1fr;
  }

  .topbar-right {
    width: 100%;
    justify-content: center;
  }
}
'@

Set-Content -Path "index.html" -Value $indexHtml -Encoding utf8
Set-Content -Path "products.html" -Value $productsHtml -Encoding utf8
Set-Content -Path "about.html" -Value $aboutHtml -Encoding utf8
Set-Content -Path "faq.html" -Value $faqHtml -Encoding utf8
Set-Content -Path "cart.html" -Value $cartHtml -Encoding utf8
Set-Content -Path "order.html" -Value $orderHtml -Encoding utf8
Set-Content -Path "user.html" -Value $userHtml -Encoding utf8
Set-Content -Path "register.html" -Value $registerHtml -Encoding utf8
Set-Content -Path "settings.html" -Value $settingsHtml -Encoding utf8
Set-Content -Path "item.html" -Value $itemHtml -Encoding utf8
Set-Content -Path "create.html" -Value $createHtml -Encoding utf8
Set-Content -Path "styles.css" -Value $stylesCss -Encoding utf8
Write-Host "Market pages updated."