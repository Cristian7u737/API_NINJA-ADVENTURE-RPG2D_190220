import Player from "../models/Player.js";

const findPlayerByID = async ( req, res ) => {
  const { id } = req.params;
  const player = await Player.findOne( { where: { id } } );

  if ( !player ) {
    return res.status( 404 ).json({
      mensaje: `No existe el jugador con el ID: ${id}.`
    });
  }

  res.json( player )
}

const findAllPlayers = async ( req, res ) => {
  const allPlayers = await Player.findAll(/* {include: "tb_games"} */);
  res.json( allPlayers );
  return false;
};

const createPlayer = async (req, res) => {
  const { email, password, name, birthdate, nickname, avatar_url } = req.body
  console.log(req.body);
  try {
      const exitsPlayerByEmail = await Player.findOne({ //SELECT * FROM tb_players WHERE email = "" or nickname = ""
          where: { email /*  $or: [{ nickname }] */ }
      })

      const exitsPlayerByNickname = await Player.findOne({ //SELECT * FROM tb_players WHERE email = "" or nickname = ""
          where: { nickname/*  $or: [{ nickname }] */ }
      })

      if (exitsPlayerByEmail) {
          return res.json({ mensaje: `El usuario con el correo : ${email} ya existe.` })
      } else if (exitsPlayerByNickname) {
          return res.json({ mensaje: `El usuario con el nickname : ${nickname} ya existe.` })
      }

      else {
          const newPlayer = await Player.create({
              email,
              password,
              name,
              birthdate,
              nickname,
              avatar_url
          })
          return res.json({ mensaje: `El jugador : ${newPlayer.nickname} ha sido creado` });
      }
  }
  catch (error) {
      console.log(error)
      return res.json({ mensaje: `Hubo un error al crear el jugador : ${newPlayer.nickname}, por favor intenta de nuevo` })
  }
}

const updatePlayer = async ( req, res ) => {
  const { id } = req.params;
  const { body } = req;

  try {
    const player = await Player.findOne({
      where: {id}
    });

    if ( !player ) {
      return res.status( 404 ).json({
        mensaje: `No existe el jugador con el ID: ${id}.`
      });
    }

    await player.update( body );
    res.json( player );

  } catch (err) {
    res.json( err );
  }

}

const deletePlayerByID = async ( req, res ) => {
  const { id } = req.params;
  const player = await Player.findOne({
    where: { id }
  });

  if ( !player ) {
    return res.status( 404 ).json({
      mensaje: `No existe el jugador con el ID: ${id}.`
    });
  }

  await player.destroy();
  res.json( { mensaje: `El Jugador con el ID ${id} ha sido eliminado.` } )

};

const findPlayerByNickname = async ( req, res ) => {
  const { nickname } = req.params;
  const player = await Player.findOne({ 
    where: { nickname } 
  });

  if ( !player ) {
    return res.status( 404 ).json({
      mensaje: `No existe el jugador con el NICKNAME: ${nickname}.`
    });
  } 

  res.json( player )
};

export {
  findPlayerByID,
  findAllPlayers,
  createPlayer,
  updatePlayer,
  deletePlayerByID,
  findPlayerByNickname,
};
