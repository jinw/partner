package ca.delmar.partner.controller;

import ca.delmar.partner.domain.Address;
import ca.delmar.partner.domain.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by jinw on 21/01/14.
 */
@Controller
@RequestMapping("/indigo")
public class FindAgentsController {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @RequestMapping("/agents")
    public String findAgents(@RequestParam(value = "addr", required = false) String addressName,
                             @RequestParam(value = "country", defaultValue = "276") String country,
                             @RequestParam(value = "mode", defaultValue = "2") String mode,
                             @RequestParam(value = "com", defaultValue = "1") String company,
                             Model model) {
        List<Address> agents;
        if (addressName != null && !addressName.equals(""))  {
            agents = findAgentsByAddressName(addressName, mode, company);
        } else {
            agents = findAgentsByCountry(country, mode, company);
        }
        model.addAttribute("agents", agents);
        model.addAttribute("mode", mode);
        model.addAttribute("country", country);
        return "agents";
    }

    // ------- service methods --------
    public List<Address> findAgentsByCountry(String countryId, String modeId, String siteId) {
        List<Address> lines = jdbcTemplate.query(SQL_FIND_AGENTS_BY_COUNTRY, new Object[]{countryId, modeId, siteId}, new AddressMapper());
        List<Address> result = transformAddresses(lines);
        return result;
    }

    public List<Address> findAgentsByAddressName(String addressName, String modeId, String siteId) {
        List<Address> lines = jdbcTemplate.query(SQL_FIND_AGENTS_BY_ADDRESSNAME, new Object[]{"%" + addressName + "%", modeId, siteId}, new AddressMapper());
        List<Address> result = transformAddresses(lines);
        return result;
    }

    public List<Address> transformAddresses(List<Address> contactLine) {
        List<Address> result = new ArrayList<Address>();
        int addressId = 0;
        String addressName = "";
        String address1 = "";
        String address2 = "";
        String zipCode = "";
        int cityId = 0;
        String cityName = "";
        int provStateId = 0;
        String provStateName = "";
        int countryId = 0;
        String countryName = "";
        String tel = "";
        String fax = "";
        String email = "";
        String name = "";
        Collection contacts = new ArrayList();
        int lastAddressId = -1;
        for (Address rs : contactLine) {
            addressId = rs.getAddressId();
            addressName = rs.getAddressName();
            address1 = rs.getAddress1();
            address2 = rs.getAddress2();
            cityId = rs.getCityId();
            cityName = rs.getCityName();
            provStateId = rs.getProvStateId();
            provStateName = rs.getProvStateName();
            zipCode = rs.getZipCode();
            countryId = rs.getCountryId();
            countryName = rs.getCountryName();
            tel = rs.getTel();
            name = rs.getName();
            email = rs.getEmail();
            Contact contact = new Contact(name, email);
            if (lastAddressId != addressId) {
                contacts = new ArrayList();
                contacts.add(contact);
                Address address = new Address(addressId, addressName, address1, address2, cityId, cityName, provStateId, provStateName, zipCode, countryId, countryName, tel, fax, contacts);
                result.add(address);
            } else {
                contacts.add(contact);
            }
            lastAddressId = addressId;
        }
        return result;
    }

    private static final class AddressMapper implements RowMapper<Address> {
        public Address mapRow(ResultSet rs, int rowNum) throws SQLException {
            int addressId = rs.getInt("aaid");
            String addressName = rs.getString("agentname");
            String address1 = rs.getString("address1");
            String address2 = rs.getString("address2");
            int cityId = rs.getInt("cityid");
            String cityName = rs.getString("cityname");
            int provStateId = rs.getInt("provstateid");
            String provStateName = rs.getString("provstatename");
            String zipCode = rs.getString("zipcode");
            int countryId = rs.getInt("countryid");
            String countryName = rs.getString("countryname");
            String tel = rs.getString("tel");
            String fax = rs.getString("fax");
            String name = rs.getString("contactname");
            String email = rs.getString("contactemail");
            Address address = new Address(addressId, addressName, address1, address2, cityId, cityName, provStateId, provStateName, zipCode, countryId, countryName, tel, fax, name, email);
            return address;
        }
    }

