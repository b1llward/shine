var app = angular.module(
  'customers',
  [
    'ngRoute',
    'ngResource',
    'ngMessages',
    'ui.bootstrap',
    'templates'
  ]
);

app.config([
          "$routeProvider",
  function($routeProvider) {

    // configure our routes here...

    $routeProvider.when("/", {
      controller: "CustomerSearchController",
      templateUrl: "customer_search.html"
    }).when("/:id",{
       controller: "CustomerDetailController",
      templateUrl: "customer_detail.html"
    });
  }
]);
