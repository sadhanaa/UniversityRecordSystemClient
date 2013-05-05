
package connection;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import entity.Course;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="courseDetailReturn" type="{http://entity}Course"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "courseDetailReturn"
})
@XmlRootElement(name = "courseDetailResponse")
public class CourseDetailResponse {

    @XmlElement(required = true)
    protected Course courseDetailReturn;

    /**
     * Gets the value of the courseDetailReturn property.
     * 
     * @return
     *     possible object is
     *     {@link Course }
     *     
     */
    public Course getCourseDetailReturn() {
        return courseDetailReturn;
    }

    /**
     * Sets the value of the courseDetailReturn property.
     * 
     * @param value
     *     allowed object is
     *     {@link Course }
     *     
     */
    public void setCourseDetailReturn(Course value) {
        this.courseDetailReturn = value;
    }

}