    private static final String SQL_FIND_AGENTS_BY_COUNTRY = "SELECT aa.accountadressname as agentname, " +
            "   aa.accountaddressid as aaid, aa.ADDRESS1 as address1, aa.ADDRESS2 as address2, " +
            "   aa.cityid as cityid, l.cityname as cityname, " +
            "   aa.PROVSTATEID as provstateid, " +
            "   pl.provstatename as provstatename, " +
            "   aa.zipcode as zipcode, aa.countryid as countryid, " +
            "   cl.countryname as countryname, " +
            "   aa.tel as tel, aa.fax as fax, " +
            "   acctserv.primaryagent as primaryagent, " +
            "   aac.name as contactname, aac.email as contactemail  " +
            "   from tblaccount a  " +
            "   inner join tblaccountaddress aa on a.accountid = aa.accountid " +
            "   inner join tblaccountaddresscontact aac on aa.accountaddressid = aac.accountaddressid " +
            "   inner join tblaccountservice acctserv on aa.accountaddressid = acctserv.accountaddressid " +
            "   INNER JOIN TBLCITY CITY ON aa.cityid = city.cityid " +
            "   INNER JOIN TBLCITYLANGUAGE L ON CITY.CITYID = L.CITYID and l.languageid = 1" +
            "   INNER JOIN TBLPROVSTATELANGUAGE PL ON CITY.PROVSTATEID = PL.PROVSTATEID and pl.languageid = 1 " +
            "   INNER JOIN TBLCOUNTRYLANGUAGE CL ON CITY.COUNTRYID = CL.COUNTRYID and cl.languageid = 1 " +
            "   WHERE city.countryId = ? " +
            "   and a.isactive = 1 and aa.isactive = 1 and aac.isactive = 1 " +
            "   and a.accounttypeid = 2 and acctserv.freighttypeid = ? " +
            "   and acctserv.companyid = ? and acctserv.primaryagent = 1 " +
            "   order by aa.accountaddressid";

    private static final String SQL_FIND_AGENTS_BY_ADDRESSNAME = "SELECT aa.accountadressname as agentname, " +
            "   aa.accountaddressid as aaid, aa.ADDRESS1 as address1, aa.ADDRESS2 as address2, " +
            "   aa.cityid as cityid, l.cityname as cityname, " +
            "   aa.PROVSTATEID as provstateid, " +
            "   pl.provstatename as provstatename, " +
            "   aa.zipcode as zipcode, aa.countryid as countryid, " +
            "   cl.countryname as countryname, " +
            "   aa.tel as tel, aa.fax as fax, " +
            "   acctserv.primaryagent as primaryagent, " +
            "   aac.name as contactname, aac.email as contactemail  " +
            "   from tblaccount a  " +
            "   inner join tblaccountaddress aa on a.accountid = aa.accountid " +
            "   inner join tblaccountaddresscontact aac on aa.accountaddressid = aac.accountaddressid " +
            "   inner join tblaccountservice acctserv on aa.accountaddressid = acctserv.accountaddressid " +
            "   INNER JOIN TBLCITY CITY ON aa.cityid = city.cityid " +
            "   INNER JOIN TBLCITYLANGUAGE L ON CITY.CITYID = L.CITYID and l.languageid = 1" +
            "   INNER JOIN TBLPROVSTATELANGUAGE PL ON CITY.PROVSTATEID = PL.PROVSTATEID and pl.languageid = 1 " +
            "   INNER JOIN TBLCOUNTRYLANGUAGE CL ON CITY.COUNTRYID = CL.COUNTRYID and cl.languageid = 1 " +
            "   WHERE aa.accountadressname LIKE ? " +
            "   and a.isactive = 1 and aa.isactive = 1 and aac.isactive = 1 " +
            "   and a.accounttypeid = 2 and acctserv.freighttypeid = ? " +
            "   and acctserv.companyid = ? and acctserv.primaryagent = 1 " +
            "   order by aa.accountaddressid";

}
