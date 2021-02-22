import { Controller } from 'stimulus'
export default class extends Controller {
  static targets = [ "results", "form"]

  connect() {
    console.log("Connected")
  }

  searchUsers() {
    console.log("this.formTarget")
    Rails.fire(this.formTarget, 'submit')
  }

  handleResults() {
    const [data, status, xhr] = event.detail
    console.log(xhr.response)
    //this.resultsTarget.innerHTML = xhr.response
  }

}