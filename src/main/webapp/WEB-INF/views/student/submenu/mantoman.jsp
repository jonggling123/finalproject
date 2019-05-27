<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<meta charset="utf-8">--%>
<%--<title>Video Conferencing using RTCMultiConnection</title>--%>
<%--<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">--%>
<%--<link rel="shortcut icon" href="/demos/logo.png">--%>
<%--<link rel="stylesheet" href="/demos/stylesheet.css">--%>
<%--<script src="/demos/menu.js"></script>--%>

<%--<div class="container">--%>
    <%--<div class="row">--%>
        <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
            <%--<div class="data-table-list">--%>
                <%--<div class="table-responsive">--%>
                    <%--<h2>1:1지도</h2>--%>
                    <%--<div id="data-table-basic_wrapper" class="dataTables_wrapper">--%>
                        <%--<div class="dataTables_length" id="data-table-basic_length">--%>
                            <%--<div id="data-table-basic_filter"--%>
                                 <%--class="dataTables_filter sangyup">--%>
									<%--<span>분류--%>
									<%--<select>--%>
										<%--<OPTION>공지사항</OPTION>--%>
										<%--<OPTION>과목</OPTION>--%>
										<%--<OPTION>일반</OPTION>--%>
									<%--</select>--%>
									<%--</span>--%>
                                <%--<button class="btn btn-default notika-btn-default" id="asd">등록</button>--%>
                            <%--</div>--%>
                            <%--<table id="data-table-basic"--%>
                                   <%--class="table table-striped dataTable" role="grid"--%>
                                   <%--aria-describedby="data-table-basic_info">--%>
                                <%--<thead>--%>
                                <%--<tr role="row">--%>
                                    <%--<th class="sorting_asc" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-sort="ascending"--%>
                                        <%--aria-label="Name: activate to sort column descending"--%>
                                        <%--style="width: 80px;">선택--%>
                                    <%--</th>--%>
                                    <%--<th class="sorting_asc" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-sort="ascending"--%>
                                        <%--aria-label="Name: activate to sort column descending"--%>
                                        <%--style="width: 80px;">학번--%>
                                    <%--</th>--%>
                                    <%--<th class="sorting" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-label="Position: activate to sort column ascending"--%>
                                        <%--style="width: 100px;">이름--%>
                                    <%--</th>--%>
                                    <%--<th class="sorting" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-label="Office: activate to sort column ascending"--%>
                                        <%--style="width: 80px;">학년--%>
                                    <%--</th>--%>
                                    <%--<th class="sorting" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-label="Age: activate to sort column ascending"--%>
                                        <%--style="width: 80px;">학기--%>
                                    <%--</th>--%>
                                    <%--<th class="sorting" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-label="Start date: activate to sort column ascending"--%>
                                        <%--style="width: 125px;">수강률--%>
                                    <%--</th>--%>
                                    <%--<th class="sorting" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-label="Salary: activate to sort column ascending"--%>
                                        <%--style="width: 117px;">퀴즈목록보기--%>
                                    <%--</th>--%>
                                    <%--<th class="sorting" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-label="Salary: activate to sort column ascending"--%>
                                        <%--style="width: 117px;">작성글목록--%>
                                    <%--</th>--%>
                                    <%--<th class="sorting" tabindex="0"--%>
                                        <%--aria-controls="data-table-basic" rowspan="1" colspan="1"--%>
                                        <%--aria-label="Salary: activate to sort column ascending"--%>
                                        <%--style="width: 117px;">초대--%>
                                    <%--</th>--%>
                                <%--</tr>--%>
                                <%--</thead>--%>
                                <%--<tbody>--%>
                                <%--<tr role="row" class="odd" onClick="javascript:page_link();">--%>
                                    <%--<td class="">--%>
                                        <%--<div class="fm-checkbox">--%>
                                            <%--<div class="icheckbox_square-green" style="position: relative;">--%>
                                                <%--<input type="checkbox" class="i-checks"--%>
                                                       <%--style="position: absolute; opacity: 0;"/>--%>
                                                <%--<ins class="iCheck-helper"--%>
                                                     <%--style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                    <%--<td class="sorting_1">201910032</td>--%>
                                    <%--<td>이상엽</td>--%>
                                    <%--<td>4학년</td>--%>
                                    <%--<td>1학기</td>--%>
                                    <%--<td>93%</td>--%>
                                    <%--<td>--%>
                                        <%--<button class="btn btn-default notika-btn-default" id="asd">퀴즈목록보기</button>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<button class="btn btn-default notika-btn-default" id="asd">작성글목록보기</button>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<button class="btn btn-default notika-btn-default" id="asd">1:1초대</button>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--<tr role="row" class="odd">--%>
                                    <%--<td class="">--%>
                                        <%--<div class="fm-checkbox">--%>
                                            <%--<div class="icheckbox_square-green" style="position: relative;">--%>
                                                <%--<input type="checkbox" class="i-checks"--%>
                                                       <%--style="position: absolute; opacity: 0;"/>--%>
                                                <%--<ins class="iCheck-helper"--%>
                                                     <%--style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                    <%--<td class="sorting_1">201910045</td>--%>
                                    <%--<td>종선리</td>--%>
                                    <%--<td>4학년</td>--%>
                                    <%--<td>1학기</td>--%>
                                    <%--<td>94%</td>--%>
                                    <%--<td>--%>
                                        <%--<button class="btn btn-default notika-btn-default" id="asd">퀴즈목록보기</button>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<button class="btn btn-default notika-btn-default" id="asd">작성글목록보기</button>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<button class="btn btn-default notika-btn-default" id="asd">1:1초대</button>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                <%--</tbody>--%>
                            <%--</table>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="row">--%>
        <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
            <%--<section class="make-center">--%>
                <%--<div>--%>
                    <%--<label><input type="checkbox" id="record-entire-conference"> Record Entire Conference In The--%>
                        <%--Browser?</label>--%>
                    <%--<span id="recording-status" style="display: none;"></span>--%>
                    <%--<button id="btn-stop-recording" style="display: none;">Stop Recording</button>--%>
                    <%--<br><br>--%>

                    <%--<input type="text" id="room-id" value="abcdef" autocorrect=off autocapitalize=off size=20>--%>
                    <%--<button id="open-room">Open Room</button>--%>
                    <%--<button id="join-room">Join Room</button>--%>
                <%--</div>--%>

                <%--<div id="videos-container" style="margin: 20px 0;"></div>--%>

                <%--<div id="room-urls"--%>
                     <%--style="text-align: center;display: none;background: #F1EDED;margin: 15px -10px;border: 1px solid rgb(189, 189, 189);border-left: 0;border-right: 0;"></div>--%>
            <%--</section>--%>

            <%--<script src="/dist/RTCMultiConnection.min.js"></script>--%>
            <%--<script src="/node_modules/webrtc-adapter/out/adapter.js"></script>--%>
            <%--<script src="/socket.io/socket.io.js"></script>--%>

            <%--<!-- custom layout for HTML5 audio/video elements -->--%>
            <%--<link rel="stylesheet" href="/dev/getHTMLMediaElement.css">--%>
            <%--<script src="/dev/getHTMLMediaElement.js"></script>--%>

            <%--<script src="/node_modules/recordrtc/RecordRTC.js"></script>--%>
            <%--<script>--%>
                <%--// ......................................................--%>
                <%--// .......................UI Code........................--%>
                <%--// ......................................................--%>
                <%--document.getElementById('open-room').onclick = function () {--%>
                    <%--disableInputButtons();--%>
                    <%--connection.open(document.getElementById('room-id').value, function (isRoomOpened, roomid, error) {--%>
                        <%--if (isRoomOpened === true) {--%>
                            <%--showRoomURL(connection.sessionid);--%>
                        <%--} else {--%>
                            <%--disableInputButtons(true);--%>
                            <%--if (error === 'Room not available') {--%>
                                <%--alert('Someone already created this room. Please either join or create a separate room.');--%>
                                <%--return;--%>
                            <%--}--%>
                            <%--alert(error);--%>
                        <%--}--%>
                    <%--});--%>
                <%--};--%>

                <%--document.getElementById('join-room').onclick = function () {--%>
                    <%--disableInputButtons();--%>
                    <%--connection.join(document.getElementById('room-id').value, function (isJoinedRoom, roomid, error) {--%>
                        <%--if (error) {--%>
                            <%--disableInputButtons(true);--%>
                            <%--if (error === 'Room not available') {--%>
                                <%--alert('This room does not exist. Please either create it or wait for moderator to enter in the room.');--%>
                                <%--return;--%>
                            <%--}--%>
                            <%--alert(error);--%>
                        <%--}--%>
                    <%--});--%>
                <%--};--%>

                <%--document.getElementById('open-or-join-room').onclick = function () {--%>
                    <%--disableInputButtons();--%>
                    <%--connection.openOrJoin(document.getElementById('room-id').value, function (isRoomExist, roomid, error) {--%>
                        <%--if (error) {--%>
                            <%--disableInputButtons(true);--%>
                            <%--alert(error);--%>
                        <%--} else if (connection.isInitiator === true) {--%>
                            <%--// if room doesn't exist, it means that current user will create the room--%>
                            <%--showRoomURL(roomid);--%>
                        <%--}--%>
                    <%--});--%>
                <%--};--%>

                <%--// ......................................................--%>
                <%--// ..................RTCMultiConnection Code.............--%>
                <%--// ......................................................--%>

                <%--var connection = new RTCMultiConnection();--%>

                <%--// by default, socket.io server is assumed to be deployed on your own URL--%>
                <%--connection.socketURL = '/';--%>

                <%--// comment-out below line if you do not have your own socket.io server--%>
                <%--// connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';--%>

                <%--connection.socketMessageEvent = 'video-conference-demo';--%>

                <%--connection.session = {--%>
                    <%--audio: true,--%>
                    <%--video: true--%>
                <%--};--%>

                <%--connection.sdpConstraints.mandatory = {--%>
                    <%--OfferToReceiveAudio: true,--%>
                    <%--OfferToReceiveVideo: true--%>
                <%--};--%>

                <%--connection.videosContainer = document.getElementById('videos-container');--%>
                <%--connection.onstream = function (event) {--%>
                    <%--var existing = document.getElementById(event.streamid);--%>
                    <%--if (existing && existing.parentNode) {--%>
                        <%--existing.parentNode.removeChild(existing);--%>
                    <%--}--%>

                    <%--event.mediaElement.removeAttribute('src');--%>
                    <%--event.mediaElement.removeAttribute('srcObject');--%>
                    <%--event.mediaElement.muted = true;--%>
                    <%--event.mediaElement.volume = 0;--%>

                    <%--var video = document.createElement('video');--%>

                    <%--try {--%>
                        <%--video.setAttributeNode(document.createAttribute('autoplay'));--%>
                        <%--video.setAttributeNode(document.createAttribute('playsinline'));--%>
                    <%--} catch (e) {--%>
                        <%--video.setAttribute('autoplay', true);--%>
                        <%--video.setAttribute('playsinline', true);--%>
                    <%--}--%>

                    <%--if (event.type === 'local') {--%>
                        <%--video.volume = 0;--%>
                        <%--try {--%>
                            <%--video.setAttributeNode(document.createAttribute('muted'));--%>
                        <%--} catch (e) {--%>
                            <%--video.setAttribute('muted', true);--%>
                        <%--}--%>
                    <%--}--%>
                    <%--video.srcObject = event.stream;--%>

                    <%--var width = parseInt(connection.videosContainer.clientWidth / 3) - 20;--%>
                    <%--var mediaElement = getHTMLMediaElement(video, {--%>
                        <%--title: event.userid,--%>
                        <%--buttons: ['full-screen'],--%>
                        <%--width: width,--%>
                        <%--showOnMouseEnter: false--%>
                    <%--});--%>

                    <%--connection.videosContainer.appendChild(mediaElement);--%>

                    <%--setTimeout(function () {--%>
                        <%--mediaElement.media.play();--%>
                    <%--}, 5000);--%>

                    <%--mediaElement.id = event.streamid;--%>

                    <%--// to keep room-id in cache--%>
                    <%--localStorage.setItem(connection.socketMessageEvent, connection.sessionid);--%>

                    <%--chkRecordConference.parentNode.style.display = 'none';--%>

                    <%--if (chkRecordConference.checked === true) {--%>
                        <%--btnStopRecording.style.display = 'inline-block';--%>
                        <%--recordingStatus.style.display = 'inline-block';--%>

                        <%--var recorder = connection.recorder;--%>
                        <%--if (!recorder) {--%>
                            <%--recorder = RecordRTC([event.stream], {--%>
                                <%--type: 'video'--%>
                            <%--});--%>
                            <%--recorder.startRecording();--%>
                            <%--connection.recorder = recorder;--%>
                        <%--} else {--%>
                            <%--recorder.getInternalRecorder().addStreams([event.stream]);--%>
                        <%--}--%>

                        <%--if (!connection.recorder.streams) {--%>
                            <%--connection.recorder.streams = [];--%>
                        <%--}--%>

                        <%--connection.recorder.streams.push(event.stream);--%>
                        <%--recordingStatus.innerHTML = 'Recording ' + connection.recorder.streams.length + ' streams';--%>
                    <%--}--%>

                    <%--if (event.type === 'local') {--%>
                        <%--connection.socket.on('disconnect', function () {--%>
                            <%--if (!connection.getAllParticipants().length) {--%>
                                <%--location.reload();--%>
                            <%--}--%>
                        <%--});--%>
                    <%--}--%>
                <%--};--%>

                <%--var recordingStatus = document.getElementById('recording-status');--%>
                <%--var chkRecordConference = document.getElementById('record-entire-conference');--%>
                <%--var btnStopRecording = document.getElementById('btn-stop-recording');--%>
                <%--btnStopRecording.onclick = function () {--%>
                    <%--var recorder = connection.recorder;--%>
                    <%--if (!recorder) return alert('No recorder found.');--%>
                    <%--recorder.stopRecording(function () {--%>
                        <%--var blob = recorder.getBlob();--%>
                        <%--invokeSaveAsDialog(blob);--%>

                        <%--connection.recorder = null;--%>
                        <%--btnStopRecording.style.display = 'none';--%>
                        <%--recordingStatus.style.display = 'none';--%>
                        <%--chkRecordConference.parentNode.style.display = 'inline-block';--%>
                    <%--});--%>
                <%--};--%>

                <%--connection.onstreamended = function (event) {--%>
                    <%--var mediaElement = document.getElementById(event.streamid);--%>
                    <%--if (mediaElement) {--%>
                        <%--mediaElement.parentNode.removeChild(mediaElement);--%>
                    <%--}--%>
                <%--};--%>

                <%--connection.onMediaError = function (e) {--%>
                    <%--if (e.message === 'Concurrent mic process limit.') {--%>
                        <%--if (DetectRTC.audioInputDevices.length <= 1) {--%>
                            <%--alert('Please select external microphone. Check github issue number 483.');--%>
                            <%--return;--%>
                        <%--}--%>

                        <%--var secondaryMic = DetectRTC.audioInputDevices[1].deviceId;--%>
                        <%--connection.mediaConstraints.audio = {--%>
                            <%--deviceId: secondaryMic--%>
                        <%--};--%>

                        <%--connection.join(connection.sessionid);--%>
                    <%--}--%>
                <%--};--%>

                <%--// ..................................--%>
                <%--// ALL below scripts are redundant!!!--%>
                <%--// ..................................--%>

                <%--function disableInputButtons(enable) {--%>
                    <%--document.getElementById('room-id').onkeyup();--%>

                    <%--document.getElementById('open-or-join-room').disabled = !enable;--%>
                    <%--document.getElementById('open-room').disabled = !enable;--%>
                    <%--document.getElementById('join-room').disabled = !enable;--%>
                    <%--document.getElementById('room-id').disabled = !enable;--%>
                <%--}--%>

                <%--// ......................................................--%>
                <%--// ......................Handling Room-ID................--%>
                <%--// ......................................................--%>

                <%--function showRoomURL(roomid) {--%>
                    <%--var roomHashURL = '#' + roomid;--%>
                    <%--var roomQueryStringURL = '?roomid=' + roomid;--%>

                    <%--var html = '<h2>Unique URL for your room:</h2><br>';--%>

                    <%--html += 'Hash URL: <a href="' + roomHashURL + '" target="_blank">' + roomHashURL + '</a>';--%>
                    <%--html += '<br>';--%>
                    <%--html += 'QueryString URL: <a href="' + roomQueryStringURL + '" target="_blank">' + roomQueryStringURL + '</a>';--%>

                    <%--var roomURLsDiv = document.getElementById('room-urls');--%>
                    <%--roomURLsDiv.innerHTML = html;--%>

                    <%--roomURLsDiv.style.display = 'block';--%>
                <%--}--%>

                <%--(function () {--%>
                    <%--var params = {},--%>
                        <%--r = /([^&=]+)=?([^&]*)/g;--%>

                    <%--function d(s) {--%>
                        <%--return decodeURIComponent(s.replace(/\+/g, ' '));--%>
                    <%--}--%>

                    <%--var match, search = window.location.search;--%>
                    <%--while (match = r.exec(search.substring(1)))--%>
                        <%--params[d(match[1])] = d(match[2]);--%>
                    <%--window.params = params;--%>
                <%--})();--%>

                <%--var roomid = '';--%>
                <%--if (localStorage.getItem(connection.socketMessageEvent)) {--%>
                    <%--roomid = localStorage.getItem(connection.socketMessageEvent);--%>
                <%--} else {--%>
                    <%--roomid = connection.token();--%>
                <%--}--%>

                <%--var txtRoomId = document.getElementById('room-id');--%>
                <%--txtRoomId.value = roomid;--%>
                <%--txtRoomId.onkeyup = txtRoomId.oninput = txtRoomId.onpaste = function () {--%>
                    <%--localStorage.setItem(connection.socketMessageEvent, document.getElementById('room-id').value);--%>
                <%--};--%>

                <%--var hashString = location.hash.replace('#', '');--%>
                <%--if (hashString.length && hashString.indexOf('comment-') == 0) {--%>
                    <%--hashString = '';--%>
                <%--}--%>

                <%--var roomid = params.roomid;--%>
                <%--if (!roomid && hashString.length) {--%>
                    <%--roomid = hashString;--%>
                <%--}--%>

                <%--if (roomid && roomid.length) {--%>
                    <%--document.getElementById('room-id').value = roomid;--%>
                    <%--localStorage.setItem(connection.socketMessageEvent, roomid);--%>

                    <%--// auto-join-room--%>
                    <%--(function reCheckRoomPresence() {--%>
                        <%--connection.checkPresence(roomid, function (isRoomExist) {--%>
                            <%--if (isRoomExist) {--%>
                                <%--connection.join(roomid);--%>
                                <%--return;--%>
                            <%--}--%>

                            <%--setTimeout(reCheckRoomPresence, 5000);--%>
                        <%--});--%>
                    <%--})();--%>

                    <%--disableInputButtons();--%>
                <%--}--%>

                <%--// detect 2G--%>
                <%--if (navigator.connection &&--%>
                    <%--navigator.connection.type === 'cellular' &&--%>
                    <%--navigator.connection.downlinkMax <= 0.115) {--%>
                    <%--alert('2G is not supported. Please use a better internet service.');--%>
                <%--}--%>
            <%--</script>--%>

            <%--<footer>--%>
                <%--<small id="send-message"></small>--%>
            <%--</footer>--%>

            <%--<script src="https://cdn.webrtc-experiment.com/common.js"></script>--%>
            <%--</body>--%>
            <%--</html>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
</div>

