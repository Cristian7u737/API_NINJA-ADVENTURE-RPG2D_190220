import db from "./app/config/db.js";
import express from "express";
import game from './app/routes/game.js';
import player from './app/routes/player.js';
import stats from './app/routes/stats.js';


const app = express();
const port = process.env.PORT || 8080;

app.use( express.json() );
app.use( express.urlencoded( { extended: true } ) );

app.get( "/", ( req, res ) => {
  res.json( { mensaje: "Bienvenid@ al API del Videojuego" } )
} )

app.use('/', player)
app.use('/', game)
app.use('/', stats)

app.listen( port, () => {
  console.log( `El servidor esta funcionando en el puerto: ${ port }` );
} )

try{
    await db.authenticate() 
    console.log( 'Conexión Correcta con la Base de Datos' )

    db.sync({})
    console.log('La Base de Datos está sincronizada')
} catch ( error ) {
    console.log( error )
}
