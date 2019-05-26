package ddit.finalproject.team2.common.handler;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class TextEchoWebSocketHandler extends TextWebSocketHandler{
	@Resource(name="webSocketSessionMap")
	Map<String, WebSocketSession> webSocketSessionMap;
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		UsernamePasswordAuthenticationToken user = (UsernamePasswordAuthenticationToken) session.getPrincipal();
		webSocketSessionMap.put(user.getName(), session);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		session.sendMessage(message);
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		UsernamePasswordAuthenticationToken user = (UsernamePasswordAuthenticationToken) session.getPrincipal();
		webSocketSessionMap.remove(user.getName());
	}
}
