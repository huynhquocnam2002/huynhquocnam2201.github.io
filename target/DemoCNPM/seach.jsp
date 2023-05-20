<%@ page import="java.util.List" %>
<%@ page import="Form.Control.ThongbaoDao" %>
<%@ page import="Form.model.Thongbao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />


    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />

    <link rel="stylesheet" href="admin.css" />
    <link rel="stylesheet" href="cssHeader.css" />
</head>
<body>
<header id="header" class="header">
    <div class="navigation">
        <div class="container">
            <nav class="nav">
                <div class="nav__hamburger">
                    <svg>
                        <use xlink:href="./images/sprite.svg#icon-menu"></use>
                    </svg>
                </div>

                <div class="nav__logo">
                    <a href="#" class="scroll-link"> NiceAdmin </a>
                </div>

                <div class="nav__menu">
                    <div class="menu__top">
                        <span class="nav__category">PHONE</span>
                        <a href="#" class="close__toggle">
                            <svg>
                                <use xlink:href="./images/sprite.svg#icon-cross"></use>
                            </svg>
                        </a>
                    </div>
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="#" class="nav__link scroll-link"
                            >Trang chủ</a
                            >
                        </li>
                        <!--                        <li class="nav__item">-->
                        <!--                            <a href="#category" class="nav__link scroll-link">Sản phẩm</a>-->
                        <!--                        </li>-->
                        <li class="nav__item_seach">
                            <input
                                    class="input_seach"
                                    id="input_seach"
                                    type="text"
                                    placeholder="seach..."
                            />
                            <div class="nav__icons">
                                <a href="#" class="icon__item" id="icon__item_seach">
                                    <svg class="icon__search">
                                        <use xlink:href="./images/sprite.svg#icon-search"></use>
                                    </svg>
                                </a>
                            </div>
                        </li>
                        <!--                        <li class="nav__item">-->

                        <!--                            <div class="nav__item_hotro">-->
                        <!--                                <a  href="#hotro" class="nav__link scroll-link">HOTLINE HỖ TRỢ</a> <br>-->
                        <!--                                <a  href="#hotro" class="nav__link scroll-link">0797.74.76.76</a>-->
                        <!--                            </div>-->
                        <!--                        </li>-->
                    </ul>
                </div>

                <div class="nav__icons">
                    <a href="" class="icon__item">
                        <svg class="icon__user">
                            <use xlink:href="./images/sprite.svg#icon-user"></use>
                        </svg>
                    </a>
                    <div class="nav__item_user" id="nav__item_user">
                        <a href="#login" class="nav__link scroll-link">Hello </a>
                        <a href="#register" class="nav__link scroll-link">Quốc Nam</a
                        ><br />
                        <a href="" class="nav__link scroll-link">Admin</a>
                    </div>
                </div>
            </nav>
        </div>

        <!--1-->
    </div>
</header>

