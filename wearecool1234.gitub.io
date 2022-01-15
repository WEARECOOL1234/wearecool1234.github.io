<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>XOXO</title>
        <style>
            .row div {
                padding: 10px;
                border: 1px solid black;
                height: 30px;
                width: 30px;
                float: left;
            }
            .row {
                clear:both;
            }
            
        </style>
    </head>
    <body>
    Click to play XOXO.<br>
    <div>
        <div class="row">
            <div id="0_0" onclick="place(this)"></div>
            <div id="1_0" onclick="place(this)"></div>
            <div id="2_0" onclick="place(this)"></div>
        </div>
        <div class="row">
            <div id="0_1" onclick="place(this)"></div>
            <div id="1_1" onclick="place(this)"></div>
            <div id="2_1" onclick="place(this)"></div>
        </div>
        <div class="row">
            <div id="0_2" onclick="place(this)"></div>
            <div id="1_2" onclick="place(this)"></div>
            <div id="2_2" onclick="place(this)"></div>
        </div>
    </div>
    <script>
        var currentPlayer = "0";
            var won = false;
            function place(box) {
                if(box.innerText != "" || won) return;
                box.innerText = currentPlayer;
                currentPlayer == "0" ? currentPlayer = "x" : currentPlayer ="0";
                checkGameBoard();
            }
                function checkGameBoard() {
                    for(var i = 0; 1 <= 2; i++) {
                        checkWinner(document.getElementById(i + "_0").innerText,
                        document.getElementById(i + "_1").innerText,
                        document.getElementById(i + "_2").innerText);
                    checkWinner(document.getElementById("0_" + i).innerText,
                        document.getElementById("1_" + i),
                        document.getElementById("2_" + i));
                    }
                    
                    
                    checkWinner(document.getElementById("0_0").innerText,
                        document.getElementById("1_1").innerText,
                        document.getElementById("2_2").innerText);
                    checkWinner(document.getElementById("0_2").innerText,
                        document.getElementById("1_1"),
                        document.getElementById("2_0"));
                }
        function checkWinner(first, second, third) {
            if(first != "" && first == second && first == third) {
                alert("winner!");
                won = true;
            }
        }
    </script>
    </body>
</html>
