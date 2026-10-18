# Farm Life — Minecraft Java 26.3

Farm Life is a farming-simulator mod prototype for Minecraft Java Edition 26.3 using Fabric.

## Gameplay in prototype 0.1.0

- Persistent coin balance stored in the world scoreboard; first setup grants 50 coins.
- Sell harvested goods from your inventory with `/farm sell`.
- Buy wheat seeds, carrots, potatoes, and beetroot seeds.
- Gain farming XP for each item sold and progress through farmer levels.
- Complete the first quest by selling 64 items of produce for a 100-coin bonus.
- Economy and quest state are saved with the world scoreboard.

## Commands

| Command | What it does |
|---|---|
| `/farm help` | Show commands and tutorial |
| `/farm setup` | Initialize farm profile |
| `/farm balance` | Show coins |
| `/farm sell` | Sell supported produce in inventory |
| `/farm shop` | Show seed prices |
| `/farm buy wheat` | Buy wheat seeds |
| `/farm buy carrot` | Buy carrots |
| `/farm buy potato` | Buy potatoes |
| `/farm buy beetroot` | Buy beetroot seeds |
| `/farm stats` | Show level, XP, and lifetime sales |
| `/farm quest` | Check the 64-item quest |

## Requirements

- Minecraft Java Edition **26.3**
- JDK **25**
- Fabric Loader **0.19.5** or newer compatible with 26.3
- Fabric API **0.163.0+26.3**
- Gradle **9.7.1** (GitHub Actions installs it automatically)

## Build on Windows

1. Install JDK 25.
2. Open this repository in IntelliJ IDEA and set the Gradle JVM to JDK 25.
3. Install Gradle 9.7.1, then run:

   ```powershell
   gradle build
   ```

4. The mod JAR will be in `build/libs/`.
5. Install Fabric Loader and Fabric API for 26.3, then copy the JAR to `.minecraft/mods`.

## Roadmap

1. Add original crops, seeds, crop growth stages, and textures.
2. Add a market block with inventory GUI.
3. Add farm plots, upgrades, quests, villagers, and configurable prices.
4. Add automated testing and balance tuning.

> This is an early prototype, not a finished content-rich mod. The project must be built and tested with JDK 25 / Gradle 9.7.1.
