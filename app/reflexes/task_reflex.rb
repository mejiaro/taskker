class TaskReflex < StimulusReflex::Reflex
  def toggle
    Task.find(element.dataset.id).update(completed_at: element.checked ? Time.zone.now : nil)
  end
end