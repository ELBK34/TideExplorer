# Tide Explorer 🌊

A 3D exploration game built with Godot 4 where you walk along a beach and collect washed-up items to clean it up.
Developed as a personal project.

---

## Gameplay
Explore a 3D beach environment and collect items scattered around the shore.
Each item you pick up gets recorded in your journal. Collect all 8 items to win!

- 🐚 Find and collect washed-up objects
- 📖 Journal system tracks everything you've found
- 🎉 Win screen with animated fade-in when the beach is clean
- 🌊 Ambient ocean sound

## Controls
| Key | Action |
|-----|--------|
| WASD / Arrow keys | Move |
| Mouse | Look around |
| ESC | Release mouse |

## Tech stack
- **Engine:** Godot 4.5
- **Language:** GDScript
- **Rendering:** Forward Plus
- **3D Models:** Custom .obj / .blend assets

## Project structure
```
player.gd          → Player movement and mouse look
collectible.gd     → Spinning collectibles with pickup logic
journal.gd         → Autoload — tracks collected items globally
ui.gd              → HUD showing item count and win message
win_screen.gd      → Animated win screen with fade-in
3D models/         → .obj and .blend assets
```

## How to run
1. Download and install [Godot 4](https://godotengine.org/download/)
2. Open Godot → Import project → select `project.godot`
3. Press F5 or click Play

---

*Personal project — built with Godot 4 & GDScript*