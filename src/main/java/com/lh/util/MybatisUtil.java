package com.lh.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import java.io.IOException;
import java.io.InputStream;

public class MybatisUtil {

    private static SqlSessionFactory sqlSessionFactory;

    static{
        String resource = "spring/applicationContext.xml";
        InputStream in = null;//需要关闭
        try {
            in = Resources.getResourceAsStream(resource);

            System.out.println("try");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
            System.out.println(sqlSessionFactory);
        } catch (IOException e) {
            System.out.println("catch");
            e.printStackTrace();
        } finally {
            System.out.println("finally");
            if(in != null){
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static SqlSession getSession(){
        return sqlSessionFactory.openSession();
    }
}
