
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
 *         &lt;element name="createStudentReturn" type="{http://www.w3.org/2001/XMLSchema}long"/>
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
    "createStudentReturn"
})
@XmlRootElement(name = "createStudentResponse")
public class CreateStudentResponse {

    protected long createStudentReturn;

    /**
     * Gets the value of the createStudentReturn property.
     * 
     */
    public long getCreateStudentReturn() {
        return createStudentReturn;
    }

    /**
     * Sets the value of the createStudentReturn property.
     * 
     */
    public void setCreateStudentReturn(long value) {
        this.createStudentReturn = value;
    }

}
