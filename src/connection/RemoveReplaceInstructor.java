
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
 *         &lt;element name="removeInsructor" type="{http://www.w3.org/2001/XMLSchema}long"/>
 *         &lt;element name="replaceInstructor" type="{http://www.w3.org/2001/XMLSchema}long"/>
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
    "removeInsructor",
    "replaceInstructor",
    "idcourse"
})
@XmlRootElement(name = "removeReplaceInstructor")
public class RemoveReplaceInstructor {

    protected long removeInsructor;
    protected long replaceInstructor;
    protected long idcourse;

    /**
     * Gets the value of the removeInsructor property.
     * 
     */
    public long getRemoveInsructor() {
        return removeInsructor;
    }

    /**
     * Sets the value of the removeInsructor property.
     * 
     */
    public void setRemoveInsructor(long value) {
        this.removeInsructor = value;
    }

    /**
     * Gets the value of the replaceInstructor property.
     * 
     */
    public long getReplaceInstructor() {
        return replaceInstructor;
    }

    /**
     * Sets the value of the replaceInstructor property.
     * 
     */
    public void setReplaceInstructor(long value) {
        this.replaceInstructor = value;
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
