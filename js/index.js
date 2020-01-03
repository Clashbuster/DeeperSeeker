// let dog = fetch('http://localhost:3000/players')
// let players = null;
let currentPlayer = {
  'id': 0,
  'name': "",
  'final_points': 0,
  'problem_id': 0
}
let problemCounter = 0;
let currentAnswer = null;
let currentHealth = 100;
let currentHappiness = 100;
let heartCounter = 0;
let storyImageCounter = 1

// setting up the beggining of the page
initialButton1Setup();
initialButton2Setup();
disableInputDefaults();


//this function is going to fetch the next riddle from the api and display it on the screen. Then it's going to call the button resetter functions
function addNextProblem() {
  document.getElementById("name-input").value = "";
  problemCounter += 1;

  if(problemCounter == 15) {
    displayCompletedGame();
  }

  fetch(`http://localhost:3000/riddles/${problemCounter}`)
  .then(function(response) {
    return response.json();
  })
  .then(function(data) {
    // console.log(data);
    let newAnswerForm = document.getElementById("name-form");
    let nextQuestion = data;
    let title = document.getElementById("story-intro");
    let storyText = document.getElementById("text-for-story");
    let riddleText = document.getElementById("riddle-text");

    let formChildren = newAnswerForm.childNodes;
    // let btn2Text = document.getElementById('btn2')
    let scrollLi = document.querySelector('li#story-text')
    scrollLi.scrollTop = 0;
    
    formChildren[0].nodeValue = "Answer :";
    title.innerText = nextQuestion.name;
    storyText.innerText = nextQuestion.story_text;
    riddleText.innerText = nextQuestion.riddle_text;
    currentAnswer = nextQuestion['correct_answer'];
    displayNextStoryImage();
    setUpBtn1();
    setUpBtn2();
  });
}


// this function resets btn1 (the submit button)
function setUpBtn1() {
  
  //generate new button
  let oldButton1 = document.getElementById('btn1');
      oldButton1.remove();
  let newButton1 = document.createElement('li');
      newButtonText = document.createElement('p');
      newButtonText.className = 'btn-text';
      newButtonText.innerText = "Let it be known";

      newButton1.setAttribute("id", "btn1");
      newButton1.appendChild(newButtonText);
  let buttonContainer = document.getElementById('decisions-list');
      buttonContainer.appendChild(newButton1);

// / adds eventlistener to new btn1
      newButton1.addEventListener("click", function(e) {
        e.preventDefault;
        let answer = document.getElementById("name-input").value;
        // console.log("yoyo");
        if (answer == currentAnswer) {
          currentPlayer['problem_id'] = problemCounter; 
          // console.log("yoyo");
          correctAnswer(currentPlayer);
          addNextProblem();
        } else {
          currentHappiness -= 20;
          currentHealth -= 20;
          displayNextHeart();
         
          if(currentHealth <= 0) {
            displayDeathScreen();
          } else {
            
            addNextProblem();
          }
        }
      })
}

function displayNextHeart(){
  let oldHeart = document.querySelector('img#heart-stat')
  heartCounter += 1;
  oldHeart.src = `images/heart${heartCounter}.png`
}

let displayNextStoryImage = () => {
let location = document.querySelector('img#story-image');
storyImageCounter += 1;
location.src = `images/storyimage${storyImageCounter}.png`
}


//this function resets btn2 (the skip button)
function setUpBtn2() {
  
  //generate new button
  let oldButton2 = document.getElementById('btn2');
      oldButton2.remove();
  let newButton2 = document.createElement('li');
      newButtonText = document.createElement('p');
      newButtonText.className = 'btn-text';
      newButtonText.innerText = "Skip this problem!";

      newButton2.setAttribute("id", "btn2");
      newButton2.appendChild(newButtonText);
  let buttonContainer = document.getElementById('decisions-list');
      buttonContainer.appendChild(newButton2);

// / adds eventlistener to new btn2
      newButton2.addEventListener("click", function(e) {
          e.preventDefault;
        
          currentHappiness -= 20;
          currentHealth -= 20;
          displayNextHeart();
          
          if(currentHealth <= 0) {
            displayDeathScreen();
          } else {
            addNextProblem();
          }
      })
}


function displayPointsOnPage(data) {
  let points = document.querySelector('#points-counter')
  points.innerText = data;
}

function disableInputDefaults() {
  document.querySelector('#name-form').addEventListener("submit", function(event){
    event.preventDefault()
  });
  document.querySelector('#name-input').addEventListener("click", function(event){
    event.preventDefault()
  });
}

//This function updates the database when a correct answer is given. 
function correctAnswer(player) {
  // console.log("yoyo");
  fetch(`http://localhost:3000/correctanswer`, {
    method: "POST",
    body: JSON.stringify(player),
    headers: {
      "Content-Type": "application/json"
    }
  }).then(res => res.json())
  .then(data => {
    // console.log(data)
   displayPointsOnPage(data['player_points'])
   displayNewArtifact(data)
  })
}

//this function posts a new player to the database
function createPlayer(player) {
  fetch("http://localhost:3000/players", {
    method: "POST",
    body: JSON.stringify(player),
    headers: {
      "Content-Type": "application/json"
    }
  }).then(res => res.json())
  .then(data => {
    currentPlayer["name"] = data.name;
    currentPlayer["id"] = data.id;
    currentPlayer["points"] = data.points;
  })
}

//initial button 1 setup
function initialButton1Setup() {
  document.getElementById('btn1').addEventListener( "click", function(e) {
    e.preventDefault();
    let newPlayerName = document.getElementById("name-input").value
    let readyToPostPlayer = {
      name: newPlayerName,
      leader_board_points: 0
    }
    createPlayer(readyToPostPlayer);
    document.getElementById("name-input").value = "";
    currentPlayer["name"] = newPlayerName;
    addNextProblem();
  });
}

