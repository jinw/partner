package ca.delmar.partner.domain;

import java.io.Serializable;
import java.util.Collection;

/**
 * Created by jinw on 21/01/14.
 */
public class Address implements Serializable {
    int addressId;
    String addressName;
    String address1;
    String address2;
    String zipCode;
    int cityId;
    String cityName;
    int provStateId;
    String provStateName;
    int countryId;
    String countryName;
    String tel;
    String fax;
    Collection contacts;
    String name;
    String email;

    public Address(int addressId, String addressName, String address1, String address2, int cityId, String cityName, int provStateId, String provStateName, String zipCode, int countryId, String countryName, String tel, String fax, Collection contacts) {
        this.addressId = addressId;
        this.addressName = addressName;
        this.address1 = address1;
        this.address2 = address2;
        this.zipCode = zipCode;
        this.cityId = cityId;
        this.cityName = cityName;
        this.provStateId = provStateId;
        this.provStateName = provStateName;
        this.countryId = countryId;
        this.countryName = countryName;
        this.tel = tel;
        this.fax = fax;
        this.contacts = contacts;
    }

    public Address(int addressId, String addressName, String address1, String address2, int cityId, String cityName, int provStateId, String provStateName, String zipCode, int countryId, String countryName, String tel, String fax, String name, String email) {
        this.addressId = addressId;
        this.addressName = addressName;
        this.address1 = address1;
        this.address2 = address2;
        this.zipCode = zipCode;
        this.cityId = cityId;
        this.cityName = cityName;
        this.provStateId = provStateId;
        this.provStateName = provStateName;
        this.countryId = countryId;
        this.countryName = countryName;
        this.tel = tel;
        this.fax = fax;
        this.name = name;
        this.email = email;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public String getAddressName() {
        return addressName;
    }

    public void setAddressName(String addressName) {
        this.addressName = addressName;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public int getProvStateId() {
        return provStateId;
    }

    public void setProvStateId(int provStateId) {
        this.provStateId = provStateId;
    }

    public String getProvStateName() {
        return provStateName;
    }

    public void setProvStateName(String provStateName) {
        this.provStateName = provStateName;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public Collection getContacts() {
        return contacts;
    }

    public void setContacts(Collection contacts) {
        this.contacts = contacts;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
