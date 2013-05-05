
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
 *         &lt;element name="idperson" type="{http://www.w3.org/2001/XMLSchema}long"/>
 *         &lt;element name="idcourse" type="{http://www.w3.org/2001/XMLSchema}long"/>
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
    "idperson",
    "idcourse"
})
@XmlRootElement(name = "enrollStudent")
public class EnrollStudent {

    protected long idperson;
    protected long idcourse;

    /**
     * Gets the value of the idperson property.
     * 
     */
    public long getIdperson() {
        return idperson;
    }

    /**
     * Sets the value of the idperson property.
     * 
     */
    public void setIdperson(long value) {
        this.idperson = value;
    }

    /**
     * Gets the value of the idcourse property.
     * 
     */
    public long getIdcourse() {
        return idcourse;
    }

    /**
     * Sets the value of the idcourse property.
     * 
     */
    public void setIdcourse(long value) {
        this.idcourse = value;
    }

}
