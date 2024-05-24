<%--
  Created by IntelliJ IDEA.
  User: Taoufik
  Date: 5/21/2024
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Projects |</title>
    <link rel="stylesheet" href="tailwind/dist/css/vendors/tippy.css" />
    <link rel="stylesheet" href="tailwind/dist/css/themes/tinker/top-nav.css" />
    <link rel="stylesheet" href="tailwind/dist/css/vendors/simplebar.css" />
    <link rel="stylesheet" href="tailwind/dist/css/components/mobile-menu.css" />
    <link rel="stylesheet" href="tailwind/dist/css/app.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
</div>
<div
        class="tinker md:bg-black/[0.15] dark:bg-transparent relative py-5 px-5 md:py-0 sm:px-8 md:px-0 after:content-[''] after:bg-gradient-to-b after:from-theme-1 after:to-theme-2 dark:after:from-darkmode-800 dark:after:to-darkmode-800 after:fixed after:inset-0 after:z-[-2]">
    <!-- BEGIN: Mobile Menu -->
    <div
            class="mobile-menu group top-0 inset-x-0 fixed bg-theme-1/90 z-[60] border-b border-white/[0.08] dark:bg-darkmode-800/90 md:hidden before:content-[''] before:w-full before:h-screen before:z-10 before:fixed before:inset-x-0 before:bg-black/90 before:transition-opacity before:duration-200 before:ease-in-out before:invisible before:opacity-0 [&.mobile-menu--active]:before:visible [&.mobile-menu--active]:before:opacity-100">
        <div class="flex h-[70px] items-center px-3 sm:px-8">
            <a class="mr-auto flex" href="#">
                <img class="w-6" src="dist/images/logo.svg" alt="Midone - Tailwind Admin Dashboard Template" />
            </a>
            <a class="mobile-menu-toggler" href="#">
                <i data-tw-merge="" data-lucide="bar-chart2"
                   class="stroke-1.5 h-8 w-8 -rotate-90 transform text-white"></i>
            </a>
        </div>
        <div
                class="scrollable h-screen z-20 top-0 left-0 w-[270px] -ml-[100%] bg-primary transition-all duration-300 ease-in-out dark:bg-darkmode-800 [&[data-simplebar]]:fixed [&_.simplebar-scrollbar]:before:bg-black/50 group-[.mobile-menu--active]:ml-0">
            <a href="#"
               class="fixed top-0 right-0 mt-4 mr-4 transition-opacity duration-200 ease-in-out invisible opacity-0 group-[.mobile-menu--active]:visible group-[.mobile-menu--active]:opacity-100">
                <i data-tw-merge="" data-lucide="x-circle"
                   class="stroke-1.5 mobile-menu-toggler h-8 w-8 -rotate-90 transform text-white"></i>
            </a>
        </div>
    </div>
    <!-- END: Mobile Menu -->


    <!-- BEGIN: Top Bar -->
    <div class="relative z-[51] -mx-5 mb-10 mt-12 h-[70px] border-b border-white/[0.08] px-4 sm:-mx-8 sm:px-8 md:mx-0 md:mb-8 md:mt-0 md:px-6">
        <div class="flex h-full items-center">
            <!-- BEGIN: Logo -->
            <a href="dashboard.jsp" class="-intro-x hidden md:flex">
                <img class="w-6" src="images/logo.png" alt="TogashiCoder" />
                <span class="ml-3 text-lg text-white"> Skyline </span>
            </a>
            <!-- END: Logo -->

            <!-- BEGIN: Breadcrumb -->
            <nav aria-label="breadcrumb"
                 class="flex -intro-x mr-auto h-full border-white/[0.08] md:ml-10 md:border-l md:pl-10">
                <ol class="flex items-center text-theme-1 dark:text-slate-300 text-white/90">
                    <li class="">
                        <a href="dashboard.jsp">Dashboard</a>
                    </li>
                    <li
                            class="relative ml-5 pl-0.5 before:content-[''] before:w-[14px] before:h-[14px] before:bg-chevron-white before:transform before:rotate-[-90deg] before:bg-[length:100%] before:-ml-[1.125rem] before:absolute before:my-auto before:inset-y-0 dark:before:bg-chevron-white text-white/70">
                        <a href="Projects.jsp">Projects</a>
                    </li>
                </ol>
            </nav>
            <!-- END: Breadcrumb -->


            <!-- BEGIN: Account Menu -->
            <div data-tw-merge="" data-tw-placement="bottom-end" class="dropdown relative">
                <button data-tw-toggle="dropdown" aria-expanded="false" class="cursor-pointer image-fit zoom-in intro-x block h-8 w-8 scale-110 overflow-hidden rounded-full shadow-lg">
                    <img src="tailwind/dist/images/fakers/profile-8.jpg" alt="Admin image" />
                </button>
                <div data-transition="" data-selector=".show" data-enter="transition-all ease-linear duration-150"
                     data-enter-from="absolute !mt-5 invisible opacity-0 translate-y-1"
                     data-enter-to="!mt-1 visible opacity-100 translate-y-0"
                     data-leave="transition-all ease-linear duration-150"
                     data-leave-from="!mt-1 visible opacity-100 translate-y-0"
                     data-leave-to="absolute !mt-5 invisible opacity-0 translate-y-1"
                     class="dropdown-menu absolute z-[9999] hidden">
                    <div data-tw-merge=""
                         class="dropdown-content rounded-md border-transparent p-2 shadow-[0px_3px_10px_#00000017] dark:border-transparent dark:bg-darkmode-600 relative mt-px w-56 bg-primary/80 text-white before:absolute before:inset-0 before:z-[-1] before:block before:rounded-md before:bg-black">
                        <div class="p-2 font-medium font-normal">
                            <div class="font-medium">Taoufik</div>
                            <div class="mt-0.5 text-xs text-white/70 dark:text-slate-500">
                                Manager
                            </div>
                        </div>
                        <div class="h-px my-2 -mx-2 bg-slate-200/60 dark:bg-darkmode-400 bg-white/[0.08]"></div>
                        <a href="#" class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item hover:bg-white/5"><i data-tw-merge="" data-lucide="user" class="stroke-1.5 mr-2 h-4 w-4"></i>
                            Profile
                        </a>
                        <div class="h-px my-2 -mx-2 bg-slate-200/60 dark:bg-darkmode-400 bg-white/[0.08]"></div>
                        <a href="#" class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item hover:bg-white/5"><i
                                data-tw-merge="" data-lucide="toggle-right" class="stroke-1.5 mr-2 h-4 w-4"></i>
                            Logout
                        </a>

                    </div>
                </div>
            </div>
            <!-- END: Account Menu -->
        </div>
    </div>
    <!-- END: Top Bar -->

    <!-- BEGIN: Content -->
    <div
            class="rounded-[30px] md:rounded-[35px_35px_0px_0px] min-w-0 min-h-screen max-w-full md:max-w-none bg-slate-100 flex-1 pb-10 px-4 md:px-6 relative mt-8 dark:bg-darkmode-700 before:content-[''] before:w-full before:h-px before:block after:content-[''] after:z-[-1] after:rounded-[40px_40px_0px_0px] after:w-[97%] after:inset-y-0 after:absolute after:left-0 after:right-0 after:bg-white/10 after:-mt-4 after:mx-auto after:dark:bg-darkmode-400/50">
        <h2 class="intro-y mt-10 text-lg font-medium">Project List</h2>
        <div class="mt-5 grid grid-cols-12 gap-6">
            <div class="intro-y col-span-12 mt-2 flex flex-wrap items-center xl:flex-nowrap">

                <!-- add new project -->

                <button data-tw-merge="" class="transition duration-200 border inline-flex items-center justify-center py-2 px-3 rounded-md font-medium cursor-pointer focus:ring-4 focus:ring-primary focus:ring-opacity-20 focus-visible:outline-none dark:focus:ring-slate-700 dark:focus:ring-opacity-50 [&:hover:not(:disabled)]:bg-opacity-90 [&:hover:not(:disabled)]:border-opacity-90 [&:not(button)]:text-center disabled:opacity-70 disabled:cursor-not-allowed bg-primary border-primary text-white dark:border-primary mr-2 shadow-md">
                    <a href="AddProject.jsp">Add New Project</a>
                </button>
                <div data-tw-merge="" data-tw-placement="bottom-end" class="dropdown relative">
                    <button data-tw-merge="" data-tw-toggle="dropdown" aria-expanded="false"
                            class="transition duration-200 border shadow-sm inline-flex items-center justify-center py-2 rounded-md font-medium cursor-pointer focus:ring-4 focus:ring-primary focus:ring-opacity-20 focus-visible:outline-none dark:focus:ring-slate-700 dark:focus:ring-opacity-50 [&:hover:not(:disabled)]:bg-opacity-90 [&:hover:not(:disabled)]:border-opacity-90 [&:not(button)]:text-center disabled:opacity-70 disabled:cursor-not-allowed !box px-2">
                            <span class="flex h-5 w-5 items-center justify-center">
                                <i data-tw-merge="" data-lucide="plus" class="stroke-1.5 h-4 w-4"></i>
                            </span>
                    </button>
                    <div data-transition="" data-selector=".show"
                         data-enter="transition-all ease-linear duration-150"
                         data-enter-from="absolute !mt-5 invisible opacity-0 translate-y-1"
                         data-enter-to="!mt-1 visible opacity-100 translate-y-0"
                         data-leave="transition-all ease-linear duration-150"
                         data-leave-from="!mt-1 visible opacity-100 translate-y-0"
                         data-leave-to="absolute !mt-5 invisible opacity-0 translate-y-1"
                         class="dropdown-menu absolute z-[9999] hidden">
                        <div data-tw-merge=""
                             class="dropdown-content rounded-md border-transparent bg-white p-2 shadow-[0px_3px_10px_#00000017] dark:border-transparent dark:bg-darkmode-600 w-40">
                            <a
                                    class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item"><i
                                    data-tw-merge="" data-lucide="printer" class="stroke-1.5 mr-2 h-4 w-4"></i>
                                Print
                            </a>
                            <a
                                    class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item"><i
                                    data-tw-merge="" data-lucide="file-text" class="stroke-1.5 mr-2 h-4 w-4"></i>
                                Export to Excel
                            </a>
                            <a
                                    class="cursor-pointer flex items-center p-2 transition duration-300 ease-in-out rounded-md hover:bg-slate-200/60 dark:bg-darkmode-600 dark:hover:bg-darkmode-400 dropdown-item"><i
                                    data-tw-merge="" data-lucide="file-text" class="stroke-1.5 mr-2 h-4 w-4"></i>
                                Export to PDF
                            </a>
                        </div>
                    </div>
                </div>
                <div class="mx-auto hidden text-slate-500 xl:block">
                    TogashiCoder
                </div>
                <div class="mt-3 flex w-full items-center xl:mt-0 xl:w-auto">
                    <div class="relative w-56 text-slate-500">
                        <input data-tw-merge="" type="text" placeholder="Search..."
                               class="disabled:bg-slate-100 disabled:cursor-not-allowed dark:disabled:bg-darkmode-800/50 dark:disabled:border-transparent [&[readonly]]:bg-slate-100 [&[readonly]]:cursor-not-allowed [&[readonly]]:dark:bg-darkmode-800/50 [&[readonly]]:dark:border-transparent transition duration-200 ease-in-out text-sm border-slate-200 shadow-sm rounded-md placeholder:text-slate-400/90 focus:ring-4 focus:ring-primary focus:ring-opacity-20 focus:border-primary focus:border-opacity-40 dark:bg-darkmode-800 dark:border-transparent dark:focus:ring-slate-700 dark:focus:ring-opacity-50 dark:placeholder:text-slate-500/80 group-[.form-inline]:flex-1 group-[.input-group]:rounded-none group-[.input-group]:[&:not(:first-child)]:border-l-transparent group-[.input-group]:first:rounded-l group-[.input-group]:last:rounded-r group-[.input-group]:z-10 !box w-56 pr-10" />
                        <i data-tw-merge="" data-lucide="search"
                           class="stroke-1.5 absolute inset-y-0 right-0 my-auto mr-3 h-4 w-4"></i>
                    </div>
                    <select data-tw-merge=""
                            class="disabled:bg-slate-100 disabled:cursor-not-allowed disabled:dark:bg-darkmode-800/50 [&[readonly]]:bg-slate-100 [&[readonly]]:cursor-not-allowed [&[readonly]]:dark:bg-darkmode-800/50 transition duration-200 ease-in-out text-sm border-slate-200 shadow-sm rounded-md py-2 px-3 pr-8 focus:ring-4 focus:ring-primary focus:ring-opacity-20 focus:border-primary focus:border-opacity-40 dark:bg-darkmode-800 dark:border-transparent dark:focus:ring-slate-700 dark:focus:ring-opacity-50 group-[.form-inline]:flex-1 !box ml-2 w-56 xl:w-auto">
                        <option>Status</option>
                        <option>Active</option>
                        <option>Inactive</option>
                    </select>
                </div>
            </div>
            <!-- BEGIN: Project List -->
            <div class="intro-y col-span-12 overflow-auto 2xl:overflow-visible">
                <table data-tw-merge="" class="w-full text-left -mt-2 border-separate border-spacing-y-[10px]">
                    <thead data-tw-merge="" class="">
                    <tr data-tw-merge="" class="">
                        <th data-tw-merge=""
                            class="font-medium px-5 py-3 dark:border-darkmode-300 whitespace-nowrap border-b-0">
                            <input data-tw-merge="" type="checkbox"
                                   class="transition-all duration-100 ease-in-out shadow-sm border-slate-200 cursor-pointer rounded focus:ring-4 focus:ring-offset-0 focus:ring-primary focus:ring-opacity-20 dark:bg-darkmode-800 dark:border-transparent dark:focus:ring-slate-700 dark:focus:ring-opacity-50 [&[type='radio']]:checked:bg-primary [&[type='radio']]:checked:border-primary [&[type='radio']]:checked:border-opacity-10 [&[type='checkbox']]:checked:bg-primary [&[type='checkbox']]:checked:border-primary [&[type='checkbox']]:checked:border-opacity-10 [&:disabled:not(:checked)]:bg-slate-100 [&:disabled:not(:checked)]:cursor-not-allowed [&:disabled:not(:checked)]:dark:bg-darkmode-800/50 [&:disabled:checked]:opacity-70 [&:disabled:checked]:cursor-not-allowed [&:disabled:checked]:dark:bg-darkmode-800/50" />
                        </th>
                        <th data-tw-merge=""class="font-medium px-5 py-3 dark:border-darkmode-300 whitespace-nowrap border-b-0">
                            Project Name
                        </th>
                        <th data-tw-merge=""class="font-medium px-5 py-3 dark:border-darkmode-300 whitespace-nowrap border-b-0 text-center">
                            Description
                        </th>
                        <th data-tw-merge=""class="font-medium px-5 py-3 dark:border-darkmode-300 whitespace-nowrap border-b-0 text-center">
                            StartDate
                        </th>
                        <th data-tw-merge=""class="font-medium px-5 py-3 dark:border-darkmode-300 whitespace-nowrap border-b-0 text-center">
                            EndDate
                        </th>
                        <th data-tw-merge=""class="font-medium px-5 py-3 dark:border-darkmode-300 whitespace-nowrap border-b-0 text-center">
                            Budget
                        </th>
                        <th data-tw-merge=""class="font-medium px-5 py-3 dark:border-darkmode-300 whitespace-nowrap border-b-0 text-center">
                            STATUS
                        </th>
                        <th data-tw-merge=""class="font-medium px-5 py-3 dark:border-darkmode-300 whitespace-nowrap border-b-0 text-center">
                            ACTIONS
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- start project div  -->
        <c:forEach items="${projects}" var="project">
                    <tr data-tw-merge="" class="intro-x">
                        <td data-tw-merge=""
                            class="px-5 py-5 border-b dark:border-darkmode-300 box w-10 whitespace-nowrap rounded-l-none rounded-r-none border-x-0 shadow-[5px_3px_5px_#00000005] first:rounded-l-[0.6rem] first:border-l last:rounded-r-[0.6rem] last:border-r dark:bg-darkmode-600">
                            <input data-tw-merge="" type="checkbox"
                                   class="transition-all duration-100 ease-in-out shadow-sm border-slate-200 cursor-pointer rounded focus:ring-4 focus:ring-offset-0 focus:ring-primary focus:ring-opacity-20 dark:bg-darkmode-800 dark:border-transparent dark:focus:ring-slate-700 dark:focus:ring-opacity-50 [&[type='radio']]:checked:bg-primary [&[type='radio']]:checked:border-primary [&[type='radio']]:checked:border-opacity-10 [&[type='checkbox']]:checked:bg-primary [&[type='checkbox']]:checked:border-primary [&[type='checkbox']]:checked:border-opacity-10 [&:disabled:not(:checked)]:bg-slate-100 [&:disabled:not(:checked)]:cursor-not-allowed [&:disabled:not(:checked)]:dark:bg-darkmode-800/50 [&:disabled:checked]:opacity-70 [&:disabled:checked]:cursor-not-allowed [&:disabled:checked]:dark:bg-darkmode-800/50" />
                        </td>
                        <td data-tw-merge=""
                            class="px-5 py-3 border-b dark:border-darkmode-300 box whitespace-nowrap rounded-l-none rounded-r-none border-x-0 !py-3.5 shadow-[5px_3px_5px_#00000005] first:rounded-l-[0.6rem] first:border-l last:rounded-r-[0.6rem] last:border-r dark:bg-darkmode-600">
                            <div class="flex items-center">
                                <div class="image-fit zoom-in h-9 w-9">
                                    <img data-placement="top" title="Uploaded at 22 September 2020"
                                         src="tailwind/dist/images/fakers/preview-12.jpg"
                                         alt="Midone - Tailwind Admin Dashboard Template"
                                         class="tooltip cursor-pointer rounded-lg border-white shadow-[0px_0px_0px_2px_#fff,_1px_1px_5px_rgba(0,0,0,0.32)] dark:shadow-[0px_0px_0px_2px_#3f4865,_1px_1px_5px_rgba(0,0,0,0.32)]" />
                                </div>
                                <div class="ml-4">
                                    <a class="whitespace-nowrap font-medium" href="#">
                                        <!-- NAME: PROJECT -->
                                        <c:out value="${project.name}"/>
                                    </a>
                                    <div class="mt-0.5 whitespace-nowrap text-xs text-slate-500">
                                        <form action="Tasks" method="get" style="display: inline-block">
                                            <input type="hidden" name="action" value="display">
                                            <input type="hidden" name="TheProjectId" value="${project.id}">
                                            Tasks:
                                            <button type="submit" style="border: none; background: none; padding: 0; cursor: pointer;">
                                                <i class="fa-solid fa-eye"
                                                   style="font-size: 15px; margin-right: 5px; transition: transform 0.3s, color 0.3s;"
                                                   onmouseover="this.style.transform='scale(1.2)'; this.style.color='#1A3693';"
                                                   onmouseout="this.style.transform='scale(1)'; this.style.color='';">
                                                </i>
                                            </button>
                                        </form>
                                        <form action="addTask.jsp" method="get" style="display: inline-block">
                                            <input type="hidden" name="action" value="addTask">
                                            <input type="hidden" name="TheProjectId" value="${project.id}">
                                            <button type="submit" style="border: none; background: none; padding: 0; cursor: pointer;">
                                                <i class="fa-solid fa-plus" style="font-size: 15px; margin-right: 5px; transition: transform 0.3s, color 0.3s;"
                                                   onmouseover="this.style.transform='scale(1.2)'; this.style.color='#a7e8a3';"
                                                   onmouseout="this.style.transform='scale(1)'; this.style.color='';">
                                                </i>
                                            </button>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </td>
                        <td data-tw-merge=""
                            class="px-5 py-3 border-b dark:border-darkmode-300 box whitespace-nowrap rounded-l-none rounded-r-none border-x-0 shadow-[5px_3px_5px_#00000005] first:rounded-l-[0.6rem] first:border-l last:rounded-r-[0.6rem] last:border-r dark:bg-darkmode-600">
                            <a class="flex items-center justify-center underline decoration-dotted" href="#">
                                <!-- Description  -->
                                <c:out value="${project.description}"/>
                            </a>
                        </td>
                        <td data-tw-merge=""
                            class="px-5 py-3 border-b dark:border-darkmode-300 box whitespace-nowrap rounded-l-none rounded-r-none border-x-0 text-center shadow-[5px_3px_5px_#00000005] first:rounded-l-[0.6rem] first:border-l last:rounded-r-[0.6rem] last:border-r dark:bg-darkmode-600">
                            <!-- StartDate -->
                            <c:out value="${project.startDate}"/>
                        </td>
                        <td data-tw-merge=""
                            class="px-5 py-3 border-b dark:border-darkmode-300 box whitespace-nowrap rounded-l-none rounded-r-none border-x-0 text-center shadow-[5px_3px_5px_#00000005] first:rounded-l-[0.6rem] first:border-l last:rounded-r-[0.6rem] last:border-r dark:bg-darkmode-600">
                            <!-- EndDate -->
                            <c:out value="${project.endDate}"/>
                        </td>

                        <td data-tw-merge=""
                            class="px-5 py-3 border-b dark:border-darkmode-300 box whitespace-nowrap rounded-l-none rounded-r-none border-x-0 text-center shadow-[5px_3px_5px_#00000005] first:rounded-l-[0.6rem] first:border-l last:rounded-r-[0.6rem] last:border-r dark:bg-darkmode-600">
                            <!-- Budget-->
                            <c:out value="${project.budget}"/> <i class="fa-solid fa-dollar-sign" style="color: #63E6BE;"></i>
                        </td>
                        <td data-tw-merge=""
                            class="px-5 py-3 border-b dark:border-darkmode-300 box w-40 whitespace-nowrap rounded-l-none rounded-r-none border-x-0 shadow-[5px_3px_5px_#00000005] first:rounded-l-[0.6rem] first:border-l last:rounded-r-[0.6rem] last:border-r dark:bg-darkmode-600">
                            <div class="flex items-center justify-center text-success">
                                <i data-tw-merge="" data-lucide="check-square" class="stroke-1.5 mr-2 h-4 w-4"></i>
                                <!-- Status:Area -->
                                Active
                            </div>
                        </td>
                        <td data-tw-merge=""
                            class="px-5 py-3 border-b dark:border-darkmode-300 box w-56 rounded-l-none rounded-r-none border-x-0 shadow-[5px_3px_5px_#00000005] first:rounded-l-[0.6rem] first:border-l last:rounded-r-[0.6rem] last:border-r dark:bg-darkmode-600 before:absolute before:inset-y-0 before:left-0 before:my-auto before:block before:h-8 before:w-px before:bg-slate-200 before:dark:bg-darkmode-400">
                            <div class="flex items-center justify-center">
                                <form action="Project" method="get">
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="TheProjectId" value="${project.id}">
                                    <button type="submit" class="mr-3 flex items-center">
                                        <i data-tw-merge="" data-lucide="check-square" class="stroke-1.5 mr-1 h-4 w-4"></i>
                                        Edit
                                    </button>
                                </form>
                                <form action="Project" method="get">
                                    <input type="hidden" name="action" value="delete">
                                    <input type="hidden" name="TheProjectId" value="${project.id}">
                                    <button type="submit" class="flex items-center text-danger" data-tw-toggle="modal" data-tw-target="#delete-confirmation-modal">
                                        <i data-tw-merge="" data-lucide="trash" class="stroke-1.5 mr-1 h-4 w-4"></i>
                                        Delete
                                    </button>
                                </form>

                            </div>
                        </td>
                    </tr>
                    <!-- end  project div  -->
        </c:forEach>

                    </tbody>
                </table>
            </div>
            <!-- END: Data List -->
        </div>

    </div>
    <!-- END: Content -->
</div>
<script src="tailwind/dist/js/vendors/dom.js"></script>
<script src="tailwind/dist/js/vendors/tailwind-merge.js"></script>
<script src="tailwind/dist/js/vendors/lucide.js"></script>
<script src="tailwind/dist/js/vendors/popper.js"></script>
<script src="tailwind/dist/js/vendors/dropdown.js"></script>
<script src="tailwind/dist/js/vendors/tippy.js"></script>
<script src="tailwind/dist/js/vendors/modal.js"></script>
<script src="tailwind/dist/js/vendors/transition.js"></script>
<script src="tailwind/dist/js/vendors/simplebar.js"></script>
<script src="tailwind/dist/js/components/base/theme-color.js"></script>
<script src="tailwind/dist/js/components/base/lucide.js"></script>
<script src="tailwind/dist/js/components/base/tippy.js"></script>
<script src="tailwind/dist/js/components/themes/tinker/top-bar.js"></script>
<script src="tailwind/dist/js/components/mobile-menu.js"></script>
<!-- END: Vendor JS Assets-->
</body>

</html>
