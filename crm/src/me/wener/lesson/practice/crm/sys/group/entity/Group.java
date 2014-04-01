package me.wener.lesson.practice.crm.sys.group.entity;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
@Entity(name = "groups")
@DatabaseTable(tableName = "groups")
public class Group
{
    public final static String FIELD_DEPARTMENT = "department";
    public final static String FIELD_PRINCIPAL = "principal";
    public final static String FIELD_FUNCTIONAL = "functional";
    public final static String FIELD_REMARK = "remark";
    @Id
    @GeneratedValue
    @DatabaseField(generatedId = true)
    private int id;
    @Column
    @DatabaseField
    private String department;
    @Column
    @DatabaseField
    private String principal;
    @Column
    @DatabaseField
    private String functional;
    @Column
    @DatabaseField
    private String remark;

}
