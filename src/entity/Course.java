
package entity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import connection.ArrayOfTns1Instructor;
import connection.ArrayOfTns1Person;


/**
 * <p>Java class for Course complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Course">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="courseId" type="{http://www.w3.org/2001/XMLSchema}long"/>
 *         &lt;element name="courseTeachers" type="{http://connection}ArrayOf_tns1_Instructor"/>
 *         &lt;element name="courseUsers" type="{http://connection}ArrayOf_tns1_Person"/>
 *         &lt;element name="hours" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="location" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="name" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="section" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Course", propOrder = {
    "courseId",
    "courseTeachers",
    "courseUsers",
    "hours",
    "location",
    "name",
    "section"
})
public class Course {

    protected long courseId;
    @XmlElement(required = true, nillable = true)
    protected ArrayOfTns1Instructor courseTeachers;
    @XmlElement(required = true, nillable = true)
    protected ArrayOfTns1Person courseUsers;
    @XmlElement(required = true, nillable = true)
    protected String hours;
    @XmlElement(required = true, nillable = true)
    protected String location;
    @XmlElement(required = true, nillable = true)
    protected String name;
    @XmlElement(required = true, nillable = true)
    protected String section;

    /**
     * Gets the value of the courseId property.
     * 
     */
    public long getCourseId() {
        return courseId;
    }

    /**
     * Sets the value of the courseId property.
     * 
     */
    public void setCourseId(long value) {
        this.courseId = value;
    }

    /**
     * Gets the value of the courseTeachers property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfTns1Instructor }
     *     
     */
    public ArrayOfTns1Instructor getCourseTeachers() {
        return courseTeachers;
    }

    /**
     * Sets the value of the courseTeachers property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfTns1Instructor }
     *     
     */
    public void setCourseTeachers(ArrayOfTns1Instructor value) {
        this.courseTeachers = value;
    }

    /**
     * Gets the value of the courseUsers property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfTns1Person }
     *     
     */
    public ArrayOfTns1Person getCourseUsers() {
        return courseUsers;
    }

    /**
     * Sets the value of the courseUsers property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfTns1Person }
     *     
     */
    public void setCourseUsers(ArrayOfTns1Person value) {
        this.courseUsers = value;
    }

    /**
     * Gets the value of the hours property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getHours() {
        return hours;
    }

    /**
     * Sets the value of the hours property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setHours(String value) {
        this.hours = value;
    }

    /**
     * Gets the value of the location property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLocation() {
        return location;
    }

    /**
     * Sets the value of the location property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLocation(String value) {
        this.location = value;
    }

    /**
     * Gets the value of the name property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the value of the name property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setName(String value) {
        this.name = value;
    }

    /**
     * Gets the value of the section property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSection() {
        return section;
    }

    /**
     * Sets the value of the section property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSection(String value) {
        this.section = value;
    }

}
