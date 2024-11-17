package com.example.QuanLyKTX.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {

        @Autowired
        private LoginInterceptor loginInterceptor;

        @Override
        public void addResourceHandlers(ResourceHandlerRegistry registry) {
                registry.addResourceHandler("/resources/static/css/**")
                                .addResourceLocations("classpath:/static/css/");
                registry.addResourceHandler("/resources/static/js/**")
                                .addResourceLocations("classpath:/static/js/");
                registry.addResourceHandler("/resources/static/img/**")
                                .addResourceLocations("classpath:/static/img/");
        }

        // cấu hình phân quyền
        @Override
        public void addInterceptors(InterceptorRegistry registry) {
                registry.addInterceptor(loginInterceptor)
                                .addPathPatterns("/**") // Kiểm tra tất cả các request

                                // Những trang không cần đăng nhập
                                .excludePathPatterns("/login", "/register", "/error", "/access-denied", "/", "/about",
                                                "/service", "/rooms", "/register", "/rooms/search", "/rooms/{id}","/booking/register",
                                                "/contact", "/services","/shop","/shop/product","shop/{studentId}/cart,/comment","/comments",
                                                "/resources/static/css/**", "/resources/static/js/**","/user/repair-request","/shop/product/{product_id}",
                                                "/resources/static/img/**");
        }

}
