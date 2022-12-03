import Game from '../models/Game.js';

const findGameByID = async ( req, res ) => {
    const { id } = req.params;
    const game = await Game.findOne( { where: { id } } );
  
    if ( !game ) {
      return res.status( 404 ).json({
        mensaje: `No existe el jugador con el ID : ${id}.`
      });
    }
  
    res.json( game )
}

const findAllGames = async ( req, res ) => {
    const allGames = await Game.findAll(/* {include: "tb_player"} */);
    res.json( allGames );
    return false;
}

const createGame = async ( req, res ) => {
    const { body } = req;
    const { id } = req.params;

    try {
        const game = Game.build( body );
        game.id = id;
        await game.save().then( result => {
            res.json( result );
        }).catch( err => {  
            switch ( err.name ) {
                case "SequelizeValidationError":
                    res.json( err.errors[ 0 ].message )
                    break;
                case "SequelizeDatabaseError":
                    res.json( err.original.sqlMessage )
                default:
                    break;
            }
        });
    } catch ( error ) {
        res.json( error )
    }

}

const updateGameByID = async ( req, res ) => {
    const { id } = req.params;
    const { body } = req;

    try {
        const game = await Game.findOne({
            where: { id }
        });

        if ( !game ) {
            return res.status( 404 ).json({
                mensaje: `No existe la partida con el ID: ${id}.`
            });
        }

        await game.update( body );
        res.json( game );
    } catch ( error ) {
        res.json( error )
    }
}

const deleteGameByID = async ( req, res ) => {
    const { id } = req.params;
    const game = await Game.findOne({
      where: { id }
    });
  
    if ( !game ) {
      return res.status( 404 ).json({
        mensaje: `No existe el jugador con el ID: ${id}.`
      });
    }
  
    await game.destroy();
    res.json( { mensaje: `La Partida con el ID ${id} ha sido eliminado.` } )
  
}

const findAllGamesByPlayer = async ( req, res ) => {
    const { nickname } = req.params;
    const game = await Game.findOne({ 
      where: { nickname } 
    });
  
    if ( !game ) {
      return res.status( 404 ).json({
        mensaje: `No existe el jugador con el NICKNAME: ${nickname}.`
      });
    } 
  
    res.json( player )
};

const findAllGamesByPlayerNickname = async ( req, res ) => {
    const { nickname } = req.params;
    const game = await Game.findOne({ 
      where: { nickname } 
    });
  
    if ( !game ) {
      return res.status( 404 ).json({
        mensaje: `No existe el jugador con el NICKNAME: ${nickname}.`
      });
    } 
  
    res.json( player )
};



export {
    findGameByID,
    findAllGames,
    createGame,
    updateGameByID,
    deleteGameByID,
    findAllGamesByPlayer,
    findAllGamesByPlayerNickname
}