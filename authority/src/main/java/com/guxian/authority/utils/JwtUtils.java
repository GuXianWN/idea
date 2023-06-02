package com.guxian.authority.utils;

import com.guxian.authority.exception.LoginException;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


@ConfigurationProperties(prefix = "guxian.jwt")
@Component
public class JwtUtils {
    private Logger logger = LoggerFactory.getLogger(getClass());

    private String secret;
    private long expire;
    private String header;

    /**
     * 生成jwt token
     */
    public String generateToken(Integer userId) {
        Map<String, Object> claims = new HashMap<>();
        claims.put("userId", userId);

        Date nowDate = new Date();
        //过期时间
        Date expireDate = new Date(nowDate.getTime() + expire * 1000);
        return Jwts.builder()
                .setClaims(claims)
                .setExpiration(expireDate)
                .signWith(SignatureAlgorithm.HS512, secret)
                .compact();
    }

    public Claims getClaimByToken(String token) {
        try {
            return Jwts.parser()
                    .setSigningKey(secret)
                    .parseClaimsJws(token)
                    .getBody();
        } catch (Exception e) {
            logger.debug("validate is token error ", e);
            return null;
        }
    }

    public Integer getUserIdByRequest(HttpServletRequest request) {
        String token = request.getHeader("Authorization");
        if (token == null || token.equals("")) {
            throw new LoginException("未登录,请登录", 401);
        }
        if (!token.startsWith("Bearer ") || token.split(" ").length != 2)
            throw new LoginException("登录无效请重新登录", 401);
        String body = token.split(" ")[1];
        return getClaimByToken(body).get("userId", Integer.class);
    }

    /**
     * token是否过期
     *
     * @return true：过期
     */
    public boolean isTokenExpired(Date expiration) {
        return expiration.before(new Date());
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret;
    }

    public long getExpire() {
        return expire;
    }

    public void setExpire(long expire) {
        this.expire = expire;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }
}
