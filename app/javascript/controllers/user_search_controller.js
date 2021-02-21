import { Controller } from 'stimulus'
export default class extends Controller {
  static targets = [ "search"]
  searchUser() {
    if (this.searchTarget.value.length >= 3) {
      fetch(`/user_search`)
      .then((data) => console.log(data.value))
    } else {
      console.log(this.searchTarget.value)
    }
  }

}


// Reusable helper function
function hiddenToggler(el){
 
} 