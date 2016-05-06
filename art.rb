require 'mplayer-ruby'

class String
  def bg_black;       "\e[40m#{self}\e[0m" end
  def bg_red;         "\e[41m#{self}\e[0m" end
  def bg_yellow;      "\e[43m#{self}\e[0m" end
  def bg_light_yellow;"\e[103m#{self}\e[0m" end
  def bg_light_red;   "\e[101m#{self}\e[0m" end
  def bg_green;       "\e[42m#{self}\e[0m" end
  def bg_dark_green;  "\e[48;5;22m#{self}\e[0m" end
  def bg_camo_green;  "\e[48;5;106m#{self}\e[0m" end
  def bg_brown;       "\e[43m#{self}\e[0m" end
  def bg_blue;        "\e[44m#{self}\e[0m" end
  def bg_light_blue;  "\e[104m#{self}\e[0m" end
  def bg_magenta;     "\e[45m#{self}\e[0m" end
  def bg_cyan;        "\e[46m#{self}\e[0m" end
  def bg_light_cyan;  "\e[106m#{self}\e[0m" end
  def bg_gray;        "\e[47m#{self}\e[0m" end

  def black;          "\e[30m#{self}\e[0m" end
  def red;            "\e[31m#{self}\e[0m" end
  def yellow;         "\e[33m#{self}\e[0m" end
  def light_yellow;   "\e[93m#{self}\e[0m" end
  def light_red;      "\e[91m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def dark_green;     "\e[38;5;22m#{self}\e[0m" end
  def camo_green;     "\e[38;5;106m#{self}\e[0m" end
  def brown;          "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def light_blue;     "\e[94m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
  def light_cyan;     "\e[96m#{self}\e[0m" end
  def gray;           "\e[37m#{self}\e[0m" end
end

puts "Choose a color scheme (Green, Red, or blue)...".red()

@color_scheme = gets.chomp.downcase

$row = ["f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, "f".bg_blue.blue, ]
$totalSong = ""

def generate()
  columnChangeVal = rand(0..80)
  columnChangeVal.times do
    columnToChange = rand(0..80)
    color = rand(0..4)
    if @color_scheme == "blue"
      case color
        when 0 then $row[columnToChange] = "a".bg_blue.blue(); $totalSong = $totalSong + "a"
        when 1 then $row[columnToChange] = "b".bg_light_blue.light_blue(); $totalSong = $totalSong + "b"
        when 2 then $row[columnToChange] = "c".bg_cyan.cyan(); $totalSong = $totalSong + "c"
        when 3 then $row[columnToChange] = "d".bg_green.green(); $totalSong = $totalSong + "d"
        when 4 then $row[columnToChange] = "e".bg_light_cyan.light_cyan(); $totalSong = $totalSong + "e"
      end
    elsif @color_scheme == "red"
      case color
        when 0 then $row[columnToChange] = "a".bg_red.red(); $totalSong = $totalSong + "a"
        when 1 then $row[columnToChange] = "b".bg_light_yellow.light_yellow(); $totalSong = $totalSong + "b"
        when 2 then $row[columnToChange] = "c".bg_light_red.light_red(); $totalSong = $totalSong + "c"
        when 3 then $row[columnToChange] = "d".bg_yellow.yellow(); $totalSong = $totalSong + "d"
        when 4 then $row[columnToChange] = "e".bg_brown.brown(); $totalSong = $totalSong + "e"
      end
    elsif @color_scheme == "green"
        case color
          when 0 then $row[columnToChange] = "a".bg_green.green(); $totalSong = $totalSong + "a"
          when 1 then $row[columnToChange] = "b".bg_camo_green.camo_green(); $totalSong = $totalSong + "b"
          when 2 then $row[columnToChange] = "c".bg_dark_green.dark_green(); $totalSong = $totalSong + "c"
          when 3 then $row[columnToChange] = "d".bg_green.green(); $totalSong = $totalSong + "d"
          when 4 then $row[columnToChange] = "e".bg_brown.brown(); $totalSong = $totalSong + "e"
        end
    else
      puts "I don't know any #{@color_scheme} color schemes..."
      exit
    end
  end
  puts $row.join("").to_s
end

30.times {generate()}

File.open("art.txt", "w") do |file|
  file.write($totalSong)
end

@sleepTime = 0.2
def play(instrument)
  mp = MPlayer::Slave.new "#{instrument}.mp3"
  @sleepTime = (mp.get :time_length).to_s.to_f - 0.05
end

inst = "drum1"
inst2 = "drum2"
inst3 = "drum3"

def randomRap
  rapId = rand(0..2) + 1
  mp = MPlayer::Slave.new "#{rapId}.mp3"
end

randomRap()
sleep 5

$totalSong.split("").each do |s|
  sleep @sleepTime
  case s
    when "a"
      play(inst)
    when "b"
      play(inst3)
      sleep 0.07
      play(inst)
    when "c"
      play(inst3)
    when "d"
      play(inst)
      sleep 0.3
      play(inst3)
      sleep 0.3
      play(inst2)
    when "e"
      play(inst)
      sleep 0.3
      play(inst)
      sleep 0.3
      play(inst3)
      sleep 0.2
      play(inst)
    when "f"
      play(inst)
      sleep 0.3
      play(inst)
  end
end
