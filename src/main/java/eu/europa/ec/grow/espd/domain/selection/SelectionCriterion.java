package eu.europa.ec.grow.espd.domain.selection;

import eu.europa.ec.grow.espd.domain.Criterion;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

/**
 * Created by vigi on 11/3/15:2:56 PM.
 */
@Data
@XmlType(name = "SelectionCriterion")
@XmlAccessorType(XmlAccessType.FIELD)
@EqualsAndHashCode(callSuper=false)
public class SelectionCriterion extends Criterion {
}