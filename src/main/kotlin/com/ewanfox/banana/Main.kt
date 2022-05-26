package com.ewanfox.banana
import net.minestom.server.MinecraftServer
import net.minestom.server.coordinate.Pos
import net.minestom.server.event.Event
import net.minestom.server.event.player.PlayerLoginEvent
import net.minestom.server.instance.block.Block
import net.minestom.server.instance.generator.GenerationUnit


    fun main(args: Array<String>) {
        val minecraftServer = MinecraftServer.init();
        val instanceManager = MinecraftServer.getInstanceManager();
        val instanceContainer = instanceManager.createInstanceContainer();
        val thing = { unit: GenerationUnit -> unit.modifier().fillHeight(0, 40, Block.GRASS_BLOCK) };
        val globalEventHandler = MinecraftServer.getGlobalEventHandler();
        val eventf = { event: PlayerLoginEvent ->
            {
                val player = event.player
                event.setSpawningInstance(instanceContainer)
                player.respawnPoint = Pos(0.toDouble(), 42.toDouble(), 0.toDouble())
                Unit
            }
        }
        globalEventHandler.addListener(PlayerLoginEvent::class.java) { event: PlayerLoginEvent ->
            run {
                val player = event.player
                event.setSpawningInstance(instanceContainer)
                player.respawnPoint = Pos(0.toDouble(), 42.toDouble(), 0.toDouble())
            }
        }
        instanceContainer.setGenerator(thing);
        minecraftServer.start("0.0.0.0", 25565);
    }



