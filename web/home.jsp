<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="asset/css/reset.css" />
        <link rel="stylesheet" href="asset/css/styles.css" />
        <link rel="stylesheet" href="asset/css/logoutin.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500;600;700;800;900&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
            rel="stylesheet"
            />
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-16x16.png">
        <title>92 Library</title>
    </head>

    <header class="header--app">
        <div class="content">
            <div class="header--main">
                <a href="#!" class="logo--action" onclick="scrollToTop()">
                    <figure class="logo">
                        <img
                            src="./img/logo-app.svg"
                            alt=""
                            class="logo--img"
                            />
                        <p class="logo--desc">92Lib</p>
                    </figure>
                </a>
                <ul class="nav--bar__topheader">
                    <li class="navbar--item" >
                        <a class="navbar--fonts" href="bookrent">Mybook</a>
                    </li>
                    <li class="navbar--item">
                        <a class="navbar--fonts" href="customerbook">Product</a>
                    </li>
                    <li class="navbar--item">
                        <a class="navbar--fonts" href="#feature">Features</a>
                    </li>
                    <li class="navbar--item">
                        <a class="navbar--fonts" href="blog.jsp">Blog</a>
                    </li>
                </ul>

                <div class="action--btn action--home">
                    <div class="user--state">
                        <%
                              int randomNumber = (int) (Math.random() * 6) + 1;
                        %>
                        <img src="./img/user<%= randomNumber %>.jpg" alt="" class="img--user">
                        <div class="action--btn login--user dropdown">
                            <h3 class="user--action login--btn dropdown-button ">${sessionScope.account.surname} 
                                <div class="dropdown-content">
                                    <a class="item-list" href="updatecustomer?id=${sessionScope.account.idCustomer}">Setting</a>
                                    <a class="item-list" href="logout">Log Out</a>
                                </div>
                            </h3>
                        </div>

                    </div>
                    <!-- Start of ChatBot (www.chatbot.com) code -->
                    <script type="text/javascript">
                        window.__be = window.__be || {};
                        window.__be.id = "65f6e01e7245ec0007a8f0fd";
                        (function () {
                            var be = document.createElement('script');
                            be.type = 'text/javascript';
                            be.async = true;
                            be.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.chatbot.com/widget/plugin.js';
                            var s = document.getElementsByTagName('script')[0];
                            s.parentNode.insertBefore(be, s);
                        })();
                    </script>
                    <noscript>You need to <a href="https://www.chatbot.com/help/chat-widget/enable-javascript-in-your-browser/" rel="noopener nofollow">enable JavaScript</a> in order to use the AI chatbot tool powered by <a href="https://www.chatbot.com/" rel="noopener nofollow" target="_blank">ChatBot</a></noscript>
                    <!-- End of ChatBot code -->


                </div>
            </div>
        </div>
    </header>
    <body>

        <section class="main--app">
            <div class="content">
                <div class="main--app_body">
                    <article class="left--main">
                        <p class="sub__main--desc">Digital Smart Library</p>
                        <h1 class="main--title">
                            Digital
                            <span class="main--highlight">Library</span> For
                            Everyone.
                        </h1>
                        <p class="main--desc">
                            We put together everything needed to build a website and app to make it possible for people to borrow and return books globally. We are the best platform.
                        </p>

                        <p class="legit--email">
                            *Reading book now in hear.
                        </p>

                        <div>
                            <button class="btn btn--featutes">
                                <span> <a href="customerbook" style="color: #fff;">Get Started</a></span>
                            </button>
                        </div>
                    </article>
                    <article class="right--main">
                        <img class="img--right--main" src="./img/libarry.jpg" alt="alt"/>
                    </article>
                </div>
            </div>
        </section>
        <section class="body--app" id="home">
            <div class="content">
                <div class="body--block">
                    <div class="left-body--block">
                        <figure class="img--body">
                            <img src="./img/body-img.png" alt="" />

                            <figure class="icon--block-body">
                                <img src="./img/icon-body.svg" alt="" />
                            </figure>
                            <div class="subblock-body">
                                <div class="subblock-body-info">
                                    <figure class="icon-ticket-body">
                                        <img
                                            src="./img/ticket-icon.svg"
                                            alt=""
                                            />
                                    </figure>
                                    <div class="content--subblock">
                                        <h3 class="content--subblock--title">
                                            Congratulations
                                        </h3>
                                        <p class="content--subblock--desc">
                                            Your account activated
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </figure>
                    </div>
                    <div class="right-body--block">
                        <div class="right--block--content">
                            <h3 class="title--content-rightblock">
                                Digital Smart Libary
                            </h3>

                            <h2 class="heading--content-rightblock">
                                How It Works
                            </h2>

                            <div class="item--content-rightblock">
                                <h3 class="title--item--content">
                                    1. 
                                    Borrow books online quickly
                                </h3>
                                <p class="desc--item--content">
                                    Borrowing books does not need to be in person. We will send the book to your home address in a few minutes.
                                </p>
                            </div>
                            <div class="item--content-rightblock">
                                <h3 class="title--item--content">
                                    2. Hundreds of library locations everywhere in big cities
                                </h3>
                                <p class="desc--item--content">
                                    Our libraries are everywhere you know. We prioritize places that are convenient for you to move
                                </p>
                            </div>
                            <div class="item--content-rightblock">
                                <h3 class="title--item--content">
                                    3. Register to join 92Library quickly
                                </h3>
                                <p class="desc--item--content">
                                    No matter who you are or what you are doing. We always encourage people to 
                                    read more books every day, so you can easily borrow our books without having 
                                    to provide much personal information.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="feature" id="product">
            <div class="content">
                <div class="feature-block">
                    <div class="feature-block--left">
                        <h3 class="title--content-rightblock">
                            Digital Smart Library
                        </h3>
                        <h2 class="heading--content-rightblock">
                            Accept payments by any method
                        </h2>
                        <p class="desc--feature--block">
                            We prioritize user experience so we cover every payment method you have. 
                            Pay easily and quickly with international or domestic cards or even cash.
                        </p>
                        <ul class="features-list">
                            <li class="feature-item">Global Payments</li>
                            <li class="feature-item">One-Click Purchase</li>
                            <li class="feature-item">Friendly Price</li>
                        </ul>
                        <button class="btn btn--featutes">
                            <span>Get Started</span>
                        </button>
                    </div>
                    <div class="feature-block-right">
                        <div class="bankCard bankCard--feature">
                            <div class="bankcard--info bankcard--info--feature">
                                <div class="row first-row">
                                    <h3
                                        class="bankCard--name bankCard--name--feature"
                                        >
                                        Main Balance
                                    </h3>
                                    <figure
                                        class="logo--bank logo--bank--feature"
                                        >
                                        <img
                                            src="./img/bankcard--logo.svg"
                                            alt=""
                                            class="logo--logo--bank--img-feature"
                                            />
                                    </figure>
                                </div>
                                <h2
                                    class="balance--bank balance--bank--feature"
                                    >
                                    $78,355.17
                                </h2>
                                <div
                                    class="row second--row second--row--feature"
                                    >
                                    <p
                                        class="title--card--Bank title--card--Bank--feature"
                                        >
                                        VALID THUR
                                    </p>
                                    <p
                                        class="title--card--Bank title--card--Bank--feature"
                                        >
                                        CARD HOLDER
                                    </p>
                                </div>
                                <div class="row third--row third--row--feature">
                                    <p
                                        class="value--card--bank value--card--bank--feature"
                                        >
                                        08/22
                                    </p>
                                    <p
                                        class="value--card--bank value--card--bank--feature"
                                        >
                                        Bui Thien Nhan
                                    </p>
                                </div>
                            </div>

                            <figure
                                class="textures--card textures--card--feature"
                                >
                                <img
                                    src="./img/item-bankcard.svg"
                                    alt=""
                                    class="textures--img textures--img--feature"
                                    />
                            </figure>

                            <div class="sendMoney-features">
                                <div class="sendMoney--block">
                                    <figure class="icon--feature">
                                        <img
                                            class="iconSaveMoney"
                                            src="./img/savedMoneyUse.jpg"
                                            alt=""
                                            />
                                    </figure>

                                    <div class="information--features">
                                        <div class="row line1--feature">
                                            <h3 class="title--features-line1">
                                                Send Money
                                            </h3>
                                            <h3 class="title--features-line1">
                                                - $600
                                            </h3>
                                        </div>
                                        <div class="row line2--feature">
                                            <p class="title--features-line2">
                                                Airbnb Payment
                                            </p>
                                            <p class="title--features-line2">
                                                Sep 23
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="income-feature">
                                <div class="income-feature--block">
                                    <figure>
                                        <img
                                            src="./img/income.svg"
                                            alt=""
                                            />
                                    </figure>
                                    <p
                                        class="title--features-line2 title--features-line2-2"
                                        >
                                        Income
                                    </p>
                                    <h2 class="number--cash">$1250</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="feature-2" id="feature">
            <div class="content">
                <div class="feature2--block">
                    <div class="feature2--left">
                        <figure class="feature2--img">
                            <img
                                src="./img/feature2-img.png"
                                alt=""
                                class="img--feature2"
                                />

                            <div class="methodpay">
                                <div class="methodpay--block">
                                    <h2 class="methodpay--title">
                                        Choose payment method:
                                    </h2>
                                    <div class="row methodpay--band">
                                        <figure class="brandIcon-img">
                                            <img
                                                src="./img/mastercard.svg"
                                                alt=""
                                                />
                                        </figure>
                                        <figure class="brandIcon-img">
                                            <img
                                                src="./img/maestro.svg"
                                                alt=""
                                                />
                                        </figure>
                                        <figure class="brandIcon-img">
                                            <img
                                                src="./img/3brand.svg"
                                                alt=""
                                                />
                                        </figure>
                                    </div>
                                    <div class="row methodpay--band">
                                        <figure class="brandIcon-img">
                                            <img
                                                src="./img/visa.svg"
                                                alt=""
                                                />
                                        </figure>
                                        <figure class="brandIcon-img">
                                            <img
                                                src="./img/paypal.svg"
                                                alt=""
                                                />
                                        </figure>
                                        <figure class="brandIcon-img">
                                            <a class="more-icon--brand" href="card.jsp"> + </a>
                                        </figure>
                                    </div>
                                </div>
                                <div class="money--block-f2">
                                    <figure class="money-icon2">
                                        <img
                                            src="./img/money--icon.svg"
                                            alt=""
                                            />
                                    </figure>
                                </div>
                            </div>
                        </figure>
                    </div>
                    <div class="feature2--content">
                        <div class="feature2--right">
                            <h3 class="title--content-rightblock">
                                Digital Smart Library
                            </h3>
                            <h2
                                class="heading--content-rightblock feature2--title"
                                >

                                Borrow and return your books at any time
                            </h2>
                            <p class="desc--feature--block">
                                We prioritize user experience so we cover every payment method you have. 
                                Pay easily and quickly with international or domestic cards or even cash.
                            </p>
                            <ul class="features-list">
                                <li class="feature-item">Powerfull App</li>
                                <li class="feature-item">
                                    Transparency And Speed
                                </li>
                                <li class="feature-item">
                                    Multiple Use Capabilities
                                </li>
                            </ul>
                            <button class="btn btn--featutes">
                                <span>Get Started</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="quotes" id="blog">
            <div class="content">
                <div class="quotes--block">
                    <div class="quotes--top">
                        <h3 class="title--content-rightblock">
                            Our Testimonial
                        </h3>
                        <h2 class="heading--content-rightblock">
                            What Clients Says
                        </h2>
                        <p class="desc--feature--block quotes--top--desc">
                            Read what clients says about us and about our online
                            banking services that may inspire you
                        </p>
                    </div>
                    <div class="quotes--list">
                        <div class="quotes--main">
                            <div class="quotes--couple">
                                <div class="quotes--item">
                                    <div class="quotes--content--block">
                                        <p class="quotes--content">
                                            Fantastic platform for online
                                            library. The best online library
                                            platform I have used. Borrow,
                                            return books, and pays  have
                                            never been so much easier before. I
                                            am very much happy about this great
                                            online library.
                                        </p>
                                    </div>
                                    <div class="user--quotes">
                                        <figure class="img--user--quotes">
                                            <img
                                                src="./img/user1.jpg"
                                                alt=""
                                                class="quotes--user"
                                                />
                                        </figure>
                                        <p class="name--user">
                                            Alastair Cook
                                        </p>
                                        <p class="job--user">Businessmen</p>
                                    </div>
                                </div>
                                <div class="quotes--item">
                                    <div class="quotes--content--block">
                                        <p class="quotes--content">
                                            Fantastic platform for online
                                            library. The best online library
                                            platform I have used. Borrow,
                                            return books, and pays  have
                                            never been so much easier before. I
                                            am very much happy about this great
                                            online library.
                                        </p>
                                    </div>
                                    <div class="user--quotes">
                                        <figure class="img--user--quotes">
                                            <img
                                                src="./img/user2.jpg"
                                                alt=""
                                                class="quotes--user"
                                                />
                                        </figure>
                                        <p class="name--user">
                                            Alan Motobike
                                        </p>
                                        <p class="job--user">Businesswoman</p>
                                    </div>
                                </div>
                            </div>
                            <div class="quotes--couple">
                                <div class="quotes--item">
                                    <div class="quotes--content--block">
                                        <p class="quotes--content">
                                            Fantastic platform for online
                                            library. The best online library
                                            platform I have used. Borrow,
                                            return books, and pays  have
                                            never been so much easier before. I
                                            am very much happy about this great
                                            online library.
                                        </p>
                                    </div>
                                    <div class="user--quotes">
                                        <figure class="img--user--quotes">
                                            <img
                                                src="./img/user3.jpg"
                                                alt=""
                                                class="quotes--user"
                                                />
                                        </figure>
                                        <p class="name--user">
                                            David De Gea
                                        </p>
                                        <p class="job--user">Batwoman</p>
                                    </div>
                                </div>
                                <div class="quotes--item">
                                    <div class="quotes--content--block">
                                        <p class="quotes--content">
                                            Fantastic platform for online
                                            library. The best online library
                                            platform I have used. Borrow,
                                            return books, and pays  have
                                            never been so much easier before. I
                                            am very much happy about this great
                                            online library.
                                        </p>
                                    </div>
                                    <div class="user--quotes">
                                        <figure class="img--user--quotes">
                                            <img
                                                src="./img/user4.jpg"
                                                alt=""
                                                class="quotes--user"
                                                />
                                        </figure>
                                        <p class="name--user">
                                            Leo Messi
                                        </p>
                                        <p class="job--user">
                                            Friend of Ronaldo
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="quotes--couple">
                                <div class="quotes--item">
                                    <div class="quotes--content--block">
                                        <p class="quotes--content">
                                            Fantastic platform for online
                                            library. The best online library
                                            platform I have used. Borrow,
                                            return books, and pays  have
                                            never been so much easier before. I
                                            am very much happy about this great
                                            online library.
                                        </p>
                                    </div>
                                    <div class="user--quotes">
                                        <figure class="img--user--quotes">
                                            <img
                                                src="./img/user5.jpg"
                                                alt=""
                                                class="quotes--user"
                                                />
                                        </figure>
                                        <p class="name--user">
                                            Cristiano Ronaldo
                                        </p>
                                        <p class="job--user">Friend of Messi</p>
                                    </div>
                                </div>
                                <div class="quotes--item">
                                    <div class="quotes--content--block">
                                        <p class="quotes--content">
                                            Fantastic platform for online
                                            library. The best online library
                                            platform I have used. Borrow,
                                            return books, and pays  have
                                            never been so much easier before. I
                                            am very much happy about this great
                                            online library.
                                        </p>
                                    </div>
                                    <div class="user--quotes">
                                        <figure class="img--user--quotes">
                                            <img
                                                src="./img/user6.jpg"
                                                alt=""
                                                class="quotes--user"
                                                />
                                        </figure>
                                        <p class="name--user">
                                            David Vila
                                        </p>
                                        <p class="job--user">Play Soccer</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="quotes--dots">
                        <div
                            class="quotes--dots-item active"
                            data-index="1"
                            ></div>
                        <div class="quotes--dots-item" data-index="2"></div>
                        <div class="quotes--dots-item" data-index="3"></div>
                    </div>
                </div>
            </div>
        </section>
        <div class="news">
            <div class="content">
                <div class="news--block">
                    <div class="news--top">
                        <div class="row new--top--row">
                            <h3 class="title--content-rightblock">Our Blog</h3>
                        </div>
                        <div class="row new--top--row">
                            <div>
                                <h2 class="heading--content-rightblock">
                                    Get The Updates
                                </h2>
                                <p
                                    class="desc--feature--block quotes--top--desc news--desc"
                                    >
                                    Read our blog for the regular updates about
                                    us and about our online library services
                                    that may inspire you
                                </p>
                            </div>
                            <button class="btn--news">
                                <span>Read All</span>
                            </button>
                        </div>
                    </div>
                    <div class="news--list">
                        <div class="news--item">
                            <div class="news--item--block">
                                <figure class="news-item--img">
                                    <img
                                        src="./img/lib4.jpg"
                                        alt=""
                                        class="news--images"
                                        />
                                </figure>
                                <div class="news--block--content">
                                    <h3 class="news-date">July 03, 2022</h3>
                                    <h2 class="news--title">
                                        This year the team I love will win C1. Bayern will pay the price...
                                    </h2>
                                    <a
                                        href="https://www.reuters.com/markets/deals/sandwich-chain-subway-agrees-sell-itself-roark-capital-2023-08-24/"
                                        class="action--news"
                                        target="_blank"
                                        >Read Blog</a
                                    >
                                </div>
                            </div>
                        </div>
                        <div class="news--item">
                            <div class="news--item--block">
                                <figure class="news-item--img">
                                    <img
                                        src="./img/lib1.jpg"
                                        alt=""
                                        class="news--images"
                                        />
                                </figure>
                                <div class="news--block--content">
                                    <h3 class="news-date">July 03, 2022</h3>
                                    <h2 class="news--title">
                                        Why do you need to open a library account
                                        in online..
                                    </h2>
                                    <a
                                        href="https://www.reuters.com/business/aerospace-defense/united-airlines-30-mln-settlement-with-quadriplegic-mans-family-2023-08-23/"
                                        class="action--news"
                                        target="_blank"
                                        >Read Blog</a
                                    >
                                </div>
                            </div>
                        </div>
                        <div class="news--item">
                            <div class="news--item--block">
                                <figure class="news-item--img">
                                    <img
                                        src="./img/lib2.jpg"
                                        alt=""
                                        class="news--images"
                                        />
                                </figure>
                                <div class="news--block--content">
                                    <h3 class="news-date">July 03, 2022</h3>
                                    <h2 class="news--title">
                                        The benefits that we use library online platform
                                    </h2>
                                    <a
                                        href="https://www.reuters.com/markets/currencies/what-is-brics-currency-could-one-be-adopted-2023-08-23/"
                                        class="action--news"
                                        target="_blank"
                                        >Read Blog</a
                                    >
                                </div>
                            </div>
                        </div>
                        <div class="news--item">
                            <div class="news--item--block">
                                <figure class="news-item--img">
                                    <img
                                        src="./img/lib3.jpg"
                                        alt=""
                                        class="news--images"
                                        />
                                </figure>
                                <div class="news--block--content">
                                    <h3 class="news-date">July 03, 2022</h3>
                                    <h2 class="news--title">
                                        How to read books to have magic like Harry Poster...
                                    </h2>
                                    <a
                                        href="https://www.reuters.com/business/little-relief-indebted-canadian-homeowners-mortgage-rates-seen-higher-longer-2023-08-23/"
                                        class="action--news"
                                        target="_blank"
                                        >Read Blog</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="pesudo--footer">
            <div class="content">
                <div class="pesudo--footer--block">
                    <div class="pesudo--content">
                        <h3
                            class="title--content-rightblock title-pesudo--footer"
                            >
                            Our App
                        </h3>
                        <h2 class="pesudo--title">Download the Apps</h2>
                        <h3 class="pesudo--desc">
                            Download our mobile apps and get started today with
                            a special online library and move faster
                        </h3>
                        <div class="row pesudo--brand">
                            <figure class="brand--img-pesudo">
                                <svg
                                    width="182"
                                    height="64"
                                    viewBox="0 0 182 64"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                    >
                                <rect
                                    width="182"
                                    height="64"
                                    rx="6"
                                    fill="white"
                                    />
                                <path
                                    d="M90.8468 33.3172C88.4267 33.3172 86.4542 35.158 86.4542 37.6934C86.4542 40.2133 88.4267 42.0695 90.8468 42.0695C93.268 42.0695 95.2405 40.2133 95.2405 37.6934C95.2394 35.158 93.2669 33.3172 90.8468 33.3172ZM90.8468 40.3471C89.5205 40.3471 88.3773 39.2533 88.3773 37.6944C88.3773 36.1191 89.5215 35.0418 90.8468 35.0418C92.1732 35.0418 93.3163 36.1191 93.3163 37.6944C93.3163 39.2522 92.1732 40.3471 90.8468 40.3471ZM81.2632 33.3172C78.8431 33.3172 76.8706 35.158 76.8706 37.6934C76.8706 40.2133 78.8431 42.0695 81.2632 42.0695C83.6843 42.0695 85.6568 40.2133 85.6568 37.6934C85.6568 35.158 83.6843 33.3172 81.2632 33.3172ZM81.2632 40.3471C79.9368 40.3471 78.7937 39.2533 78.7937 37.6944C78.7937 36.1191 79.9379 35.0418 81.2632 35.0418C82.5895 35.0418 83.7327 36.1191 83.7327 37.6944C83.7337 39.2522 82.5895 40.3471 81.2632 40.3471ZM69.8644 34.6611V36.5173H74.3074C74.1747 37.5617 73.8269 38.3241 73.296 38.854C72.6498 39.5002 71.6383 40.2133 69.8644 40.2133C67.1295 40.2133 64.9913 38.0082 64.9913 35.2733C64.9913 32.5383 67.1295 30.3333 69.8644 30.3333C71.3399 30.3333 72.4173 30.9136 73.2126 31.6596L74.5225 30.3497C73.4112 29.2889 71.9367 28.4771 69.8644 28.4771C66.118 28.4771 62.9684 31.5269 62.9684 35.2733C62.9684 39.0197 66.118 42.0695 69.8644 42.0695C71.8863 42.0695 73.4123 41.4058 74.6048 40.1629C75.8313 38.9364 76.2131 37.2118 76.2131 35.8197C76.2131 35.3896 76.1801 34.9914 76.1133 34.66H69.8644V34.6611ZM116.484 36.1026C116.12 35.1251 115.009 33.3172 112.738 33.3172C110.483 33.3172 108.61 35.0912 108.61 37.6934C108.61 40.1464 110.467 42.0695 112.953 42.0695C114.958 42.0695 116.119 40.843 116.6 40.1299L115.109 39.1349C114.612 39.8645 113.931 40.345 112.953 40.345C111.975 40.345 111.279 39.8974 110.831 39.0187L116.683 36.5986L116.484 36.1026ZM110.516 37.5617C110.467 35.8701 111.826 35.0088 112.805 35.0088C113.567 35.0088 114.213 35.3906 114.429 35.937L110.516 37.5617ZM105.759 41.8051H107.682V28.9421H105.759V41.8051ZM102.609 34.2958H102.543C102.112 33.7813 101.282 33.3172 100.239 33.3172C98.0505 33.3172 96.0451 35.2404 96.0451 37.7109C96.0451 40.1639 98.0505 42.0705 100.239 42.0705C101.284 42.0705 102.112 41.6065 102.543 41.0766H102.609V41.7063C102.609 43.3804 101.714 44.2756 100.272 44.2756C99.0949 44.2756 98.3654 43.4308 98.067 42.7178L96.3929 43.4144C96.8734 44.574 98.1493 46.0001 100.272 46.0001C102.526 46.0001 104.433 44.6738 104.433 41.4408V33.5837H102.61V34.2958H102.609ZM100.405 40.3471C99.0785 40.3471 97.9682 39.2358 97.9682 37.7109C97.9682 36.1685 99.0785 35.0418 100.405 35.0418C101.714 35.0418 102.742 36.1685 102.742 37.7109C102.742 39.2358 101.714 40.3471 100.405 40.3471ZM125.492 28.9421H120.891V41.8051H122.81V36.932H125.491C127.619 36.932 129.711 35.3916 129.711 32.9376C129.711 30.4835 127.62 28.9421 125.492 28.9421ZM125.541 35.1416H122.81V30.7325H125.541C126.976 30.7325 127.791 31.921 127.791 32.9376C127.791 33.9336 126.976 35.1416 125.541 35.1416ZM137.407 33.2946C136.017 33.2946 134.577 33.9068 133.982 35.264L135.686 35.975C136.05 35.264 136.729 35.0315 137.44 35.0315C138.433 35.0315 139.442 35.6272 139.459 36.686V36.8188C139.111 36.6202 138.366 36.3228 137.456 36.3228C135.62 36.3228 133.749 37.3322 133.749 39.2183C133.749 40.9397 135.255 42.0479 136.943 42.0479C138.233 42.0479 138.945 41.4686 139.392 40.7895H139.458V41.7824H141.312V36.8507C141.313 34.5685 139.607 33.2946 137.407 33.2946ZM137.174 40.344C136.547 40.344 135.669 40.0291 135.669 39.2512C135.669 38.2583 136.762 37.8776 137.705 37.8776C138.548 37.8776 138.946 38.0597 139.459 38.3077C139.309 39.5002 138.284 40.344 137.174 40.344ZM148.064 33.5755L145.863 39.1524H145.797L143.513 33.5755H141.445L144.87 41.3698L142.917 45.7058H144.919L150.199 33.5755H148.064ZM130.771 41.8051H132.69V28.9421H130.771V41.8051Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M69.529 21.4758C69.529 22.338 69.2739 23.0243 68.7625 23.5367C68.1821 24.1459 67.4248 24.4505 66.4947 24.4505C65.6036 24.4505 64.8452 24.1418 64.2227 23.5244C63.5992 22.906 63.2874 22.1405 63.2874 21.2267C63.2874 20.312 63.5992 19.5465 64.2227 18.9291C64.8452 18.3107 65.6036 18.002 66.4947 18.002C66.9371 18.002 67.36 18.0884 67.7613 18.2603C68.1636 18.4331 68.4857 18.6626 68.7265 18.9497L68.1842 19.493C67.7757 19.0042 67.2129 18.7603 66.4936 18.7603C65.8433 18.7603 65.2815 18.9888 64.8072 19.4456C64.3328 19.9025 64.0962 20.4962 64.0962 21.2257C64.0962 21.9552 64.3328 22.549 64.8072 23.0058C65.2815 23.4627 65.8433 23.6911 66.4936 23.6911C67.183 23.6911 67.7582 23.4616 68.2182 23.0017C68.5166 22.7023 68.6894 22.2855 68.7357 21.7515H66.4936V21.0096H69.4848C69.5157 21.1712 69.529 21.3266 69.529 21.4758Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M74.2726 18.8973H71.4615V20.8543H73.9969V21.5962H71.4615V23.5533H74.2726V24.3126H70.6682V18.1389H74.2726V18.8973Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M77.6176 24.3126H76.8243V18.8973H75.0998V18.1389H79.3421V18.8973H77.6176V24.3126Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M82.4115 24.3126V18.1389H83.2048V24.3126H82.4115Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M86.7229 24.3126H85.9296V18.8973H84.2051V18.1389H88.4475V18.8973H86.7229V24.3126Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M96.4782 23.5152C95.8711 24.1387 95.1169 24.4505 94.2145 24.4505C93.3121 24.4505 92.5579 24.1387 91.9519 23.5152C91.3448 22.8916 91.0423 22.1282 91.0423 21.2258C91.0423 20.3234 91.3448 19.5599 91.9519 18.9363C92.5579 18.3128 93.3121 18 94.2145 18C95.1118 18 95.865 18.3138 96.4741 18.9405C97.0833 19.5671 97.3878 20.3285 97.3878 21.2258C97.3878 22.1282 97.0843 22.8916 96.4782 23.5152ZM92.5373 22.9976C92.9942 23.4607 93.5529 23.6911 94.2145 23.6911C94.8761 23.6911 95.4359 23.4596 95.8917 22.9976C96.3486 22.5346 96.578 21.944 96.578 21.2258C96.578 20.5076 96.3486 19.9169 95.8917 19.4539C95.4359 18.9909 94.8761 18.7604 94.2145 18.7604C93.5529 18.7604 92.9942 18.9919 92.5373 19.4539C92.0815 19.9169 91.852 20.5076 91.852 21.2258C91.852 21.944 92.0815 22.5346 92.5373 22.9976Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M98.5012 24.3126V18.1389H99.4663L102.467 22.941H102.501L102.467 21.7516V18.1389H103.26V24.3126H102.432L99.2924 19.2769H99.2585L99.2924 20.4664V24.3126H98.5012Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    fill-rule="evenodd"
                                    clip-rule="evenodd"
                                    d="M31.195 19.1189C31.0695 19.3967 31 19.7389 31 20.1379V42.8943C31 43.2941 31.0695 43.6361 31.1951 43.9138L43.5916 31.5155L31.195 19.1189ZM31.8896 44.6336C32.3504 44.8375 32.9548 44.7779 33.6146 44.4037L48.1947 36.1186L44.2987 32.2226L31.8896 44.6336ZM49.0971 35.6068L53.6802 33.0029C55.1176 32.1849 55.1176 30.8483 53.6802 30.0313L49.0949 27.4258L45.0058 31.5155L49.0971 35.6068ZM48.1931 26.9134L33.6146 18.6295C32.9549 18.2546 32.3505 18.1953 31.8897 18.3994L44.2987 30.8084L48.1931 26.9134Z"
                                    fill="#7264D6"
                                    />
                                </svg>
                            </figure>

                            <figure class="brand--img-pesudo">
                                <svg
                                    width="182"
                                    height="64"
                                    viewBox="0 0 182 64"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                    >
                                <rect
                                    width="182"
                                    height="64"
                                    rx="6"
                                    fill="white"
                                    />
                                <path
                                    d="M114.889 30.0409V32.5988H113.286V34.2763H114.889V39.9759C114.889 41.9221 115.77 42.7006 117.985 42.7006C118.374 42.7006 118.745 42.6543 119.069 42.5987V40.9397C118.791 40.9676 118.615 40.9861 118.309 40.9861C117.317 40.9861 116.882 40.5227 116.882 39.4662V34.2763H119.069V32.5988H116.882V30.0409H114.889Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M124.712 42.8396C127.659 42.8396 129.466 40.8656 129.466 37.5941C129.466 34.3411 127.649 32.3578 124.712 32.3578C121.764 32.3578 119.948 34.3411 119.948 37.5941C119.948 40.8656 121.755 42.8396 124.712 42.8396ZM124.712 41.0695C122.979 41.0695 122.005 39.7998 122.005 37.5941C122.005 35.4069 122.979 34.128 124.712 34.128C126.435 34.128 127.418 35.4069 127.418 37.5941C127.418 39.7906 126.435 41.0695 124.712 41.0695Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M131.012 42.645H133.005V36.6859C133.005 35.2679 134.071 34.3133 135.581 34.3133C135.933 34.3133 136.526 34.3782 136.693 34.4338V32.4691C136.48 32.4134 136.1 32.3856 135.804 32.3856C134.488 32.3856 133.366 33.1085 133.079 34.1002H132.931V32.5525H131.012V42.645Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M141.641 34.0538C143.114 34.0538 144.078 35.0825 144.125 36.6673H139.027C139.138 35.0918 140.167 34.0538 141.641 34.0538ZM144.115 39.9203C143.745 40.7081 142.92 41.1436 141.715 41.1436C140.121 41.1436 139.092 40.0222 139.027 38.2521V38.1409H146.154V37.4458C146.154 34.2763 144.458 32.3578 141.65 32.3578C138.805 32.3578 136.998 34.406 136.998 37.6312C136.998 40.8563 138.768 42.8396 141.659 42.8396C143.967 42.8396 145.58 41.7275 146.034 39.9203H144.115Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M101.822 38.918C101.976 41.3963 104.041 42.9812 107.115 42.9812C110.4 42.9812 112.456 41.3194 112.456 38.6682C112.456 36.5838 111.284 35.4311 108.441 34.7683L106.913 34.3937C105.108 33.971 104.378 33.4043 104.378 32.4149C104.378 31.1662 105.511 30.3497 107.211 30.3497C108.825 30.3497 109.939 31.147 110.141 32.4245H112.235C112.11 30.0903 110.055 28.4478 107.24 28.4478C104.214 28.4478 102.197 30.0903 102.197 32.559C102.197 34.5954 103.34 35.8057 105.847 36.3917L107.634 36.8239C109.469 37.2562 110.275 37.8902 110.275 38.9468C110.275 40.1763 109.007 41.0697 107.278 41.0697C105.425 41.0697 104.137 40.234 103.955 38.918H101.822Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M81.1815 32.3856C79.8099 32.3856 78.6236 33.0715 78.012 34.2207H77.8637V32.5525H75.9452V45.9999H77.9378V41.1158H78.0954C78.6236 42.1816 79.7636 42.8118 81.2 42.8118C83.7487 42.8118 85.3705 40.8007 85.3705 37.5941C85.3705 34.3875 83.7487 32.3856 81.1815 32.3856ZM80.6162 41.0232C78.948 41.0232 77.9007 39.7071 77.9007 37.6034C77.9007 35.4903 78.948 34.1743 80.6255 34.1743C82.3122 34.1743 83.3224 35.4625 83.3224 37.5941C83.3224 39.7349 82.3122 41.0232 80.6162 41.0232Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M92.3428 32.3856C90.9712 32.3856 89.7849 33.0715 89.1733 34.2207H89.025V32.5525H87.1066V45.9999H89.0991V41.1158H89.2567C89.7849 42.1816 90.9249 42.8118 92.3613 42.8118C94.91 42.8118 96.5318 40.8007 96.5318 37.5941C96.5318 34.3875 94.91 32.3856 92.3428 32.3856ZM91.7775 41.0232C90.1093 41.0232 89.062 39.7071 89.062 37.6034C89.062 35.4903 90.1093 34.1743 91.7868 34.1743C93.4735 34.1743 94.4837 35.4625 94.4837 37.5941C94.4837 39.7349 93.4735 41.0232 91.7775 41.0232Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M72.3703 42.645H74.6564L69.6518 28.784H67.3369L62.3323 42.645H64.5416L65.8192 38.966H71.1023L72.3703 42.645ZM68.3839 31.3007H68.5472L70.5548 37.1601H66.3667L68.3839 31.3007Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M63.6707 18.329V25.0157H66.085C68.0775 25.0157 69.2313 23.7877 69.2313 21.6515C69.2313 19.5477 68.0682 18.329 66.085 18.329H63.6707ZM64.7087 19.2743H65.9691C67.3546 19.2743 68.1748 20.1547 68.1748 21.6654C68.1748 23.1992 67.3685 24.0704 65.9691 24.0704H64.7087V19.2743Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M72.7651 25.113C74.2387 25.113 75.1423 24.126 75.1423 22.4902C75.1423 20.8637 74.2341 19.8721 72.7651 19.8721C71.2916 19.8721 70.3833 20.8637 70.3833 22.4902C70.3833 24.126 71.2869 25.113 72.7651 25.113ZM72.7651 24.2279C71.8986 24.2279 71.412 23.5931 71.412 22.4902C71.412 21.3966 71.8986 20.7571 72.7651 20.7571C73.627 20.7571 74.1182 21.3966 74.1182 22.4902C74.1182 23.5884 73.627 24.2279 72.7651 24.2279Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M82.8373 19.9694H81.841L80.942 23.8201H80.8633L79.8253 19.9694H78.8707L77.8327 23.8201H77.7586L76.855 19.9694H75.8448L77.235 25.0157H78.259L79.297 21.2993H79.3758L80.4184 25.0157H81.4518L82.8373 19.9694Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M83.9846 25.0157H84.9809V22.0639C84.9809 21.2761 85.4489 20.785 86.1857 20.785C86.9225 20.785 87.2747 21.1881 87.2747 21.999V25.0157H88.271V21.7488C88.271 20.5486 87.65 19.8721 86.524 19.8721C85.764 19.8721 85.2636 20.2104 85.018 20.771H84.9438V19.9694H83.9846V25.0157Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M89.84 25.0157H90.8363V18H89.84V25.0157Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M94.5832 25.113C96.0568 25.113 96.9604 24.126 96.9604 22.4902C96.9604 20.8637 96.0521 19.8721 94.5832 19.8721C93.1096 19.8721 92.2014 20.8637 92.2014 22.4902C92.2014 24.126 93.105 25.113 94.5832 25.113ZM94.5832 24.2279C93.7167 24.2279 93.2301 23.5931 93.2301 22.4902C93.2301 21.3966 93.7167 20.7571 94.5832 20.7571C95.4451 20.7571 95.9363 21.3966 95.9363 22.4902C95.9363 23.5884 95.4451 24.2279 94.5832 24.2279Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M99.9288 24.2603C99.3867 24.2603 98.9928 23.9962 98.9928 23.5421C98.9928 23.0972 99.3079 22.8609 100.003 22.8146L101.236 22.7358V23.1575C101.236 23.7831 100.68 24.2603 99.9288 24.2603ZM99.674 25.0991C100.337 25.0991 100.888 24.8118 101.189 24.3067H101.268V25.0157H102.227V21.5681C102.227 20.5023 101.514 19.8721 100.249 19.8721C99.104 19.8721 98.2884 20.4281 98.1865 21.2947H99.1503C99.2615 20.9379 99.6462 20.734 100.202 20.734C100.883 20.734 101.236 21.0352 101.236 21.5681V22.0037L99.8686 22.0824C98.6684 22.1566 97.9919 22.6802 97.9919 23.5884C97.9919 24.5106 98.7008 25.0991 99.674 25.0991Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M105.608 25.0991C106.303 25.0991 106.892 24.7701 107.193 24.2186H107.272V25.0157H108.226V18H107.23V20.771H107.156C106.882 20.215 106.299 19.886 105.608 19.886C104.334 19.886 103.514 20.8962 103.514 22.4902C103.514 24.0889 104.325 25.0991 105.608 25.0991ZM105.891 20.7803C106.725 20.7803 107.248 21.443 107.248 22.4948C107.248 23.5514 106.729 24.2047 105.891 24.2047C105.047 24.2047 104.542 23.5606 104.542 22.4902C104.542 21.4291 105.052 20.7803 105.891 20.7803Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M114.687 25.113C116.16 25.113 117.064 24.126 117.064 22.4902C117.064 20.8637 116.156 19.8721 114.687 19.8721C113.213 19.8721 112.305 20.8637 112.305 22.4902C112.305 24.126 113.209 25.113 114.687 25.113ZM114.687 24.2279C113.82 24.2279 113.334 23.5931 113.334 22.4902C113.334 21.3966 113.82 20.7571 114.687 20.7571C115.549 20.7571 116.04 21.3966 116.04 22.4902C116.04 23.5884 115.549 24.2279 114.687 24.2279Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M118.383 25.0157H119.379V22.0639C119.379 21.2761 119.847 20.785 120.584 20.785C121.321 20.785 121.673 21.1881 121.673 21.999V25.0157H122.669V21.7488C122.669 20.5486 122.048 19.8721 120.922 19.8721C120.162 19.8721 119.662 20.2104 119.416 20.771H119.342V19.9694H118.383V25.0157Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M127.257 18.7136V19.9926H126.456V20.8313H127.257V23.6811C127.257 24.6542 127.698 25.0435 128.805 25.0435C129 25.0435 129.185 25.0203 129.347 24.9925V24.163C129.208 24.1769 129.12 24.1862 128.967 24.1862C128.472 24.1862 128.254 23.9545 128.254 23.4263V20.8313H129.347V19.9926H128.254V18.7136H127.257Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M130.685 25.0157H131.681V22.0685C131.681 21.3039 132.135 20.7896 132.951 20.7896C133.655 20.7896 134.03 21.1974 134.03 22.0037V25.0157H135.027V21.7581C135.027 20.5579 134.364 19.8767 133.289 19.8767C132.529 19.8767 131.996 20.215 131.75 20.7803H131.672V18H130.685V25.0157Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M138.621 20.7201C139.357 20.7201 139.839 21.2344 139.863 22.0268H137.314C137.369 21.2391 137.884 20.7201 138.621 20.7201ZM139.858 23.6533C139.673 24.0472 139.26 24.265 138.658 24.265C137.861 24.265 137.346 23.7043 137.314 22.8192V22.7636H140.877V22.4161C140.877 20.8313 140.029 19.8721 138.625 19.8721C137.203 19.8721 136.299 20.8962 136.299 22.5087C136.299 24.1213 137.184 25.113 138.63 25.113C139.784 25.113 140.59 24.5569 140.817 23.6533H139.858Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M51.521 31.2692C51.5452 29.3924 52.5531 27.6165 54.1521 26.6334C53.1434 25.1928 51.4538 24.2794 49.696 24.2244C47.8212 24.0276 46.0036 25.3463 45.0482 25.3463C44.0743 25.3463 42.6033 24.244 41.0193 24.2766C38.9547 24.3433 37.0299 25.5171 36.0254 27.3222C33.8661 31.0607 35.4767 36.5549 37.5451 39.5768C38.58 41.0566 39.7895 42.7095 41.372 42.6509C42.9207 42.5866 43.4991 41.6634 45.3684 41.6634C47.2204 41.6634 47.763 42.6509 49.3777 42.6136C51.0395 42.5866 52.0865 41.1273 53.085 39.6335C53.8286 38.5792 54.4007 37.4139 54.7803 36.1808C52.8274 35.3548 51.5233 33.3895 51.521 31.2692Z"
                                    fill="#7264D6"
                                    />
                                <path
                                    d="M48.4711 22.2371C49.3772 21.1494 49.8236 19.7513 49.7155 18.3398C48.3312 18.4852 47.0526 19.1468 46.1343 20.1928C45.2363 21.2147 44.769 22.5882 44.8573 23.9457C46.2421 23.96 47.6034 23.3163 48.4711 22.2371Z"
                                    fill="#7264D6"
                                    />
                                </svg>
                            </figure>
                        </div>
                        <div class="star--first row">
                            <figure class="start--icon">
                                <svg
                                    width="154"
                                    height="154"
                                    viewBox="0 0 154 154"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                    >
                                <path
                                    d="M77 0L87.8894 66.1106L154 77L87.8894 87.8894L77 154L66.1106 87.8894L0 77L66.1106 66.1106L77 0Z"
                                    fill="currentColor"
                                    />
                                </svg>
                            </figure>

                            <figure class="start--icon">
                                <svg
                                    width="154"
                                    height="154"
                                    viewBox="0 0 154 154"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                    >
                                <path
                                    d="M77 0L87.8894 66.1106L154 77L87.8894 87.8894L77 154L66.1106 87.8894L0 77L66.1106 66.1106L77 0Z"
                                    fill="currentColor"
                                    />
                                </svg>
                            </figure>
                        </div>
                        <div class="star--second row">
                            <figure class="start--icon">
                                <svg
                                    width="154"
                                    height="154"
                                    viewBox="0 0 154 154"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                    >
                                <path
                                    d="M77 0L87.8894 66.1106L154 77L87.8894 87.8894L77 154L66.1106 87.8894L0 77L66.1106 66.1106L77 0Z"
                                    fill="currentColor"
                                    />
                                </svg>
                            </figure>

                            <figure class="start--icon">
                                <svg
                                    width="154"
                                    height="154"
                                    viewBox="0 0 154 154"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                                    >
                                <path
                                    d="M77 0L87.8894 66.1106L154 77L87.8894 87.8894L77 154L66.1106 87.8894L0 77L66.1106 66.1106L77 0Z"
                                    fill="currentColor"
                                    />
                                </svg>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="footer">
            <div class="content">
                <div class="footer--block">
                    <ul class="list--footer">
                        <li class="item--footer">
                            <figure class="logo">
                                <img
                                    src="./img/logo-app.svg"
                                    alt=""
                                    class="logo--img"
                                    />
                                <p class="logo--desc">
                                    92Lib
                                </p>
                            </figure>
                        </li>
                        <li class="item--footer">
                            <h3 class="title--footer">Sitemap</h3>
                            <ul class="list--item">
                                <li class="item-footer--sub">Home</li>
                                <li class="item-footer--sub">Abouts</li>
                                <li class="item-footer--sub">Growers</li>
                                <li class="item-footer--sub">Merchants</li>
                                <li class="item-footer--sub">Contact</li>
                            </ul>
                        </li>
                        <li class="item--footer">
                            <h3 class="title--footer">Socials</h3>
                            <ul class="list--item">
                                <li class="item-footer--sub">Facebook</li>
                                <li class="item-footer--sub">Linked</li>
                                <li class="item-footer--sub">Instagram</li>
                                <li class="item-footer--sub">Twitter</li>
                            </ul>
                        </li>
                        <li class="item--footer">
                            <div>
                                <h3 class="title--footer">Head Office</h3>
                                <p class="desc--title">
                                    92Team © 2024. FPT University Danang FUDA, Da Nang Viet Nam 550000.
                                </p>
                                <h3 class="title--fill--footer">News letter</h3>

                                <form action="" class="main--fill footer--fill">
                                    <input
                                        class="main--fill--input footer--fill--input"
                                        type="text"
                                        placeholder="Your email address"
                                        />
                                    <button
                                        class="btn form--btn btn--form--footer"
                                        >
                                        Subscribe
                                    </button>
                                </form>
                            </div>
                        </li>
                    </ul>
                    <div class="row more--information-footer">
                        <a
                            href="mailto:nhanbtde170234@fpt.edu.vn"
                            class="email--company"
                            ><h3 class="animate-charcter">Email:</h3>
                            92teamquangnamvipvl@fpt.edu.vn</a
                        >
                        <a href="tel:+84335598434" class="email--company"
                           ><h3 class="animate-charcter">Telephone:</h3>
                            (84)00885324624</a
                        >
                        <a href="#!" class="email--company"
                           ><h3 class="animate-charcter">Donate</h3>
                            Timo By Ban Viet 0335598434</a
                        >

                    </div>
                </div>
            </div>
        </section>
        <div class="banner">
            <div class="banner--block">
                <h3 class="copyright">
                    © 2024 Power By 92Team Corp.
                </h3>
            </div>
        </div>
        <script src="./js/main.js"></script>
    </body>

</html>
