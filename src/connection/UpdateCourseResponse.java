
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
 *         &lt;element name="updateCourseReturn" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
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
    "updateCourseReturn"
})
@XmlRootElement(name = "updateCourseResponse")
public class UpdateCourseResponse {

    protected boolean updateCourseReturn;

    /**
     * Gets the value of the updateCourseReturn property.
     * 
     */
    public boolean isUpdateCourseReturn() {
        return updateCourseReturn;
    }

    /**
     * Sets the value of the updateCourseReturn property.
     * 
     */
    public void setUpdateCourseReturn(boolean value) {
        this.updateCourseReturn = value;
    }

}
