package ddit.finalproject.team2.common.handler;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import ddit.finalproject.team2.vo.UserVo;

public class TextEchoWebSocketHandler extends TextWebSocketHandler{
	@Resource(name="webSocketSessionMap")
	Map<String, WebSocketSession> webSocketSessionMap;
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		UserVo user = (UserVo) ((Authentication)session.getPrincipal()).getPrincipal();
		webSocketSessionMap.put(user.getUser_id(), session);
		System.out.println(webSocketSessionMap.get(user.getUser_id()));
//		user 정보 꺼내는 방법
//		session.getAttributes();
//		SecurityContextHolder.getContext().getAuthentication();
//		(UsernamePasswordAuthenticationToken) session.getPrincipal();
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
//		session.sendMessage(message);
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		UserVo user = (UserVo) ((Authentication)session.getPrincipal()).getPrincipal();
		webSocketSessionMap.remove(user.getUser_id());
	}
}
