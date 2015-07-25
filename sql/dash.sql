
--
-- Table structure for table `case`
--

CREATE TABLE IF NOT EXISTS `case` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(200) NOT NULL,
  `client_number` varchar(12) NOT NULL,
  `medcoref` varchar(12) NOT NULL,
  `agency_name` varchar(180) DEFAULT NULL,
  `agency_ref` varchar(100) DEFAULT NULL,
  `solicitor_name` varchar(180) DEFAULT NULL,
  `solicitor_ref` varchar(100) DEFAULT NULL,
  `case_dob` varchar(18) NOT NULL,
  `case_doa` varchar(18) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`case_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `citywithpost`
--

CREATE TABLE IF NOT EXISTS `citywithpost` (
  `city` varchar(200) NOT NULL,
  `postcode` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE IF NOT EXISTS `clinic` (
  `clinic_id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_name` varchar(120) NOT NULL,
  `clinic_address1` varchar(100) NOT NULL,
  `clinic_address2` varchar(100) NOT NULL,
  `clinic_city` varchar(120) NOT NULL,
  `clinic_pcode` varchar(20) NOT NULL,
  `created_on` varchar(15) NOT NULL,
  `exp_id` int(11) NOT NULL,
  PRIMARY KEY (`clinic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clinic_date`
--

CREATE TABLE IF NOT EXISTS `clinic_date` (
  `diary_id` int(11) NOT NULL AUTO_INCREMENT,
  `expert_id` int(11) NOT NULL,
  `clinic_id` varchar(100) NOT NULL,
  `clinic_date` varchar(15) NOT NULL,
  `clinic_date2` varchar(15) NOT NULL,
  `created_on` varchar(15) NOT NULL,
  PRIMARY KEY (`diary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clinic_tmslot`
--

CREATE TABLE IF NOT EXISTS `clinic_tmslot` (
  `slot-id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic-id` varchar(80) NOT NULL,
  `slot-time` varchar(18) NOT NULL,
  `case-id` varchar(10) DEFAULT NULL,
  `client-name` varchar(180) DEFAULT NULL,
  `attended_at` varchar(16) DEFAULT NULL,
  `usr_id` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`slot-id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE IF NOT EXISTS `expert` (
  `exp_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `exp_name` varchar(150) NOT NULL,
  `exp_typ` varchar(200) NOT NULL,
  `exp_interest` varchar(200) NOT NULL,
  `exp_gmcno` varchar(17) DEFAULT NULL,
  `exp_number` varchar(16) NOT NULL,
  `exp_address1` varchar(150) NOT NULL,
  `exp_address2` varchar(150) NOT NULL,
  `exp_pcode` varchar(14) NOT NULL,
  `exp_email` varchar(130) NOT NULL,
  `exp_cv` varchar(170) NOT NULL,
  `exp_AppHours` tinyint(4) DEFAULT '0',
  `created_at` varchar(15) NOT NULL,
  `updated_at` varchar(15) NOT NULL,
  KEY `exp_id` (`exp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `usr_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `usr_typ` varchar(13) NOT NULL,
  `usr_nme` varchar(120) NOT NULL,
  `usr_pass` varchar(120) NOT NULL,
  `usr_hash` varchar(150) NOT NULL,
  `usr_orgid` int(11) NOT NULL,
  `caseman_id` int(11) NOT NULL DEFAULT '2000',
  `usr_valid` varchar(10) NOT NULL,
  `usr_dt` varchar(20) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE IF NOT EXISTS `organisation` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(120) NOT NULL,
  `org_typ` varchar(100) NOT NULL,
  `org_contact` varchar(80) NOT NULL,
  `org_pcode` varchar(12) NOT NULL,
  `org_address1` varchar(120) NOT NULL,
  `org_address2` varchar(120) NOT NULL,
  `org_telephone` varchar(20) NOT NULL,
  `org_email` varchar(100) NOT NULL,
  `org_confirmation` varchar(80) NOT NULL,
  `org_validation` varchar(10) NOT NULL DEFAULT 'no-confirm',
  `created_at` varchar(16) NOT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `outcodepostcodes`
--

CREATE TABLE IF NOT EXISTS `outcodepostcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outcode` varchar(4) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `lon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;
