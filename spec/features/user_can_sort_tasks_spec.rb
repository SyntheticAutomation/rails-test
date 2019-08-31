require 'spec_helper'

describe 'A user who visits the app' do
  it 'can sort tasks by due date' do
    # -----------------------
    # mimic a user creating a bunch of tasks
    list_1 = List.create(title: "Dogs I want")
    visit list_path(list_1.id)
    click_on "Tasks"
    click_on "New Task"
    fill_in :task_name, with: "Poodle"
    fill_in :task_due_date, with: "2022-12-25"
    click_on "Create Task"


    visit list_path(list_1.id)
    click_on "Tasks"
    click_on "New Task"
    fill_in :task_name, with: "Husky"
    fill_in :task_due_date, with: "2022-12-29"
    click_on "Create Task"


    visit list_path(list_1.id)
    click_on "Tasks"
    click_on "New Task"
    fill_in :task_name, with: "Scottish Terrier"
    fill_in :task_due_date, with: "2019-11-20"
    click_on "Create Task"
    # -----------------------
    visit list_tasks_path(list_1.id)
    expect(page).to have_content("Sort by most urgent")
    expect(page).to have_content("Sort by least urgent")
    # -----------------------
    desired_string_1 = "Scottish Terrier false 2019-11-20 Show Edit Destroy Poodle false 2022-12-25 Show Edit Destroy Husky false 2022-12-29"
    click_on "Sort by most urgent"
    expect(page).to have_content(desired_string_1)
    # -----------------------
    desired_string_2 = "Husky false 2022-12-29 Show Edit Destroy Poodle false 2022-12-25 Show Edit Destroy Scottish Terrier false 2019-11-20"
    click_on "Sort by least urgent"
    expect(page).to have_content(desired_string_2)
    

    
  end
end