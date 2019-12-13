// let dog = fetch('http://localhost:3000/players')
var players = null



fetch("http://localhost:3000/players")
  .then(function(response) {
    return response.json();
  })
  .then(function(data) {
    players = data;
  });

  function showPlayers (playerArray) {

  }


  



