import Game from "../models/Game.js";

const viewHigScores = async (req, res) => {
    const higscores = await Game.sequelize.query('SELECT * FROM vw_higscores');
    res.json({ higscores: higscores[0] });
}

const viewLeaderBoard = async (req, res) => {
    const bestHigscores = await Game.sequelize.query('SELECT * FROM vw_viewLeaderBoard');
    res.json({ bestHigscores: bestHigscores[0] });
}

const viewRecentGamesByNickname = async (req, res) => {
    const { nickname } = req.params;
    const recentGamesByNickname = await Game.sequelize.query('SELECT * FROM vw_recentgamesbyplayerid WHERE nickname' + nickname);
    res.json({ recentGamesByNickname: recentGamesByNickname[0] });
}

export { viewHigScores, viewLeaderBoard, viewRecentGamesByNickname }