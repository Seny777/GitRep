package com.icss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Website {
    private Integer id;

    private String wname;

    private String url;

    private Integer typeId;

    private Integer accessNum;

    private Date lastAccessDate;

    private Date createDate;

    private Integer createUserId;
}