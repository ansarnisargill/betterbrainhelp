<!DOCTYPE html>
<html>
<title>BetterBrain Survey</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
</style>
<body style="background-color:#e9ebee;">

<div class="w3-container w3-blue">
  <h2 class="w3-xxlarge">BetterBrain Survey Form</h2>
</div>

<form action="/survey" method="post" class="w3-container">
 
 <div class="w3-card-4 w3-white w3-margin-top w3-col l4 m6 s8" style="margin-left:33%;">
 

  <p class="w3-padding-large">
  <label class="w3-xlarge w3-text-blue"> Enter Your Twitter Username: </label>
  <input class="w3-input w3-xlarge" type="text" required placeholder="@example">
  
  </p>



  <div class="w3-padding-large">
  <label class="w3-xlarge w3-text-blue"> Have You been diagnosed with Depression or feel Somewhat Depressed?</label>
  <br>
  <br>
<!-- Rounded switch -->
<div class="w3-row">
<b class="w3-xlarge w3-margin-right" style="color:#cccccc;">No</b>
<label class="switch">
  <input type="checkbox" checked>
  <span class="slider round"></span>
</label>
<b class="w3-xlarge w3-margin-left w3-text-blue" >Yes</b>
</div>
<br>
<button type="submit" style="margin-left:25%; width:50%;"   class="w3-btn w3-blue ">Complete!!! </button>
<br>
</div>
</div>
</form>

</body>
</html> 
