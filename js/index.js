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

// setting up the beggining of the page
initialButton1Setup();
initialButton2Setup();
disableInputDefaults();


//this function is going to fetch the next riddle from the api and display it on the screen. Then it's going to call the button resetter functions
function addNextProblem() {
  document.getElementById("name-input").value = "";
  problemCounter += 1;
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
   
    
    formChildren[0].nodeValue = "Answer :";
    title.innerText = nextQuestion.name;
    storyText.innerText = nextQuestion.story_text;
    riddleText.innerText = nextQuestion.riddle_text;
    currentAnswer = nextQuestion['correct_answer'];

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
  oldHeart.src = `/Users/flatironschool/Desktop/Ruby_coding/mod3project/images/heart${heartCounter}.png`
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

function displayArtifactOnPage() {

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
   displayPointsOnPage(data)
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
  newDeathStoryElement.innerText = "You failed too many questions to protect Pico from The Great Deep! Look at how well you preformed.";
  newDeathTitleElement.innerText = "Pico died!";
  newDeathImageElement.innerText = "";
  newDeathFinalElement.innerText = "";
  newDeathForm.innerText = "";
  postFinalStatistics(currentPlayer);
}

function postFinalStatistics(player) {
  let finalPoints = document.querySelector('#points-counter').innerHTML
  console.log(finalPoints);
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
    newLi.innerHTML = `${item.name} lost the game with ${item.leader_board_points} points at problem # ${item.problem_failed_at}`;
    leaderBoardList.appendChild(newLi);
  });
}