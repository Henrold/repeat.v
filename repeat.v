import os

fn main() {
	// define the variables for the loop
	loop_times := os.args[1].i64()

	mut stack_for_system := os.args.clone()
	stack_for_system.delete(0)
	stack_for_system.delete(0)
	command := stack_for_system.join(" ")

	// loop
	for count in 0 .. loop_times {
		os.system(command)
	}
}