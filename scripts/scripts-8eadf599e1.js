"use strict";angular.module("ssorApp",["ngAnimate","ngAria","ngCookies","ngMessages","ngResource","ngRoute","ngSanitize","ngMaterial"]).config(["$routeProvider",function(e){e.when("/",{templateUrl:"views/main.html",controller:"MainCtrl",controllerAs:"Main"}).otherwise({redirectTo:"/"})}]),angular.module("ssorApp").controller("MainCtrl",function(){});