import { Controller } from 'stimulus'
export default class extends Controller {
  static targets = ['remove']

  remove() {
    this.removeTarget.remove();
  }

}