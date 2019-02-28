<%@ page contentType="text/html;charset=UTF-8" %>
<!--左侧导航开始-->
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="nav-close">
        <i class="fa fa-times-circle"></i>
    </div>
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element"> <span>
                         <img src="img/profile_small.jpg" alt="image" class="img-circle" height="60" width="60"/></span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                         <span class="clear"><span class="block m-t-xs"><strong class="font-bold" th:text="${user.userName}">NS</strong></span>
                         <span class="text-muted text-xs block" th:text="${user.dept.deptName}">研发部<b class="caret"></b></span> </span> </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a class="menuItem" href="profile.html">个人信息</a></li>
                        <li class="divider"></li>
                        <li><a href="/logout">退出</a></li>
                    </ul>
                </div>
            </li>
            <li class="active">
                <a href="index.html"><i class="fa fa-home"></i> <span class="nav-label">主页</span> <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class="active"><a class="menuItem" th:href="@{/system/main}">了解若依</a></li>
                </ul>
            </li>
            <li th:each="menu : ${menus}">
                <a href="#">
                    <i class="fa fa fa-bar-chart-o" th:class="${menu.icon}"></i>
                    <span class="nav-label" th:text="${menu.menuName}">一级菜单</span>
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level collapse">
                    <li th:each="cmenu : ${menu.children}">
                        <a class="menuItem" th:text="${cmenu.menuName}" th:href="${cmenu.url}">二级菜单</a>
                        <a class="menuItem" href="/sys/menu">菜单</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
<!--左侧导航结束-->
    