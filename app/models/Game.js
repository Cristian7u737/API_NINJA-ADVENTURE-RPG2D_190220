import { DataTypes } from "sequelize";
import Player from "./Player.js";
import db from "../config/db.js";

const Game = db.define(
    "tb_games",
    {
        numEnemigosDerrotados: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        misionesCumplidas: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        monedas: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
    })

Player.hasMany( Game, { foreignKey: 'id' } )
Game.hasOne( Player, { foreignKey: 'id' } )
export default Game;