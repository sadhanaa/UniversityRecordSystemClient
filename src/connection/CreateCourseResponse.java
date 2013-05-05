
package connection;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


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
 *         &lt;element name="createCourseReturn" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
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
    "createCourseReturn"
})
@XmlRootElement(name = "createCourseResponse")
public class CreateCourseResponse {

    protected boolean createCourseReturn;

    /**
     * Gets the value of the createCourseReturn property.
     * 
     */
    public boolean isCreateCourseReturn() {
        return createCourseReturn;
    }

    /**
     * Sets the value of the createCourseReturn property.
     * 
     */
    public void setCreateCourseReturn(boolean value) {
        this.createCourseReturn = value;
    }

}
