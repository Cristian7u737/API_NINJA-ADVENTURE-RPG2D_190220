import { createPlayer, deletePlayerByID, findAllPlayers, findPlayerByID, findPlayerByNickname, updatePlayer } from '../controllers/player.js';

import express from 'express';

const router = express.Router();

router.get( "/player/:id", findPlayerByID )
router.get( "/players/", findAllPlayers )
router.post( "/player/register",createPlayer )
router.put( "/player/update/:id",updatePlayer )
router.delete( "/player/delete/:id",deletePlayerByID )
router.get( "/player/whois/:nickname",findPlayerByNickname )

export default router;