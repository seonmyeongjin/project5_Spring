package com.book;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVO {
    public static boolean IsLogined;
    private String userid;
    private String password;
    private String username;
}
