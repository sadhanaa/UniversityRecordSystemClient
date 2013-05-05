
package connection;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import entity.Instructor;


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
 *         &lt;element name="viewAllInstructorsReturn" type="{http://entity}Instructor" maxOccurs="unbounded"/>
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
    "viewAllInstructorsReturn"
})
@XmlRootElement(name = "viewAllInstructorsResponse")
public class ViewAllInstructorsResponse {

    @XmlElement(required = true)
    protected List<Instructor> viewAllInstructorsReturn;

    /**
     * Gets the value of the viewAllInstructorsReturn property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the viewAllInstructorsReturn property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getViewAllInstructorsReturn().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Instructor }
     * 
     * 
     */
    public List<Instructor> getViewAllInstructorsReturn() {
        if (viewAllInstructorsReturn == null) {
            viewAllInstructorsReturn = new ArrayList<Instructor>();
        }
        return this.viewAllInstructorsReturn;
    }

}
