document.addEventListener("DOMContentLoaded", () => {
  // Initialize data
  initData();

  // Form handling
  const forms = document.querySelectorAll("form");
  forms.forEach((form) => {
    form.addEventListener("submit", handleFormSubmit);
  });

  // Theme toggle
  const toggleTheme = document.querySelector("[data-toggle-theme]");
  if (toggleTheme) {
    toggleTheme.addEventListener("click", () => {
      document.body.classList.toggle("dark-theme");
      toggleTheme.textContent = document.body.classList.contains("dark-theme") ? "Тёмная тема включена" : "Включить тёмную тему";
    });
  }

  // Page title
  const pageTitle = document.querySelector("meta[name=page-title]");
  if (pageTitle) {
    document.title = pageTitle.content;
  }

  // Load products on products page
  if (document.querySelector('.product-grid')) {
    loadProducts();
  }

  // Load cart on cart page
  if (document.querySelector('.cart-items')) {
    loadCart();
  }

  // Load user profile
  if (document.querySelector('.user-profile')) {
    loadUserProfile();
  }

  // Add to cart buttons
  document.querySelectorAll('.add-to-cart').forEach(btn => {
    btn.addEventListener('click', addToCart);
  });

  // Remove from cart buttons
  document.querySelectorAll('.remove-from-cart').forEach(btn => {
    btn.addEventListener('click', removeFromCart);
  });

  // Logout button
  const logoutBtn = document.querySelector('.logout-btn');
  if (logoutBtn) {
    logoutBtn.addEventListener('click', logout);
  }

  // Update cart count in header
  updateCartCount();
});

function initData() {
  if (!localStorage.getItem('products')) {
    const defaultProducts = [
      { id: 1, title: 'Aura Lamp', price: 12900, description: 'Минималистичная лампа с мягким свечением.', image: 'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=900&q=80' },
      { id: 2, title: 'Noctira Lamp', price: 16400, description: 'Футуристическая форма с матовым стеклом.', image: 'https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80' },
      { id: 3, title: 'Soft Chair', price: 29900, description: 'Комфортное кресло с обтекаемой формой.', image: 'https://images.unsplash.com/photo-1540574163026-643ea20ade25?auto=format&fit=crop&w=900&q=80' },
      { id: 4, title: 'Art Mirror', price: 8900, description: 'Зеркало с текстурированной рамой и подвеской.', image: 'https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80' },
      { id: 5, title: 'Nebula Lamp', price: 24500, description: 'Авторское освещение для стильных интерьеров.', image: 'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=900&q=80' }
    ];
    localStorage.setItem('products', JSON.stringify(defaultProducts));
  }

  if (!localStorage.getItem('cart')) {
    localStorage.setItem('cart', JSON.stringify([]));
  }

  if (!localStorage.getItem('users')) {
    localStorage.setItem('users', JSON.stringify([]));
  }
}

function handleFormSubmit(event) {
  event.preventDefault();
  const form = event.target;
  const formId = form.id;

  if (formId === 'create-form') {
    createProduct(form);
  } else if (formId === 'register-form') {
    registerUser(form);
  } else if (formId === 'login-form') {
    loginUser(form);
  } else if (formId === 'order-form') {
    placeOrder(form);
  } else {
    // Default notice
    const notice = form.querySelector(".form-notice");
    if (notice) {
      notice.textContent = "Готово! Ваши данные сохранены.";
      notice.classList.add("visible");
    }
  }
}

function createProduct(form) {
  const title = form.title.value;
  const price = parseInt(form.price.value.replace(/\D/g, ''));
  const description = form.description.value;

  const products = JSON.parse(localStorage.getItem('products'));
  const newId = products.length > 0 ? Math.max(...products.map(p => p.id)) + 1 : 1;
  const newProduct = {
    id: newId,
    title,
    price,
    description,
    image: 'https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=900&q=80' // Default image
  };

  products.push(newProduct);
  localStorage.setItem('products', JSON.stringify(products));

  const notice = form.querySelector(".form-notice");
  if (notice) {
    notice.textContent = "Товар опубликован!";
    notice.classList.add("visible");
  }

  form.reset();
}

function registerUser(form) {
  const name = form.fullName.value;
  const email = form.email.value;
  const password = form.password.value;

  const users = JSON.parse(localStorage.getItem('users'));
  const existingUser = users.find(u => u.email === email);
  if (existingUser) {
    const notice = form.querySelector(".form-notice");
    if (notice) {
      notice.textContent = "Пользователь с таким email уже существует.";
      notice.classList.add("visible");
    }
    return;
  }

  const newUser = {
    id: users.length > 0 ? Math.max(...users.map(u => u.id)) + 1 : 1,
    name,
    email,
    password
  };

  users.push(newUser);
  localStorage.setItem('users', JSON.stringify(users));
  localStorage.setItem('currentUser', newUser.id);

  const notice = form.querySelector(".form-notice");
  if (notice) {
    notice.textContent = "Регистрация успешна!";
    notice.classList.add("visible");
  }

  window.location.href = 'user.html';
}

function loginUser(form) {
  const email = form.email.value;
  const password = form.password.value;

  const users = JSON.parse(localStorage.getItem('users'));
  const user = users.find(u => u.email === email && u.password === password);

  if (user) {
    localStorage.setItem('currentUser', user.id);
    window.location.href = 'user.html';
  } else {
    const notice = form.querySelector(".form-notice");
    if (notice) {
      notice.textContent = "Неверный email или пароль.";
      notice.classList.add("visible");
    }
  }
}

function logout() {
  localStorage.removeItem('currentUser');
  window.location.reload();
}

