// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
const open = document.querySelector(".open")
const close = document.querySelector(".close")
const overlay = document.querySelector(".overlay")
open.addEventListener('click', ()=>{
overlay.classList.add('show')
})

close.addEventListener('click', ()=>{
    overlay.classList.remove('show')
    })