import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'country', 'select', 'cityList' ]
  static classes = [ 'hidden', 'shown' ]

  findCities(countryId) {
    countryId = this.countryTarget.value;
    this.cityListTargets.forEach((element) => {
      if(element.dataset.countryId === countryId) {
        this.showElement(element)
      } else {
        this.hideElement(element)
      }
    })
  };

  hideElement(element) {
    if (element.classList.contains(this.shownClass)) {
      element.classList.remove(this.shownClass);
      element.classList.add(this.hiddenClass);
    }
  };

  showElement(element) {
    element.classList.remove(this.hiddenClass);
    element.classList.add(this.shownClass);
  }
}
