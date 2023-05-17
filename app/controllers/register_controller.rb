class RegisterController < ApplicationController
  skip_before_action :authorized, only: [:index, :index2]
  before_action :timesheets
  def index
  end

  def timesheets
    @timesheets = Timesheet.all
    @line_employees = LineEmployee.all
    @presenca_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "presenca"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @falta_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "falta"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @atrasado_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "atrasado"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @atestado_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "atestado"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @inss_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "inss"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @ferias_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "ferias"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @licenca_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "licenca"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @vacancia_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "vacancia"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @antecipada_count = ((Timesheet.joins(:line_employees).where(:line_employees => {:status => "antecipada"})).and(Timesheet.joins(:line_employees).where(:line_employees => {created_at: Date.today.all_day}))).count(:id)
    @color_button = if Timesheet.joins(:line_employees).where(:line_employees => {:status => "presenca"})
      "success"
    else
      "danger"
    end
  end
end
