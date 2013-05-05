
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
 *         &lt;element name="deleteInstructorReturn" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
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
    "deleteInstructorReturn"
})
@XmlRootElement(name = "deleteInstructorResponse")
public class DeleteInstructorResponse {

    protected boolean deleteInstructorReturn;

    /**
     * Gets the value of the deleteInstructorReturn property.
     * 
     */
    public boolean isDeleteInstructorReturn() {
        return deleteInstructorReturn;
    }

    /**
     * Sets the value of the deleteInstructorReturn property.
     * 
     */
    public void setDeleteInstructorReturn(boolean value) {
        this.deleteInstructorReturn = value;
    }

}
