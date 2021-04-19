class TaskReflex < StimulusReflex::Reflex
  before_reflex :set_task
  def toggle
    @task.update(completed_at: element.checked ? Time.zone.now : nil)
  end

  def destroy
    @task.destroy
  end

  def reorder(position)
    @task.insert_at(position)
  end

  private

  def set_task
    @task = Task.find(element.dataset.id)
  end
end