function loadProducts() {
  const products = JSON.parse(localStorage.getItem('products'));
  const grid = document.querySelector('.product-grid');

  if (!grid) return;

  grid.innerHTML = '';

  products.forEach(product => {
    const card = document.createElement('article');
    card.className = 'product-card';
    card.innerHTML = `
      <img src="${product.image}" alt="${product.title}" />
      <div class="product-info">
        <h3>${product.title}</h3>
        <p>${product.description}</p>
        <div class="product-meta">
          <span class="price">${product.price.toLocaleString()} ₽</span>
          <button class="button secondary add-to-cart" data-product-id="${product.id}">В корзину</button>
        </div>
      </div>
    `;
    grid.appendChild(card);
  });

  // Re-attach event listeners
  document.querySelectorAll('.add-to-cart').forEach(btn => {
    btn.addEventListener('click', addToCart);
  });
}

function addToCart(event) {
  const productId = parseInt(event.target.dataset.productId);
  const cart = JSON.parse(localStorage.getItem('cart'));
  const existingItem = cart.find(item => item.productId === productId);

  if (existingItem) {
    existingItem.quantity += 1;
  } else {
    cart.push({ productId, quantity: 1 });
  }

  localStorage.setItem('cart', JSON.stringify(cart));
  updateCartCount();

  // Show notice
  const notice = document.createElement('div');
  notice.className = 'form-notice visible';
  notice.textContent = 'Товар добавлен в корзину!';
  event.target.parentElement.appendChild(notice);
  setTimeout(() => notice.remove(), 3000);
}

function removeFromCart(event) {
  const productId = parseInt(event.target.dataset.productId);
  const cart = JSON.parse(localStorage.getItem('cart'));
  const updatedCart = cart.filter(item => item.productId !== productId);

  localStorage.setItem('cart', JSON.stringify(updatedCart));
  loadCart();
  updateCartCount();
}

function loadCart() {
  const cart = JSON.parse(localStorage.getItem('cart'));
  const products = JSON.parse(localStorage.getItem('products'));
  const cartItems = document.querySelector('.cart-items');
  const cartTotal = document.querySelector('.cart-total');

  if (!cartItems) return;

  cartItems.innerHTML = '';
  let total = 0;

  cart.forEach(item => {
    const product = products.find(p => p.id === item.productId);
    if (product) {
      const itemTotal = product.price * item.quantity;
      total += itemTotal;

      const itemEl = document.createElement('div');
      itemEl.className = 'cart-item';
      itemEl.innerHTML = `
        <img src="${product.image}" alt="${product.title}" />
        <div>
          <h4>${product.title}</h4>
          <p>${item.quantity} × ${product.price.toLocaleString()} ₽</p>
          <button class="button secondary remove-from-cart" data-product-id="${product.id}">Удалить</button>
        </div>
      `;
      cartItems.appendChild(itemEl);
    }
  });

  if (cartTotal) {
    cartTotal.textContent = `Итого: ${total.toLocaleString()} ₽`;
  }

  // Re-attach event listeners
  document.querySelectorAll('.remove-from-cart').forEach(btn => {
    btn.addEventListener('click', removeFromCart);
  });
}

function loadUserProfile() {
  const currentUserId = localStorage.getItem('currentUser');
  if (!currentUserId) {
    // Show login form
    document.querySelector('.user-profile').innerHTML = `
      <h2>Вход в аккаунт</h2>
      <form id="login-form">
        <div class="form-group">
          <label class="form-label" for="email">Email</label>
          <input class="form-input" id="email" name="email" type="email" required />
        </div>
        <div class="form-group">
          <label class="form-label" for="password">Пароль</label>
          <input class="form-input" id="password" name="password" type="password" required />
        </div>
        <div class="form-actions">
          <button class="button primary" type="submit">Войти</button>
          <a class="button secondary" href="register.html">Регистрация</a>
        </div>
        <div class="form-notice"></div>
      </form>
    `;
    // Re-attach form handler
    document.querySelector('#login-form').addEventListener('submit', handleFormSubmit);
    return;
  }

  const users = JSON.parse(localStorage.getItem('users'));
  const user = users.find(u => u.id == currentUserId);

  if (user) {
    document.querySelector('.user-profile').innerHTML = `
      <h2>Профиль пользователя</h2>
      <p><strong>Имя:</strong> ${user.name}</p>
      <p><strong>Email:</strong> ${user.email}</p>
      <button class="button secondary logout-btn">Выйти</button>
    `;
    // Re-attach logout
    document.querySelector('.logout-btn').addEventListener('click', logout);
  }
}

function placeOrder(form) {
  const cart = JSON.parse(localStorage.getItem('cart'));
  if (cart.length === 0) {
    const notice = form.querySelector(".form-notice");
    if (notice) {
      notice.textContent = "Корзина пуста.";
      notice.classList.add("visible");
    }
    return;
  }

  // Simulate order placement
  localStorage.setItem('cart', JSON.stringify([]));
  updateCartCount();

  const notice = form.querySelector(".form-notice");
  if (notice) {
    notice.textContent = "Заказ оформлен! Спасибо за покупку.";
    notice.classList.add("visible");
  }

  setTimeout(() => {
    window.location.href = 'index.html';
  }, 2000);
}

function updateCartCount() {
  const cart = JSON.parse(localStorage.getItem('cart'));
  const count = cart.reduce((sum, item) => sum + item.quantity, 0);
  const cartLink = document.querySelector('.cart-link');

  if (cartLink) {
    cartLink.textContent = `Корзина (${count})`;
  }
}
