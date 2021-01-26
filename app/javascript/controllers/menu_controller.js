import { Controller } from 'stimulus'
export default class extends Controller {
  static targets = ['account', 'messages']

  visible() {
    console.log(fetch(this.data))
    
  }
}