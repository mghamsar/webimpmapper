<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Implicit Mapper</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/main.css" rel="stylesheet">
  </head>
  <body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>

    <script>

    $(function() {
      $("#snapshot").click(function () {
          snapshot();
        });
      $("#savedataset").click(function () {
          savedataset();
      });
      $("#savenetwork").click(function () {
          savenetwork();
      });
    });

    function snapshot(href){
      $.getJSON("/snapshot", function(data){
        console.log("Taking Snapshots");
        if(data["success"]) {
          console.log("yay success");
        }
      });
    }

    function savedataset(href){
      $.getJSON("/savedataset", function(data){
        console.log("saving dataset");
        if(data["success"]) {
          console.log("yay savedataset success");
        }
      });
    }

    function savenetwork(href){
      $.getJSON("/savenetwork", function(data){
        console.log("saving network");
        if(data["success"]) {
          console.log("yay savenetwork success");
        }
      });
    }
    </script>

    <div id="content">
      <div class="formContent">
          <form action='/pyimp' method='post' enctype="multipart/form-data">

            <h1 class="jumbotron offset3">Train Mapping Signals</h1>
              <table>
                <tr>
                  <td class="section">
                    <div id="section1">
                      <h3><span></span> Take Snapshots</h3>
                      <input class="btn btn-primary" type="button" name="snapshot" id="snapshot" value="Snapshot"/>
                      <h3>Load Dataset</h3>
                      <input class="inputfile" type="file" name="loaddataset" id="loaddataset"/>
                      <h3>Load Network</h3>
                      <input class="inputfile" type="file" name="loaddataset" id="loaddataset"/>
                      <h3>Save Dataset</h3>
                      <input class="btn btn-primary" type="button" name="savedataset" id="savedataset" value="Save Dataset"/>
                      <h3>Save Network</h3>
                      <input class="btn btn-primary" type="button" name="savenetwork" id="savenetwork" value="Save Network"/>
                    </div>
                  </td>  
                  
                  <td class="section">
                    <div id="section2">
                      <h3 id='train'><span></span> Train Mapper</h3>
                      <input class="btn btn-primary" type="submit" name="train" id="train" value="Train Mappings"/>
                      <h3 id='result'><span></span> Run Results</h3>
                      <input type='submit' id="output" name="output" value='Run Results' class="btn btn-success">

                    </div>
                  </td>
                </tr>
                <tr>
                  <td class="section"></td>
                  <td class="section">
                    <div class="btn"> 
                    </div>  
                  </td>
                </tr>
              </table>      
        </form>
    </div>
  </div>
  </body>
</html>
