package com.devsuperior.dslearnbds.entities;

import java.io.Serializable;
import java.time.Instant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.devsuperior.dslearnbds.entities.pk.EnrollmentPK;

@Entity
@Table(name = "tb_enrollment")
public class Enrollment implements Serializable {
	
	private static final long serialVersionUID = 2690544989673830184L;

	@EmbeddedId
	private EnrollmentPK id = new EnrollmentPK(); //preciso instanciar
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant enrollMoment;
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant refoundMoment;
	
	private boolean available;
	private boolean onlyUpdate;

	//use Set quando não puder ter repetição e o List quando puder repetir
	@ManyToMany(mappedBy = "enrollmensDone") //atributo que mapeei na outra ponta
	private Set<Lesson> lesssonsDone = new HashSet<>();
	
	@OneToMany
	private List<Deliver> deliveries = new ArrayList<>();
	
	public Enrollment() {}

	public Enrollment(User user, Offer offer, Instant enrollMoment, Instant refoundMoment, boolean available,
			boolean onlyUpdate) {
		
		this.id.setUser(user);
		this.id.setOffer(offer);
		
		this.enrollMoment = enrollMoment;
		this.refoundMoment = refoundMoment;
		this.available = available;
		this.onlyUpdate = onlyUpdate;
	}

	/** feito manualmente para facilitar o uso da classe */
	public User getStudent() {
		return id.getUser();
	}
	
	public void setStudent(User user) {
		id.setUser(user);
	}
	
	public Offer getOffer() {
		return id.getOffer();
	}
	
	public void setOffer(Offer offer) {
		id.setOffer(offer);
	}
	/** --- */

	public Instant getEnrollMoment() {
		return enrollMoment;
	}

	public void setEnrollMoment(Instant enrollMoment) {
		this.enrollMoment = enrollMoment;
	}

	public Instant getRefoundMoment() {
		return refoundMoment;
	}

	public void setRefoundMoment(Instant refoundMoment) {
		this.refoundMoment = refoundMoment;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public boolean isOnlyUpdate() {
		return onlyUpdate;
	}

	public void setOnlyUpdate(boolean onlyUpdate) {
		this.onlyUpdate = onlyUpdate;
	}
	
	public Set<Lesson> getLesssonsDone() {
		return lesssonsDone;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Enrollment other = (Enrollment) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public List<Deliver> getDeliveries() {
		return deliveries;
	}
	
}
