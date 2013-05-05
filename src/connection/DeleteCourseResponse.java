
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
 *         &lt;element name="deleteCourseReturn" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
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
    "deleteCourseReturn"
})
@XmlRootElement(name = "deleteCourseResponse")
public class DeleteCourseResponse {

    protected boolean deleteCourseReturn;

    /**
     * Gets the value of the deleteCourseReturn property.
     * 
     */
    public boolean isDeleteCourseReturn() {
        return deleteCourseReturn;
    }

    /**
     * Sets the value of the deleteCourseReturn property.
     * 
     */
    public void setDeleteCourseReturn(boolean value) {
        this.deleteCourseReturn = value;
    }

}
