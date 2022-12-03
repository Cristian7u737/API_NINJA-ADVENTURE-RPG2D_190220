import { createGame, deleteGameByID, findAllGames, findAllGamesByPlayer, findAllGamesByPlayerNickname, findGameByID, updateGameByID } from '../controllers/game.js';

import express from 'express';

const router = express.Router();

router.get( "/game/:id", findGameByID )
router.get( "/games/", findAllGames )
router.post( "/game/register/:id", createGame )
router.put( "/game/update/:id", updateGameByID )
router.delete( "/game/delete/:id", deleteGameByID )
router.get( "/games/whois/:nickname", findAllGamesByPlayer )
router.get( "/games/nickname/:nickname", findAllGamesByPlayerNickname )

export default router;