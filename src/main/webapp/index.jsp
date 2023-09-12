<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<a href="home.jsp">Homepage</a>
<a href="LoadServlet">Admin page 1</a>
<a href="adminViewStaffDetail.jsp">Staff detail</a>
<a href="updateInfo.jsp">Member update info</a>
<a href="manageService.jsp">Manage Services</a>
<h2>Demo WebSocket Chat Room</h2>
<input id="textMessage" type="text"/>
<input onclick="sendMessage()" value="Send Message" type="button"/> <br/><br/>

<textarea id="textAreaMessage" rows="10" cols="50"></textarea>

<script type="text/javascript">
    var websocket = new WebSocket("ws://localhost:8080/chatRoomServer");
    websocket.onopen = function (message) {
        processOpen(message);
    };
    websocket.onmessage = function (message) {
        processMessage(message);
    };
    websocket.onclose = function (message) {
        processClose(message);
    };
    websocket.onerror = function (message) {
        processError(message);
    };

    function processOpen(message) {
        textAreaMessage.value += "Server connect... \n";
    }

    function processMessage(message) {
        console.log(message);
        textAreaMessage.value += message.data + " \n";
    }

    function processClose(message) {
        textAreaMessage.value += "Server Disconnect... \n";
    }

    function processError(message) {
        textAreaMessage.value += "Error... " + message + " \n";
    }

    function sendMessage() {
        if (typeof websocket != 'undefined' && websocket.readyState == WebSocket.OPEN) {
            websocket.send(textMessage.value);
            textMessage.value = "";
        }
    }

</script>

<input type="checkbox" id="check">
<label class="chat-btn" for="check"> <i class="fa fa-commenting-o comment"></i>
    <i class="fa fa-close close"></i>
</label>
<div class="wrapper">
    <div class="header"> <h6>Let's Chat - Online</h6> </div>
    <div class="text-center p-2"> <span>Please fill out the form to start chat!</span> </div>
    <div class="chat-form"> <input type="text" class="form-control" placeholder="Name">
        <input type="text" class="form-control" placeholder="Email"> <textarea class="form-control" placeholder="Your Text Message"></textarea>
        <button class="btn btn-success btn-block">Submit</button>
    </div>
</div>
</body>
</html>