import crayon
import boxx
import term

fn main() {
	mut turn := 1
	player_name := "Player 1"

	title_command := "Command"
	mut body_command := "Turn # $turn  $player_name\n"
	body_command     += "From : _"
	
	box_command := boxx.new({px: 2, py: 1, typ: "round", color: "slow_blink", title_position: .top})

	title_overview := "Overview"
	mut body_overview  := crayon.color("{dim.white P Ship Pr %% Owner   }\n")
	body_overview      += crayon.color("{white - ---- -- -- -----   }\n")
	body_overview      += crayon.color("{blue A   10 10 40 $player_name}\n")
	body_overview      += crayon.color("{yellow B   10 10 40 Player 2}\n")
	body_overview      += crayon.color("{red C   10 10 40 Player 3}")

	box_overview := boxx.new({px: 2, py: 1, typ: "round", color: "slow_blink", title_position: .top})

	box_overview.print(body_overview, title_overview)
	box_command.print(body_command, title_command)

	turn++

	return
}
