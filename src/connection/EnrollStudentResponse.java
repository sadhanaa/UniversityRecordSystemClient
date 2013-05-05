
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
 *         &lt;element name="enrollStudentReturn" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
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
    "enrollStudentReturn"
})
@XmlRootElement(name = "enrollStudentResponse")
public class EnrollStudentResponse {

    protected boolean enrollStudentReturn;

    /**
     * Gets the value of the enrollStudentReturn property.
     * 
     */
    public boolean isEnrollStudentReturn() {
        return enrollStudentReturn;
    }

    /**
     * Sets the value of the enrollStudentReturn property.
     * 
     */
    public void setEnrollStudentReturn(boolean value) {
        this.enrollStudentReturn = value;
    }

}
