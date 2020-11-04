class AttendancesController < ApplicationController
  def index
    @attendances = Att.all
  end

  def new
    @attendance = Att.new
  end

  def create
    @attendance = Att.new(attendance_params)
    @attendance.save
    redirect_to attendances_path
  end

  def edit
    @attendance = find_att_by_id
  end

  def update
    @attendance = find_att_by_id
    @attendance.update(attendance_params)
    redirect_to attendances_path
  end

  def destroy
    @attendance = find_att_by_id
    @attendance.destroy
    redirect_to attendances_path
  end

  private

  def attendance_params
    params.require(:att).permit(:id, :date, :work_from, :work_to, :break_from, :break_to, :description)
  end

  def find_att_by_id
    Att.find(params[:id])
  end
end
