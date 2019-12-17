// let dog = fetch('http://localhost:3000/players')
// let players = null;
let currentPlayer = null;
let problemCounter = 0;
let currentAnswer = null;
let currentHealth = 100;
let currentHappiness = 100;

// setting up the beggining of the page
initialButton1Setup();
initialButton2Setup();


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

      let answer = document.getElementById("name-input").value;
// / adds eventlistener to new btn1
      newButton1.addEventListener("click", function(e) {
        e.preventDefault;
        if (answer == currentAnswer) {
          addNextProblem();
        } else {
          currentHappiness -= 5;
          currentHealth -= 5;
          addNextProblem();
        }
      })
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
        
          currentHappiness -= 5;
          currentHealth -= 5;
          addNextProblem();
      })
}


//This function 
function correctAnswer() {

}








//this function posts a new player to the database
function createPlayer(player) {
  fetch("http://localhost:3000/players", {
    method: "POST",
    body: JSON.stringify(player),
    headers: {
      "Content-Type": "application/json"
    }
  });
}

//initial button 1 setup
function initialButton1Setup() {
  document.getElementById('btn1').addEventListener( "click", function(e) {
    e.preventDefault();
    let newPlayerName = document.getElementById("name-input").value
    let readyToPostPlayer = {
      name: newPlayerName,
      points: 0
    }
    createPlayer(readyToPostPlayer);
    document.getElementById("name-input").value = "";
    currentPlayer = newPlayerName;
    addNextProblem();
  });
}

//initial button2 setup
function initialButton2Setup() {
  document.getElementById('btn2').addEventListener( "click", function(e) {
    e.preventDefault();
    let readyToPostPlayer = {
      name: "The one who has no name!",
      points: 0
    }
    createPlayer(readyToPostPlayer);
    document.getElementById("name-input").value = "";
    currentPlayer = "The one who has no name!";
    addNextProblem();
  });
}