<section id="admin-content" class="section">
    <div class="container">
        <!--            left-menu-->
        <div id="leftContainer">
            <ul class="list-tab">
                <li class="list-tab-li product-li tab-active">
                    <div class="tab-li-container">
                        <div
                                class="tab-li-container-name menu-left-show"
                                onclick="showChild(this,2)"
                        >
                            <i class="icon-tab fa-solid fa-bag-shopping"></i>
                            <p class="li-container-text">Quản lí thông báo</p>
                        </div>
                        <div class="icon-up-down">
                            <i
                                    class="icon-down fa-sharp fa-solid fa-chevron-down"
                                    onclick="showChild(this,3)"
                            ></i>
                            <i class="icon-up fa-solid fa-chevron-up"></i>
                        </div>
                    </div>
                    <ul class="list-child product-list-tab">
                        <li class="list-child-item product-list-li-item left-menu-item">
                            Thông báo ưu đãi
                        </li>
                        <li class="list-child-item product-list-li-item left-menu-item">
                            Thêm Thông báo
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!--            right-menu-->
        <div id="rightContainer">
            <!--                manage products-->
            <div class="right-tab manage-products active-right-tab">
                <h1 class="tab-name">Quản lí thông báo ưu đãi</h1>
                <div class="flex flex-manage-products">
                    <div class="flex-item active-tab">
                        <p>Tất cả<span class="quantity">0</span></p>
                    </div>
                    <div class="flex-item">
                        <p>Đã xóa<span class="quantity">0</span></p>
                    </div>
                </div>
                <!--                filter-div-->
                <div class="manage-products-filter-container">
                    <div class="filter-container">
                        <div class="input-filter">
                            <form style="border-radius: 0;" action="DanhmucSeachServlet" method="post" class="nav__item_seach">
                                <!-- 2. nhap du lieu tim kiem-->
                                <input style="border-radius: 0; width: 90%;" class="input_seach1" id="input_seach1" type="text" name="input_seach1"
                                       placeholder="seach...">
                                <!-- 3. bam nut xac nhan tim kiem-->
                                <div class="nav__icons">
                                    <button style="border-radius: 0" class="icon__item" id="icon__item_seach1" type="submit" name="btnseach"
                                            value="Go"> Tìm Kiếm
                                    </button>
                                </div>
                            </form>
                        </div>


                        <div
                                style="display: none"
                                class="manage-products-tools-container"
                        >
                            <p>Đã chọn: <span class="quantity">0</span></p>
                            <button class="tool-button selling-button" disabled>
                                Bắt đầu bán
                            </button>
                            <button class="tool-button stop-selling-button" disabled>
                                Dừng bán
                            </button>
                            <button class="tool-button delete-button" disabled>
                                Xóa
                            </button>
                        </div>
                    </div>
                </div>
                <!--                all-products-->
                <div
                        class="manage-all-products-tab manage-products-flex-tab active-product-tab"
                >
                    <div class="table-manage-product-div">
                        <div class="table-row-div table-row-div-head-table">
                            <table class="manage-products-table">
                                <tr class="table-row head-table">
                                    <th>
                                        <input
                                                type="checkbox"
                                                name="check_all"
                                                class="check-all"
                                        />
                                    </th>
                                    <th>Tên Thông báo</th>
                                    <th>Loại</th>
                                    <th>Ngày thêm</th>
                                    <th>nội dung</th>

                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                            </table>
                        </div>

                        <!-- 7. hien thuc ket qua seach ra trang quan ly cho nguoi dung thay-->
                        <% List<Thongbao> getall = ThongbaoDao.getThongbao((String) session.getAttribute("txt"));%>

                        <% for (int i = 0; i < getall.size(); i++) {%>
                        <div class="table-row-div table-row-div-product">
                            <table class="manage-products-table">
                                <tr class="row-table row-table-main product-row">
                                    <td>
                                        <div class="id-check-product-div">
                                            <input
                                                    type="checkbox"
                                                    name="is-check"
                                                    class="is-check"
                                            />
                                        </div>
                                    </td>
                                    <td class="product-name-col">
                                        <div class="product-name-container">
                                            <div class="container-img">
                                                <img
                                                        src="<%=getall.get(i).getImage()%>"
                                                        alt=""
                                                />
                                            </div>
                                            <div class="container-info">
                                                <div class="name-block">
                                                    <p><%=getall.get(i).getTitle()%></p>
                                                </div>
                                                <div class="id-block">
                                                    <p class="product-id">
                                                        ID: <span class="id-span"><%=getall.get(i).getId()%></span>
                                                    </p>
                                                    <i class="fa-regular fa-copy copy-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product-type-col">
                                        <div class="product-type-div">
                                            <p class="product-type"><%=getall.get(i).getStatus()%></p>
                                        </div>
                                    </td>
                                    <td class="product-quantity-col">
                                        <div class="quantity-block">
                                            <input
                                                    type="text"
                                                    pattern="^\d+$"
                                                    value="<%=getall.get(i).getDate_add()%>"
                                                    name="product-quantity"
                                                    class="product-quantity editable"
                                                    disabled
                                            />
                                        </div>
                                    </td>
                                    <td class="uint-price-col">
                                        <div class="unit-price-block">
                                            <p>
                                                200000<span><u>đ</u></span>
                                            </p>
                                        </div>
                                    </td>
                                    <td class="product-status-col">
                                        <div class="product-status-div">
                                            <p class="delete-p status">Đã xóa</p>
                                            <p class="upcoming-p status">Sắp mở bán</p>
                                            <p class="selling-p status active-status">Đang bán</p>
                                            <p class="stop-selling-p status">Dừng kinh doanh</p>
                                            <select
                                                    name="product-status"
                                                    class="product-status editable"
                                            >
                                                <option class="delete-option" value="-1">
                                                    Đã xóa
                                                </option>
                                                <option class="upcoming-option" value="0">
                                                    Sắp mở bán
                                                </option>
                                                <option class="selling-option" value="1" selected>
                                                    Đang bán
                                                </option>
                                                <option class="stop-selling-option" value="2">
                                                    Dừng kinh doanh
                                                </option>
                                            </select>
                                        </div>
                                    </td>
                                    <td class="proceed">
                                        <div class="proceed-div">
                                            <p class="edit-proceed">Chỉnh sửa</p>
                                            <p class="accept-proceed">Ok</p>
                                            <p class="delete-proceed">Xóa</p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <%}%>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

</body>
</html>
