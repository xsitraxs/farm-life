package ru.farmlife;

import com.mojang.brigadier.CommandDispatcher;
import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Entry point for Farm Life. The first prototype keeps its economy in the
 * world's scoreboard and implements the sell/shop loop with vanilla functions.
 */
public final class FarmLifeMod implements ModInitializer {
    public static final String MOD_ID = "farm_life";
    private static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

    @Override
    public void onInitialize() {
        CommandRegistrationCallback.EVENT.register((dispatcher, buildContext, environment) ->
                registerCommands(dispatcher));
        LOGGER.info("Farm Life loaded. Use /farm help to get started.");
    }

    private static void registerCommands(CommandDispatcher<CommandSourceStack> dispatcher) {
        dispatcher.register(Commands.literal("farm")
                .then(Commands.literal("help")
                        .executes(context -> executeFarmFunction(context.getSource(), "help")))
                .then(Commands.literal("setup")
                        .executes(context -> executeFarmFunction(context.getSource(), "setup")))
                .then(Commands.literal("balance")
                        .executes(context -> executeFarmFunction(context.getSource(), "balance")))
                .then(Commands.literal("stats")
                        .executes(context -> executeFarmFunction(context.getSource(), "stats")))
                .then(Commands.literal("quest")
                        .executes(context -> executeFarmFunction(context.getSource(), "quest")))
                .then(Commands.literal("shop")
                        .executes(context -> executeFarmFunction(context.getSource(), "shop")))
                .then(Commands.literal("sell")
                        .executes(context -> executeFarmFunction(context.getSource(), "sell")))
                .then(Commands.literal("buy")
                        .then(Commands.literal("wheat")
                                .executes(context -> executeFarmFunction(context.getSource(), "buy_wheat")))
                        .then(Commands.literal("carrot")
                                .executes(context -> executeFarmFunction(context.getSource(), "buy_carrot")))
                        .then(Commands.literal("potato")
                                .executes(context -> executeFarmFunction(context.getSource(), "buy_potato")))
                        .then(Commands.literal("beetroot")
                                .executes(context -> executeFarmFunction(context.getSource(), "buy_beetroot")))));
    }

    private static int executeFarmFunction(CommandSourceStack source, String function) {
        // Initialize shared objectives and the player's farm profile before every action.
        source.getServer().getCommands().performPrefixedCommand(source, "function farm_life:setup");
        if (!"setup".equals(function)) {
            source.getServer().getCommands().performPrefixedCommand(source, "function farm_life:" + function);
        }
        return 1;
    }
}
