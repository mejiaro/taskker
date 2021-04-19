import { Controller } from "stimulus";
import StimulusReflex from "stimulus_reflex";
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["form", "tasks"]
  connect() {
    StimulusReflex.register(this);
    Sortable.create(this.tasksTarget,
      { onEnd: (event) => this.reorder(event),
        filter: '.completed'}
    )
  }

  createTaskSuccess() {
    this.formTarget.reset();
  }
  
  reorder(event) {
    this.stimulate('TaskReflex#reorder', event.item, event.newIndex)
  }

  createTaskError(element, name, error) {
    alert(error)
  }

  beforeCreateTask(element) {
    element.querySelectorAll('input').forEach((input => input.blur()));
    element.classList.add("form-disabled");
  }
}