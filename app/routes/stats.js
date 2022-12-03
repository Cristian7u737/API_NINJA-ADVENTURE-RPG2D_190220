import express from 'express';
import { viewHigScores,viewLeaderBoard,viewRecentGamesByNickname } from '../controllers/stats.js';
const router = express.Router();

router.get("/stats/recentGamesByNickname/:nickname", viewRecentGamesByNickname)
router.get("/stats/leaderboard/", viewLeaderBoard)
router.get("/stats/higscores/", viewHigScores)
export default router;