//initial button2 setup
function initialButton2Setup() {
  document.getElementById('btn2').addEventListener( "click", function(e) {
    e.preventDefault();
    let readyToPostPlayer = {
      name: "The one who has no name!",
      leader_board_points: 0
    }
    createPlayer(readyToPostPlayer);
    document.getElementById("name-input").value = "";
    currentPlayer["name"] = "The one who has no name!";
    addNextProblem();
  });
}

function displayDeathScreen() {
  let newDeathStoryElement = document.querySelector('#text-for-story')
  let newDeathTitleElement = document.querySelector('#story-intro')
  let newDeathImageElement = document.querySelector('#story-image')
  let newDeathFinalElement = document.querySelector('#riddle-text')
  let newDeathForm = document.querySelector('#name-form')
  let newDeathpico = document.querySelector('#character-picture')
  newDeathpico.src = 'images/lostpico.png';
  newDeathStoryElement.innerText = "You failed too many questions to protect Pico from The Great Deep! Look at how well you preformed.";
  newDeathTitleElement.innerText = "Pico died!";
  newDeathImageElement.src = "images/lostimage.png";
  newDeathFinalElement.innerText = "";
  newDeathForm.innerText = "";
  postFinalStatistics(currentPlayer);
  finalButtonsSetup();
}

function postFinalStatistics(player) {
  let finalPoints = document.querySelector('#points-counter').innerHTML
  // console.log(finalPoints);
  player['final_points'] = finalPoints
  player['problem_id'] = problemCounter

  fetch("http://localhost:3000/gameover", {
    method: "POST",
    body: JSON.stringify(player),
    headers: {
      "Content-Type": "application/json"
    }
  }).then(res => res.json())
  .then(data => {
    displayLeaderBoard(data);
  })
}

function displayLeaderBoard(data){

  let leaderBoardList = document.createElement('ul');
  let leaderBoardLocation = document.querySelector('#riddle-text');
  leaderBoardLocation.appendChild(leaderBoardList);

  data.forEach(function (item, index) {
    let newLi = document.createElement("li");
    if (item.problem_failed_at == 15) {
      newLi.innerHTML = `${item.leader_board_points} ------- ${item.name} beat the game!`;
    } else {
    newLi.innerHTML = `${item.leader_board_points} ------- ${item.name} lost on problem # ${item.problem_failed_at}`;
  }
    leaderBoardList.appendChild(newLi);
  });
}

function finalButtonsSetup() {
  // button one
  let oldButton1 = document.getElementById('btn1');
  oldButton1.remove();
  let newButton1 = document.createElement('li');
  newButton1Text = document.createElement('p');
  newButton1Text.className = 'btn-text';
  newButton1Text.innerText = "Erase your presence";

  newButton1.setAttribute("id", "btn1");
  newButton1.appendChild(newButton1Text);
let buttonContainer1 = document.getElementById('decisions-list');
  buttonContainer1.appendChild(newButton1);


  // button two 
  let oldButton2 = document.getElementById('btn2');
      oldButton2.remove();
  let newButton2 = document.createElement('li');
      newButton2Text = document.createElement('p');
      newButton2Text.className = 'btn-text';
      newButton2Text.innerText = "Begin anew";

      newButton2.setAttribute("id", "btn2");
      newButton2.appendChild(newButton2Text);
  let buttonContainer2 = document.getElementById('decisions-list');
      buttonContainer2.appendChild(newButton2);

// / adds eventlistener to new btn2
      newButton2.addEventListener("click", function(e) {
        window.location.reload()
        
      })

// / adds eventlistener to new btn1
  newButton1.addEventListener("click", function(e) {
    fetch("http://localhost:3000/remove-player", {
    method: "DELETE",
    body: JSON.stringify(currentPlayer),
    headers: {
      "Content-Type": "application/json"
    }
  }).then(res => res.json())
  .then(data => {
    // console.log(data);
  })
  window.location.reload()
  })
}

function displayCompletedGame(){
  let newCompleteStoryElement = document.querySelector('#text-for-story')
  let newCompleteTitleElement = document.querySelector('#story-intro')
  let newCompleteImageElement = document.querySelector('#story-image')
  let newCompleteFinalElement = document.querySelector('#riddle-text')
  let newCompleteForm = document.querySelector('#name-form')
  let newCompletePico = document.querySelector('#character-picture')
  // newCompletePico.src = '';
  newCompleteStoryElement.innerText = "Wow! You have beaten the entire game!";
  newCompleteTitleElement.innerText = "Pico is unstoppable!";
  newCompleteImageElement.src = "images/winimage.png";
  newCompleteFinalElement.innerText = "";
  newCompleteForm.innerText = "";
  postFinalStatistics(currentPlayer);
  finalButtonsSetup();
}

function displayNewArtifact(data){
  // console.log(data)
let newArtifactImg = document.createElement('img');
let newArtifactEl = document.createElement('div');
let artifactsContainer = document.querySelector('ul#artifacts');
let artifactId = data['new_artifact']['id'];
    newArtifactImg.src = `images/artifact${artifactId}.png`;
let artifactDescription = document.createElement('p')
    artifactDescription.innerHTML = `${data['new_artifact']['name']}: ${data['new_artifact']['points']} points`
    artifactDescription.setAttribute( 'class', 'artifact-description' );
    newArtifactEl.setAttribute( 'class', 'artifact' );
    // artifactDescription.style.display = 'none';

    newArtifactEl.appendChild(newArtifactImg)
    newArtifactEl.appendChild(artifactDescription)


  artifactsContainer.appendChild(newArtifactEl);
}