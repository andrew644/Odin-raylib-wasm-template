package main

import rl "vendor:raylib"

main :: proc() {
	rl.InitWindow(1000, 1000, "Game")
	defer rl.CloseWindow()

	rl.SetTargetFPS(60)

	when ODIN_OS != .JS {
		for !rl.WindowShouldClose() {
			rl.BeginDrawing()
			rl.ClearBackground({135,35,235,255})
			rl.DrawText("Hello from Odin!", 10, 10, 20, rl.RAYWHITE)
			rl.DrawCircle(100, 100, 50, rl.RAYWHITE)
			rl.EndDrawing()
		}
	} else {
		for {
			rl.BeginDrawing()
			rl.ClearBackground({135,35,235,255})
			rl.DrawText("Hello from Odin!", 10, 10, 20, rl.RAYWHITE)
			rl.DrawCircle(100, 100, 50, rl.RAYWHITE)
			rl.EndDrawing()
		}
	}
	
}
