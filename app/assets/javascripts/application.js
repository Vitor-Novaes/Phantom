// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery-3.2.1.min
//= require turbolinks
//= require_tree


document.addEventListener('DOMContentLoaded', function() {
  	// alert("Olá Mundo");

	var titulo_p = document.querySelector(".display-3");
	titulo_p.textContent = "Bem vindo a Comunidade de Players Phantom Black e-sports";
	
	var player = document.querySelector("#playerJS");
	var nome = document.querySelector("#nomeP");
	var nick = document.querySelector("#nickP");
	console.log(nome.textContent);
	console.log(nick.textContent);


});

