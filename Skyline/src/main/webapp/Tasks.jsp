<%--
  Created by IntelliJ IDEA.
  User: Taoufik
  Date: 5/23/2024
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml" class="opacity-0" lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="ceKdwoQjZ4VuoGqoSQaSREwB7MD9sjwFnfhlp7MH">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Midone admin is super flexible, powerful, clean & modern responsive tailwind admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, midone Admin Template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="LEFT4CODE">
    <title>Tasks</title>

    <link rel="stylesheet" href="tailwind/dist/css/vendors/simplebar.css">
    <link rel="stylesheet" href="tailwind/dist/css/components/mobile-menu.css">
    <link rel="stylesheet" href="tailwind/dist/css/themes/enigma/top-nav.css">
    <link rel="stylesheet" href="tailwind/dist/css/app.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<!-- END: Head -->
<body>

<div class="enigma py-5 px-5 md:py-0 sm:px-8 md:px-0 before:content-[''] before:bg-gradient-to-b before:from-theme-1 before:to-theme-2 dark:before:from-darkmode-800 dark:before:to-darkmode-800 md:before:bg-none md:bg-slate-200 md:dark:bg-darkmode-800 before:fixed before:inset-0 before:z-[-1]">
    <!-- BEGIN: Mobile Menu -->
    <div class="mobile-menu group top-0 inset-x-0 fixed bg-theme-1/90 z-[60] border-b border-white/[0.08] dark:bg-darkmode-800/90 md:hidden before:content-[''] before:w-full before:h-screen before:z-10 before:fixed before:inset-x-0 before:bg-black/90 before:transition-opacity before:duration-200 before:ease-in-out before:invisible before:opacity-0 [&.mobile-menu--active]:before:visible [&.mobile-menu--active]:before:opacity-100">
        <div class="flex h-[70px] items-center px-3 sm:px-8">
            <a class="mr-auto flex" href="dashboard.jsp">
                <img class="w-6" src="images/logo.png" alt="TogashiCoder">
            </a>
            <a class="mobile-menu-toggler" href="dashboard.jsp">
                <i data-tw-merge="" data-lucide="bar-chart2" class="stroke-1.5 h-8 w-8 -rotate-90 transform text-white"></i>
            </a>
        </div>
        <div class="scrollable h-screen z-20 top-0 left-0 w-[270px] -ml-[100%] bg-primary transition-all duration-300 ease-in-out dark:bg-darkmode-800 [&[data-simplebar]]:fixed [&_.simplebar-scrollbar]:before:bg-black/50 group-[.mobile-menu--active]:ml-0">
            <a href="#" class="fixed top-0 right-0 mt-4 mr-4 transition-opacity duration-200 ease-in-out invisible opacity-0 group-[.mobile-menu--active]:visible group-[.mobile-menu--active]:opacity-100">
                <i data-tw-merge="" data-lucide="x-circle" class="stroke-1.5 mobile-menu-toggler h-8 w-8 -rotate-90 transform text-white"></i>
            </a>

        </div>
    </div>
    <!-- END: Mobile Menu -->
    <!-- BEGIN: Top Bar -->
    <div class="h-[70px] md:h-[65px] z-[51] border-b border-white/[0.08] mt-12 md:mt-0 -mx-5 sm:-mx-8 md:-mx-0 px-3 md:border-b-0 relative md:fixed md:inset-x-0 md:top-0 sm:px-8 md:px-10 md:pt-10 md:bg-gradient-to-b md:from-slate-100 md:to-transparent dark:md:from-darkmode-700 dark:md:from-darkmode-800 before:content-[''] before:absolute before:h-[65px] before:inset-0 before:top-0 before:mx-7 before:bg-primary/30 before:mt-3 before:rounded-xl before:hidden before:md:block before:dark:bg-darkmode-600/30 after:content-[''] after:absolute after:inset-0 after:h-[65px] after:mx-3 after:bg-primary after:mt-5 after:rounded-xl after:shadow-md after:hidden after:md:block after:dark:bg-darkmode-600">
        <div class="flex h-full items-center">
            <!-- BEGIN: Logo -->
            <a href="#" class="-intro-x hidden md:flex w-auto">
                <img class="w-6" src="images/logo.png" alt="TogashiCoder">
                <span class="ml-3 text-lg text-white">
                            Skyline
                        </span>
            </a>
            <!-- END: Logo -->
            <!-- BEGIN: Breadcrumb -->
            <nav aria-label="breadcrumb" class="flex h-[45px] md:ml-10 md:border-l border-white/[0.08] dark:border-white/[0.08] mr-auto -intro-x md:pl-10">
                <ol class="flex items-center text-theme-1 dark:text-slate-300 text-white/90">
                    <li class="">
                        <a href="dashboard.jsp">Dashboard</a>
                    </li>
                    <li class="relative ml-5 pl-0.5 before:content-[''] before:w-[14px] before:h-[14px] before:bg-chevron-white before:transform before:rotate-[-90deg] before:bg-[length:100%] before:-ml-[1.125rem] before:absolute before:my-auto before:inset-y-0 dark:before:bg-chevron-white text-white/70">
                        <a href="addTask.jsp">Tasks</a>
                    </li>
                </ol>
            </nav>
            <!-- END: Breadcrumb -->


            <!-- BEGIN: Account Menu -->
            <div data-tw-merge="" data-tw-placement="bottom-end" class="dropdown relative"><button data-tw-toggle="dropdown" aria-expanded="false" class="cursor-pointer image-fit zoom-in intro-x block h-8 w-8 scale-110 overflow-hidden rounded-full shadow-lg"><img src="tailwind/dist/images/fakers/profile-12.jpg" alt="Midone Tailwind HTML Admin Template">
            </button>
                <div data-transition="" data-selector=".show" data-enter="transition-all ease-linear duration-150" data-enter-from="absolute !mt-5 invisible opacity-0 translate-y-1" data-enter-to="!mt-1 visible opacity-100 translate-y-0" data-leave="transition-all ease-linear duration-150" data-leave-from="!mt-1 visible opacity-100 translate-y-0" data-leave-to="absolute !mt-5 invisible opacity-0 translate-y-1" class="dropdown-menu absolute z-[9999] hidden">
                    <div data-tw-merge="" class="dropdown-content rounded-md border-transparent p-2 shadow-[0px_3px_10px_#00000017] dark:border-transparent dark:bg-darkmode-600 relative mt-px w-56 bg-theme-1/80 text-white before:absolute before:inset-0 before:z-[-1] before:block before:rounded-md before:bg-black">
                        <div class="p-2 font-medium font-normal">
                            <div class="font-medium">Taoufik</div>
                            <div class="mt-0.5 text-xs text-white/70 dark:text-slate-500">
                                Manager
                            </div>
                        </div>
                        <div class="h-px my-2 -mx-2 bg-slate-200/60 dark:bg-darkmode-400 bg-white/[0.08]">
                        </div>
                        <a href="#" class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item hover:bg-white/5"><i data-tw-merge="" data-lucide="user" class="stroke-1.5 mr-2 h-4 w-4"></i>
                            Profile
                        </a>
                        <div class="h-px my-2 -mx-2 bg-slate-200/60 dark:bg-darkmode-400 bg-white/[0.08]">
                        </div>
                        <a href="#" class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item hover:bg-white/5"><i data-tw-merge="" data-lucide="toggle-right" class="stroke-1.5 mr-2 h-4 w-4"></i>
                            Logout</a>
                    </div>
                </div>
            </div>
            <!-- END: Account Menu -->
        </div>
    </div>
    <!-- END: Top Bar -->

    <!-- BEGIN: Content -->
    <div class="max-w-full md:max-w-none rounded-[30px] md:rounded-[35px_35px_0_0] px-4 md:px-[22px] min-w-0 min-h-screen bg-slate-100 flex-1 pb-10 mt-5 relative dark:bg-darkmode-700 before:content-[''] before:w-full before:h-px before:block">
        <h2 class="intro-y mt-10 text-lg font-medium">Task Layout</h2>
        <div class="mt-5 grid grid-cols-12 gap-6">
            <div class="intro-y col-span-12 mt-2 flex flex-wrap items-center sm:flex-nowrap">
                <button data-tw-merge="" class="transition duration-200 border inline-flex items-center justify-center py-2 px-3 rounded-md font-medium cursor-pointer focus:ring-4 focus:ring-primary focus:ring-opacity-20 focus-visible:outline-none dark:focus:ring-slate-700 dark:focus:ring-opacity-50 [&:hover:not(:disabled)]:bg-opacity-90 [&:hover:not(:disabled)]:border-opacity-90 [&:not(button)]:text-center disabled:opacity-70 disabled:cursor-not-allowed bg-primary border-primary text-white dark:border-primary mr-2 shadow-md">Add New Task</button>
                <div data-tw-merge="" data-tw-placement="bottom-end" class="dropdown relative"><button data-tw-merge="" data-tw-toggle="dropdown" aria-expanded="false" class="transition duration-200 border shadow-sm inline-flex items-center justify-center py-2 rounded-md font-medium cursor-pointer focus:ring-4 focus:ring-primary focus:ring-opacity-20 focus-visible:outline-none dark:focus:ring-slate-700 dark:focus:ring-opacity-50 [&:hover:not(:disabled)]:bg-opacity-90 [&:hover:not(:disabled)]:border-opacity-90 [&:not(button)]:text-center disabled:opacity-70 disabled:cursor-not-allowed !box px-2"><span class="flex h-5 w-5 items-center justify-center">
                                    <i data-tw-merge="" data-lucide="plus" class="stroke-1.5 h-4 w-4"></i>
                                </span></button>
                    <div data-transition="" data-selector=".show" data-enter="transition-all ease-linear duration-150" data-enter-from="absolute !mt-5 invisible opacity-0 translate-y-1" data-enter-to="!mt-1 visible opacity-100 translate-y-0" data-leave="transition-all ease-linear duration-150" data-leave-from="!mt-1 visible opacity-100 translate-y-0" data-leave-to="absolute !mt-5 invisible opacity-0 translate-y-1" class="dropdown-menu absolute z-[9999] hidden">
                        <div data-tw-merge="" class="dropdown-content rounded-md border-transparent bg-white p-2 shadow-[0px_3px_10px_#00000017] dark:border-transparent dark:bg-darkmode-600 w-40">
                            <form action="addTask.jsp" method="get" style="display: inline-block">
                                <input type="hidden" name="action" value="addTask">
                                <input type="hidden" name="TheProjectId" value="${project.id}">
                                <button type="submit" style="border: none; background: none; padding: 0; cursor: pointer;" class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item">
                                    Add Task
                                </button>
                            </form>

                        </div>
                    </div>
                </div>
                <div class="mx-auto hidden text-slate-500 md:block">
                    TogashiCoder
                </div>
                <div class="mt-3 w-full sm:ml-auto sm:mt-0 sm:w-auto md:ml-0">
                    <div class="relative w-56 text-slate-500">
                        <form action="">
                            <input data-tw-merge="" type="text" placeholder="Search..." class="disabled:bg-slate-100 disabled:cursor-not-allowed dark:disabled:bg-darkmode-800/50 dark:disabled:border-transparent [&[readonly]]:bg-slate-100 [&[readonly]]:cursor-not-allowed [&[readonly]]:dark:bg-darkmode-800/50 [&[readonly]]:dark:border-transparent transition duration-200 ease-in-out text-sm border-slate-200 shadow-sm rounded-md placeholder:text-slate-400/90 focus:ring-4 focus:ring-primary focus:ring-opacity-20 focus:border-primary focus:border-opacity-40 dark:bg-darkmode-800 dark:border-transparent dark:focus:ring-slate-700 dark:focus:ring-opacity-50 dark:placeholder:text-slate-500/80 group-[.form-inline]:flex-1 group-[.input-group]:rounded-none group-[.input-group]:[&:not(:first-child)]:border-l-transparent group-[.input-group]:first:rounded-l group-[.input-group]:last:rounded-r group-[.input-group]:z-10 !box w-56 pr-10">
                            <i data-tw-merge="" data-lucide="search" class="stroke-1.5 absolute inset-y-0 right-0 my-auto mr-3 h-4 w-4"></i>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Start of Task div -->
            <c:forEach items="${tasks}" var="task">
            <div class="intro-y col-span-12 md:col-span-6 lg:col-span-4">
                <div class="box">
                    <div class="flex items-start px-5 pt-5">
                        <div class="flex w-full flex-col items-center lg:flex-row">
                            <div class="image-fit h-16 w-16">
                                <img class="rounded-full" src="images/planning.png" alt="TogashiCoder">
                            </div>
                            <div class="mt-3 text-center lg:ml-4 lg:mt-0 lg:text-left">
                                <a class="font-medium" href="#">
                                    <!-- Project Name -->
                                    <c:out value="${project.name}"/>
                                </a>
                                <div class="mt-0.5 text-xs text-slate-500">
                                    <i style="display: inline;" data-tw-merge="" data-lucide="check-square" class="stroke-1.5 mr-2 h-4 w-4">
                                    </i>
                                    <!-- Task status -->
                                    <c:out value="${task.status}"/>
                                </div>
                            </div>
                        </div>
                        <div data-tw-merge="" data-tw-placement="bottom-end" class="dropdown absolute right-0 top-0 mr-5 mt-3"><button data-tw-toggle="dropdown" aria-expanded="false" class="cursor-pointer block h-5 w-5" tag="a"><i data-tw-merge="" data-lucide="more-horizontal" class="stroke-1.5 w-5 h-5 text-slate-500"></i>
                        </button>
                            <div data-transition="" data-selector=".show" data-enter="transition-all ease-linear duration-150" data-enter-from="absolute !mt-5 invisible opacity-0 translate-y-1" data-enter-to="!mt-1 visible opacity-100 translate-y-0" data-leave="transition-all ease-linear duration-150" data-leave-from="!mt-1 visible opacity-100 translate-y-0" data-leave-to="absolute !mt-5 invisible opacity-0 translate-y-1" class="dropdown-menu absolute z-[9999] hidden">
                                <div data-tw-merge="" class="dropdown-content rounded-md border-transparent bg-white p-2 shadow-[0px_3px_10px_#00000017] dark:border-transparent dark:bg-darkmode-600 w-40">
                                    <a class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item"><i data-tw-merge="" data-lucide="edit" class="stroke-1.5 mr-2 h-4 w-4"></i>
                                        <form action="Tasks" method="get">
                                            <input type="hidden" name="action" value="update">
                                            <input type="hidden" name="TheTaskId" value="${task.id}">
                                            <input type="hidden" name="TheProjectId" value="${project.id}">
                                            <button type="submit" class="mr-3 flex items-center">
                                                Edit
                                            </button>
                                        </form>
                                    </a>
                                    <a class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item"><i data-tw-merge="" data-lucide="trash" class="stroke-1.5 mr-2 h-4 w-4"></i>
                                        <form action="Tasks" method="get">
                                            <input type="hidden" name="action" value="delete">
                                            <input type="hidden" name="TheTaskId" value="${task.id}">
                                            <input type="hidden" name="TheProjectId" value="${project.id}">
                                            <button type="submit" class="flex items-center text-danger" data-tw-toggle="modal" data-tw-target="#delete-confirmation-modal">
                                                Delete
                                            </button>
                                        </form>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="p-5 text-center lg:text-left">
                        <div>
                            <!-- Description   -->
                            <c:out value="${task.description}"/>
                        </div>
                        <div class="mt-5 flex items-center justify-center text-slate-500 lg:justify-start">
                            <i class="fa-solid fa-calendar-days"></i>
                            <span style="margin-left: 8px;">
                             <!-- Star date -->
                                <c:out value="${task.startDate}"/>
                            </span>
                        </div>
                        <div class="mt-1 flex items-center justify-center text-slate-500 lg:justify-start">
                            <i class="fa-solid fa-calendar-days"></i>
                            <span style="margin-left: 8px;">
                             <!-- end date -->
                                <c:out value="${task.endDate}"/>
                            </span>
                        </div>
                    </div>
                    <div class="border-t border-slate-200/60 p-5 text-center dark:border-darkmode-400 lg:text-right">
                        <form action="resourceServ" method="get">
                            <input type="hidden" name="action" value="display">
                            <input type="hidden" name="TheTaskId" value="${task.id}">
                            <button type="submit">
                                Show resources
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            </c:forEach>
            <!-- End of Task div -->
        </div>
    </div>
    <!-- END: Content -->
</div>
<script src="tailwind/dist/js/vendors/dom.js"></script>
<script src="tailwind/dist/js/vendors/tailwind-merge.js"></script>
<script src="tailwind/dist/js/vendors/lucide.js"></script>
<script src="tailwind/dist/js/vendors/popper.js"></script>
<script src="tailwind/dist/js/vendors/dropdown.js"></script>
<script src="tailwind/dist/js/vendors/transition.js"></script>
<script src="tailwind/dist/js/vendors/simplebar.js"></script>
<script src="tailwind/dist/js/vendors/modal.js"></script>
<script src="tailwind/dist/js/components/base/theme-color.js"></script>
<script src="tailwind/dist/js/components/base/lucide.js"></script>
<script src="tailwind/dist/js/components/mobile-menu.js"></script>
<script src="tailwind/dist/js/components/themes/enigma/top-bar.js"></script>
</body>
</html>
