<%@ page import="com.syndic.beans.Syndic" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.syndic.beans.Member" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DASHBOARD</title>
    <link rel="shortcut icon" href="/Assets/images/logo.png" type="image/x-icon">
    <!---BOX ICON CDN-->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <!----STYLESHEET---->
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
    <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>

<body>
<div class="container">
    <div class="sidenav">
        <jsp:include page="templates/member_sidenav.jsp"/>
    </div>
    <main>

        <% Member member = (Member) session.getAttribute("member"); %>
        <div class="flex justify-between items-center p-6 bg-green-300 shadow-md border rounded-md">
            <h1 class="text-3xl font-bold text-gray-800">Property of <%= member.getFirstName() %> <%= member.getLastName() %> </h1>
            <div class="text-lg text-gray-600"><%=java.time.LocalDate.now()%></div>
        </div>
        <br><br><br>


        <div class="main-content flex flex-col p-6">
            <div class="recent-updates w-full">

                <% Syndic syndic = (Syndic) session.getAttribute("syndic"); %>
                <!------------MIDDLE ------------>
                <div class="main-content flex flex-col p-6">
                    <div class="recent-updates w-full">
                        <h1 class="text-3xl font-bold text-blue-600 mb-4">About Syndic: <%= syndic.getFirstName() %> <%= syndic.getLastName() %>  </h1>
                        <div class="form-container">

                                <!-- Syndic Information -->
                                <section class="py-1">
                                    <div class="w-full px-4 mx-auto mt-6">
                                        <div class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg bg-green-100 border-0">
                                            <div class="flex-auto px-4 lg:px-10 py-10 pt-0">
                                                <div class="text-center flex justify-between">
                                                    <h6 class="text-gray-700 text-xl font-bold m-4">
                                                        <i class="fas fa-info-circle fa-2x mr-2"></i>Informations Syndic
                                                    </h6>
                                                </div>
                                                <div class="flex flex-wrap">
                                                    <!-- First Name -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="firstname">
                                                                <i class="fas fa-user fa-2x mr-1"></i>First Name
                                                            </label>
                                                            <input type="text" id="firstname" name="firstname" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getFirstName() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Last Name -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="lastname">
                                                                <i class="fas fa-user fa-2x mr-1"></i>Last Name
                                                            </label>
                                                            <input type="text" id="lastname" name="lastname" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getLastName() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Postal Code -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="codepostal">
                                                                <i class="fas fa-map-marker-alt fa-2x mr-1"></i>Postal Code
                                                            </label>
                                                            <input type="text" id="codepostal" name="codepostal" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getCodepostal() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Phone Number -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="phonenumber">
                                                                <i class="fas fa-phone fa-2x mr-1"></i>Phone Number
                                                            </label>
                                                            <input type="text" id="phonenumber" name="phonenumber" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getPhoneNumber() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Full Address -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="fulladdress">
                                                                <i class="fas fa-address-card fa-2x mr-1"></i>Full Address
                                                            </label>
                                                            <input type="text" id="fulladdress" name="fulladdress" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getFulladdress() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- E-mail -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="mail">
                                                                <i class="fas fa-envelope fa-2x mr-1"></i>E-mail
                                                            </label>
                                                            <input type="text" id="mail" name="mail" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getMail() %>" readonly>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>


                            <h1 class="text-3xl font-bold text-blue-600 mb-4">About Residence: <%= syndic.getResidenceName() %> </h1>
                                <!-- Residence Information -->
                                <section class="py-1">
                                    <div class="w-full px-4 mx-auto mt-6">
                                        <div class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg bg-red-100 border-0">
                                            <div class="flex-auto px-4 lg:px-10 py-10 pt-0">
                                                <div class="text-center flex justify-between">
                                                    <h6 class="text-gray-700 text-xl font-bold m-4">
                                                        <i class="fas fa-home fa-2x mr-2"></i>About Residence
                                                    </h6>
                                                </div>
                                                <div class="flex flex-wrap">
                                                    <!-- Residence Name -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="residenceName">
                                                                <i class="fas fa-building fa-2x mr-1"></i>Residence Name
                                                            </label>
                                                            <input type="text" id="residenceName" name="residenceName" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getResidenceName() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Residence Address -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="residenceAddress">
                                                                <i class="fas fa-map-marker-alt fa-2x mr-1"></i>Residence Address
                                                            </label>
                                                            <input type="text" id="residenceAddress" name="residenceAddress" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getResidenceAddress() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Residence Type -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="residenceType">
                                                                <i class="fas fa-home fa-2x mr-1"></i>Residence Type
                                                            </label>
                                                            <input type="text" id="residenceType" name="residenceType" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getResidenceType() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Residence Size -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="residenceSize">
                                                                <i class="fas fa-ruler-combined fa-2x mr-1"></i>Residence Size (m²)
                                                            </label>
                                                            <input type="number" id="residenceSize" name="residenceSize" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getResidenceSize() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Number of Apartments -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="apartmentCount">
                                                                <i class="fas fa-building fa-2x mr-1"></i>Number of Apartments
                                                            </label>
                                                            <input type="number" id="apartmentCount" name="apartmentCount" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getApartmentCount() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Number of Villas -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="villaCount">
                                                                <i class="fas fa-home fa-2x mr-1"></i>Number of Villas
                                                            </label>
                                                            <input type="number" id="villaCount" name="villaCount" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getVillaCount() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Number of Gardens -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="gardenCount">
                                                                <i class="fas fa-leaf fa-2x mr-1"></i>Number of Gardens
                                                            </label>
                                                            <input type="number" id="gardenCount" name="gardenCount" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getGardenCount() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Number of Pools -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="poolCount">
                                                                <i class="fas fa-swimming-pool fa-2x mr-1"></i>Number of Pools
                                                            </label>
                                                            <input type="number" id="poolCount" name="poolCount" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getPoolCount() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Number of Parkings -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="parkingCount">
                                                                <i class="fas fa-parking fa-2x mr-1"></i>Number of Parkings
                                                            </label>
                                                            <input type="number" id="parkingCount" name="parkingCount" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getParkingCount() %>" readonly>
                                                        </div>
                                                    </div>
                                                    <!-- Number of Elevators -->
                                                    <div class="w-full lg:w-6/12 px-4">
                                                        <div class="relative w-full mb-3">
                                                            <label class="block uppercase text-gray-600 text-xs font-bold mb-2" for="elevatorsCount">
                                                                <i class="fas fa-elevator fa-2x mr-1"></i>Number of Elevators
                                                            </label>
                                                            <input type="number" id="elevatorsCount" name="elevatorsCount" class="border-0 px-3 py-3 placeholder-gray-300 text-gray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150" value="<%= syndic.getElevatorsCount() %>" readonly>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </section>
                        </div>
                    </div>
                </div>
        </div>
        </div>
        <!-------------END OF MIDDLE --------->
    </main>
    <!---------RIGHT--------->
    <div class="right">
        <!--------TOP-->
        <div class="top">
            <!---MENU ICON-->
            <button id="menu-btn">
                <i class='bx bx-menu'></i>
            </button>

            <!------LIGHT AND DARK THEME BUTTONS-->
            <div class="theme-toggle">
                <i class='bx bx-sun active'></i>
                <i class='bx bx-moon'></i>
            </div>
            <div class="profile">
                <div class="info">
                    <p>Hey, <b><%= ((Member) session.getAttribute("member")).getFirstName() %></b></p>
                    <small class="text-muted">Syndic</small>
                </div>
                <div class="profile-photo">
                    <img src="./Assets/images/profile-1.jpg" alt="Oluwadare Taye Ayo">
                </div>
            </div>
        </div>
        <!-------END OF TOP------>

        <!---------RECENT UPDATES------>
        <div class="recent-updates">
        </div>
        <!-------END OF RECENT UPDATES---->
        <!---------ANALYSE DES SYNDICS --------->
        <div class="sales-analytics">
            <h2>Analyse des Syndics</h2>

            <!-----NOUVEAUX SYNDICS ENREGISTRÉS----->
            <div class="item online">
                <i class='bx bx-user-plus'></i>
                <div class="right">
                    <div class="info">
                        <h3>NOUVEAUX SYNDICS ENREGISTRÉS</h3>
                        <small class="text-muted">Dernières 24 heures</small>
                    </div>
                    <h5 class="success">+38%</h5>
                    <h3>234</h3>
                </div>
            </div>

            <!-----SYNDICS ACTIFS----->
            <div class="item offline">
                <i class='bx bx-user'></i>
                <div class="right">
                    <div class="info">
                        <h3>SYNDICS ACTIFS</h3>
                        <small class="text-muted">Dernières 24 heures</small>
                    </div>
                    <h5 class="danger">-17%</h5>
                    <h3>1100</h3>
                </div>
            </div>

            <!-----NOUVELLES DEMANDES D'ADHÉSION----->
            <div class="item customers">
                <i class='bx bx-user-check'></i>
                <div class="right">
                    <div class="info">
                        <h3>NOUVELLES DEMANDES D'ADHÉSION</h3>
                        <small class="text-muted">Dernières 24 heures</small>
                    </div>
                    <h5 class="success">+25%</h5>
                    <h3>32</h3>
                </div>
            </div>
            <!----------AJOUTER UN NOUVEAU SYNDIC------->
            <div class="item add-product">
                <div>
                    <i class="bx-add"></i>
                    <a href="#"><h3>Ajouter un Nouveau Syndic</h3></a>
                </div>
            </div>

        </div>
        <!------FIN DE L'ANALYSE DES SYNDICS------->

    </div>
    <!---------END OF RIGHT------->
</div>
<script>
    document.getElementById("property").classList.add("active");
</script>
<script src="javascript/main.js"></script>
</body>
</html>
