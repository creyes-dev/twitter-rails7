module ApplicationHelper

  def convert_to_local_datetime(datetime)
    datetime.in_time_zone('Brasilia')
  end

  def convert_to_local_timezone_date_time(datetime)
    convert_to_local_datetime(datetime).strftime("%d/%m/%Y %H:%M")
  end

  def time_diff(start_time, end_time)
    seconds_diff = (start_time - end_time).to_i.abs

    days = seconds_diff / 86400
    seconds_diff -= days * 86400

    hours = seconds_diff / 3600
    seconds_diff -= hours * 3600

    minutes = seconds_diff / 60
    seconds_diff -= minutes * 60

    seconds = seconds_diff

    diff = ""
    diff += "#{days} días " if days > 0
    diff += "#{hours} horas " if hours > 0
    diff += "#{minutes} minutos" if minutes > 0
    diff
   end
end
