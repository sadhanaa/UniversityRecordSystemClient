
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
 *         &lt;element name="createInstructorReturn" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
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
    "createInstructorReturn"
})
@XmlRootElement(name = "createInstructorResponse")
public class CreateInstructorResponse {

    protected boolean createInstructorReturn;

    /**
     * Gets the value of the createInstructorReturn property.
     * 
     */
    public boolean isCreateInstructorReturn() {
        return createInstructorReturn;
    }

    /**
     * Sets the value of the createInstructorReturn property.
     * 
     */
    public void setCreateInstructorReturn(boolean value) {
        this.createInstructorReturn = value;
    }

}
