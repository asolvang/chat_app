import { Controller } from 'stimulus'
export default class extends Controller {
  static targets = ['account', 'messages']

  account() {
    hiddenToggler(this.accountTarget)
  }

  messages() {
    hiddenToggler(this.messagesTarget);
  }

}


// Reusable helper function
function hiddenToggler(el){
  el.classList.toggle("hidden")
  event.currentTarget.classList.toggle("bg-blue-500")
  event.currentTarget.classList.toggle("text-white")
  event.currentTarget.classList.toggle("text-blue-600")
  
  event.currentTarget.classList.toggle("hover:bg-blue-600")
  event.currentTarget.classList.toggle("hover:bg-blue-200")
  event.currentTarget.classList.toggle("hover:text-blue-600")
  event.currentTarget.classList.toggle("hover:text-white")
} 