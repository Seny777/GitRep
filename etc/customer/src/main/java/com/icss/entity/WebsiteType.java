package com.icss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class WebsiteType {
    private Integer id;

    private String tname;

    private Integer websiteNum;
}