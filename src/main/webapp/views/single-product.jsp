<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link
      href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
      rel="stylesheet"
    />

    <!-- Additional CSS Files -->
    <link
      rel="stylesheet"
      type="text/css"
      href="/assets/css/bootstrap.min.css"
    />

    <link
      rel="stylesheet"
      type="text/css"
      href="/assets/css/font-awesome.css"
    />

    <link rel="stylesheet" href="/assets/css/templatemo-hexashop.css" />

    <link rel="stylesheet" href="/assets/css/owl-carousel.css" />

    <link rel="stylesheet" href="/assets/css/lightbox.css" />
  </head>
  <body>
    <!-- ***** Preloader Start ***** -->
    <!-- <div id="preloader">
      <div class="jumper">
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div> -->
    <!-- ***** Preloader End ***** -->

    <!-- ***** Header Area Start ***** -->
    <!-- <header class="header-area header-sticky">
        <jsp:include page="header.jsp"></jsp:include>
    </header> -->
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <!-- <div class="page-heading" id="top">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="inner-content">
              <h2>Single Product Page</h2>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Product Area Starts ***** -->
    <section class="section" id="product">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div class="left-images">
              <%--
              <img src="/assets/images/${detailProduct.image}" alt="" /> --%>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="right-content">
              <td>
                <h4>${detailProduct.quantity}</h4>
                <h4>${detailProduct.product_name}</h4>
                <span class="price">$${detailProduct.price}</span>
                <!-- <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul> -->
                <!-- <span
                >Sản phẩm đến từ Hàn Quốc với chất lượng cực kỳ tuyệt vời, giá
                cả phải chăng</span
              > -->
                <div class="quote">
                  <i class="fa fa-quote-left"></i>
                  <!-- <p>
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                  do eiuski smod.
                </p> -->
                </div>
                <div class="quantity-content">
                  <div class="left-content">
                    <h6>No. of Orders</h6>
                  </div>
                  <div class="right-content">
                    <div class="quantity buttons_added">
                      <input type="button" value="-" class="minus" /><input
                        type="number"
                        step="1"
                        min="1"
                        max=""
                        name="quantity"
                        value="1"
                        title="Qty"
                        class="input-text qty text"
                        pattern=""
                        inputmode=""
                      /><input type="button" value="+" class="plus" />
                    </div>
                  </div>
                </div>
                <div class="total">
                  <!-- <h4>Total: $210.00</h4> -->
                  <div class="main-border-button"></div>
                </div>
              </td>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ***** Product Area Ends ***** -->

    <!-- ***** Footer Start ***** -->
    <!-- <footer>
      <jsp:include page="footer.jsp"></jsp:include>
    </footer> -->

    <!-- jQuery -->
    <script src="/assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="/assets/js/popper.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="/assets/js/owl-carousel.js"></script>
    <script src="/assets/js/accordions.js"></script>
    <script src="/assets/js/datepicker.js"></script>
    <script src="/assets/js/scrollreveal.min.js"></script>
    <script src="/assets/js/waypoints.min.js"></script>
    <script src="/assets/js/jquery.counterup.min.js"></script>
    <script src="/assets/js/imgfix.min.js"></script>
    <script src="/assets/js/slick.js"></script>
    <script src="/assets/js/lightbox.js"></script>
    <script src="/assets/js/isotope.js"></script>
    <script src="/assets/js/quantity.js"></script>

    <!-- Global Init -->
    <script src="/assets/js/custom.js"></script>

    <script>
      $(function () {
        var selectedClass = "";
        $("p").click(function () {
          selectedClass = $(this).attr("data-rel");
          $("#portfolio").fadeTo(50, 0.1);
          $("#portfolio div")
            .not("." + selectedClass)
            .fadeOut();
          setTimeout(function () {
            $("." + selectedClass).fadeIn();
            $("#portfolio").fadeTo(50, 1);
          }, 500);
        });
      });
    </script>
  </body>
</html>
