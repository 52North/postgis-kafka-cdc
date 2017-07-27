
--
-- TOC entry 261 (class 1259 OID 20523)
-- Name: blobvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blobvalue (
    observationid bigint NOT NULL,
    value oid
);


ALTER TABLE blobvalue OWNER TO postgres;

--
-- TOC entry 4233 (class 0 OID 0)
-- Dependencies: 261
-- Name: TABLE blobvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE blobvalue IS 'Value table for blob observation';


--
-- TOC entry 4234 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN blobvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN blobvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4235 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN blobvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN blobvalue.value IS 'Blob observation value';


--
-- TOC entry 262 (class 1259 OID 20528)
-- Name: booleanvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE booleanvalue (
    observationid bigint NOT NULL,
    value character(1),
    CONSTRAINT booleanvalue_value_check CHECK ((value = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT booleanvalue_value_check1 CHECK ((value = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE booleanvalue OWNER TO postgres;

--
-- TOC entry 4236 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE booleanvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE booleanvalue IS 'Value table for boolean observation';


--
-- TOC entry 4237 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN booleanvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN booleanvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4238 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN booleanvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN booleanvalue.value IS 'Boolean observation value';


--
-- TOC entry 263 (class 1259 OID 20535)
-- Name: categoryvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categoryvalue (
    observationid bigint NOT NULL,
    value character varying(255)
);


ALTER TABLE categoryvalue OWNER TO postgres;

--
-- TOC entry 4239 (class 0 OID 0)
-- Dependencies: 263
-- Name: TABLE categoryvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE categoryvalue IS 'Value table for category observation';


--
-- TOC entry 4240 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categoryvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4241 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categoryvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryvalue.value IS 'Category observation value';


--
-- TOC entry 264 (class 1259 OID 20540)
-- Name: codespace; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE codespace (
    codespaceid bigint NOT NULL,
    codespace character varying(255) NOT NULL
);


ALTER TABLE codespace OWNER TO postgres;

--
-- TOC entry 4242 (class 0 OID 0)
-- Dependencies: 264
-- Name: TABLE codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE codespace IS 'Table to store the gml:identifier and gml:name codespace information. Mapping file: mapping/core/Codespace.hbm.xml';


--
-- TOC entry 4243 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN codespace.codespaceid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN codespace.codespaceid IS 'Table primary key, used for relations';


--
-- TOC entry 4244 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN codespace.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN codespace.codespace IS 'The codespace value';


--
-- TOC entry 293 (class 1259 OID 21046)
-- Name: codespaceid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE codespaceid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE codespaceid_seq OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 20545)
-- Name: compositephenomenon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE compositephenomenon (
    parentobservablepropertyid bigint NOT NULL,
    childobservablepropertyid bigint NOT NULL
);


ALTER TABLE compositephenomenon OWNER TO postgres;

--
-- TOC entry 4245 (class 0 OID 0)
-- Dependencies: 265
-- Name: TABLE compositephenomenon; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE compositephenomenon IS 'NOT YET USED! Relation table to store observableProperty hierarchies, aka compositePhenomenon. E.g. define a parent in a query and all childs are also contained in the response. Mapping file: mapping/transactional/TObservableProperty.hbm.xml';


--
-- TOC entry 4246 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN compositephenomenon.parentobservablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN compositephenomenon.parentobservablepropertyid IS 'Foreign Key (FK) to the related parent observableProperty. Contains "observableProperty".observablePropertyid';


--
-- TOC entry 4247 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN compositephenomenon.childobservablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN compositephenomenon.childobservablepropertyid IS 'Foreign Key (FK) to the related child observableProperty. Contains "observableProperty".observablePropertyid';


--
-- TOC entry 266 (class 1259 OID 20550)
-- Name: countvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countvalue (
    observationid bigint NOT NULL,
    value integer
);


ALTER TABLE countvalue OWNER TO postgres;

--
-- TOC entry 4248 (class 0 OID 0)
-- Dependencies: 266
-- Name: TABLE countvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE countvalue IS 'Value table for count observation';


--
-- TOC entry 4249 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN countvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN countvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4250 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN countvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN countvalue.value IS 'Count observation value';


--
-- TOC entry 267 (class 1259 OID 20555)
-- Name: featureofinterest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE featureofinterest (
    featureofinterestid bigint NOT NULL,
    hibernatediscriminator character(1) NOT NULL,
    featureofinteresttypeid bigint NOT NULL,
    identifier character varying(255),
    codespace bigint,
    name character varying(255),
    codespacename bigint,
    description character varying(255),
    geom geometry,
    descriptionxml text,
    url character varying(255)
);


ALTER TABLE featureofinterest OWNER TO postgres;

--
-- TOC entry 4251 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE featureofinterest; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE featureofinterest IS 'Table to store the FeatureOfInterest information. Mapping file: mapping/core/FeatureOfInterest.hbm.xml';


--
-- TOC entry 4252 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.featureofinterestid IS 'Table primary key, used for relations';


--
-- TOC entry 4253 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.featureofinteresttypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.featureofinteresttypeid IS 'Relation/foreign key to the featureOfInterestType table. Describes the type of the featureOfInterest. Contains "featureOfInterestType".featureOfInterestTypeId';


--
-- TOC entry 4254 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.identifier IS 'The identifier of the featureOfInterest, gml:identifier. Used as parameter for queries. Optional but unique';


--
-- TOC entry 4255 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4256 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.name IS 'The name of the featureOfInterest, gml:name. Optional';


--
-- TOC entry 4257 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.codespacename IS 'The name of the featureOfInterest, gml:name. Optional';


--
-- TOC entry 4258 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.description IS 'Description of the featureOfInterest, gml:description. Optional';


--
-- TOC entry 4259 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.geom; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.geom IS 'The geometry of the featureOfInterest (composed of the “latitude” and “longitude”) . Optional';


--
-- TOC entry 4260 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.descriptionxml; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.descriptionxml IS 'XML description of the feature, used when transactional profile is supported . Optional';


--
-- TOC entry 4261 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN featureofinterest.url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.url IS 'Reference URL to the feature if it is stored in another service, e.g. WFS. Optional but unique';


--
-- TOC entry 294 (class 1259 OID 21048)
-- Name: featureofinterestid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE featureofinterestid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE featureofinterestid_seq OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 20563)
-- Name: featureofinteresttype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE featureofinteresttype (
    featureofinteresttypeid bigint NOT NULL,
    featureofinteresttype character varying(255) NOT NULL
);


ALTER TABLE featureofinteresttype OWNER TO postgres;

--
-- TOC entry 4262 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE featureofinteresttype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE featureofinteresttype IS 'Table to store the FeatureOfInterestType information. Mapping file: mapping/core/FeatureOfInterestType.hbm.xml';


--
-- TOC entry 4263 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN featureofinteresttype.featureofinteresttypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinteresttype.featureofinteresttypeid IS 'Table primary key, used for relations';


--
-- TOC entry 4264 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN featureofinteresttype.featureofinteresttype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinteresttype.featureofinteresttype IS 'The featureOfInterestType value, e.g. http://www.opengis.net/def/samplingFeatureType/OGC-OM/2.0/SF_SamplingPoint (OGC OM 2.0 specification) for point features';


--
-- TOC entry 295 (class 1259 OID 21050)
-- Name: featureofinteresttypeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE featureofinteresttypeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE featureofinteresttypeid_seq OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 20568)
-- Name: featurerelation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE featurerelation (
    parentfeatureid bigint NOT NULL,
    childfeatureid bigint NOT NULL
);


ALTER TABLE featurerelation OWNER TO postgres;

--
-- TOC entry 4265 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE featurerelation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE featurerelation IS 'Relation table to store feature hierarchies. E.g. define a parent in a query and all childs are also contained in the response. Mapping file: mapping/transactional/TFeatureOfInterest.hbm.xml';


--
-- TOC entry 4266 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN featurerelation.parentfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featurerelation.parentfeatureid IS 'Foreign Key (FK) to the related parent featureOfInterest. Contains "featureOfInterest".featureOfInterestid';


--
-- TOC entry 4267 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN featurerelation.childfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featurerelation.childfeatureid IS 'Foreign Key (FK) to the related child featureOfInterest. Contains "featureOfInterest".featureOfInterestid';


--
-- TOC entry 270 (class 1259 OID 20573)
-- Name: geometryvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE geometryvalue (
    observationid bigint NOT NULL,
    value geometry
);


ALTER TABLE geometryvalue OWNER TO postgres;

--
-- TOC entry 4268 (class 0 OID 0)
-- Dependencies: 270
-- Name: TABLE geometryvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE geometryvalue IS 'Value table for geometry observation';


--
-- TOC entry 4269 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN geometryvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN geometryvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4270 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN geometryvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN geometryvalue.value IS 'Geometry observation value';


--
-- TOC entry 259 (class 1259 OID 20495)
-- Name: inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inventory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inventory_id_seq OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 20581)
-- Name: numericvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE numericvalue (
    observationid bigint NOT NULL,
    value double precision
);


ALTER TABLE numericvalue OWNER TO postgres;

--
-- TOC entry 4271 (class 0 OID 0)
-- Dependencies: 271
-- Name: TABLE numericvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE numericvalue IS 'Value table for numeric/Measurment observation';


--
-- TOC entry 4272 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN numericvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4273 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN numericvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericvalue.value IS 'Numeric/Measurment observation value';


--
-- TOC entry 272 (class 1259 OID 20586)
-- Name: observableproperty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observableproperty (
    observablepropertyid bigint NOT NULL,
    hibernatediscriminator character(1) NOT NULL,
    identifier character varying(255) NOT NULL,
    codespace bigint,
    name character varying(255),
    codespacename bigint,
    description character varying(255),
    disabled character(1) DEFAULT 'F'::bpchar NOT NULL,
    CONSTRAINT observableproperty_disabled_check CHECK ((disabled = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE observableproperty OWNER TO postgres;

--
-- TOC entry 4274 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE observableproperty; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observableproperty IS 'Table to store the ObservedProperty/Phenomenon information. Mapping file: mapping/core/ObservableProperty.hbm.xml';


--
-- TOC entry 4275 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN observableproperty.observablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.observablepropertyid IS 'Table primary key, used for relations';


--
-- TOC entry 4276 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN observableproperty.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.identifier IS 'The identifier of the observableProperty, gml:identifier. Used as parameter for queries. Unique';


--
-- TOC entry 4277 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN observableproperty.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4278 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN observableproperty.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.name IS 'The name of the observableProperty, gml:name. Optional';


--
-- TOC entry 4279 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN observableproperty.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.codespacename IS 'Relation/foreign key to the codespace table. Contains the gml:name codespace. Optional';


--
-- TOC entry 4280 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN observableproperty.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.description IS 'Description of the observableProperty, gml:description. Optional';


--
-- TOC entry 4281 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN observableproperty.disabled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.disabled IS 'For later use by the SOS. Indicator if this observableProperty should not be provided by the SOS.';


--
-- TOC entry 296 (class 1259 OID 21052)
-- Name: observablepropertyid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE observablepropertyid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE observablepropertyid_seq OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 20596)
-- Name: observation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observation (
    observationid bigint NOT NULL,
    seriesid bigint NOT NULL,
    phenomenontimestart timestamp without time zone NOT NULL,
    phenomenontimeend timestamp without time zone NOT NULL,
    resulttime timestamp without time zone NOT NULL,
    deleted character(1) DEFAULT 'F'::bpchar NOT NULL,
    validtimestart timestamp without time zone,
    validtimeend timestamp without time zone,
    samplinggeometry geometry,
    identifier character varying(255),
    codespace bigint,
    name character varying(255),
    codespacename bigint,
    description character varying(255),
    unitid bigint,
    CONSTRAINT observation_deleted_check CHECK ((deleted = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE observation OWNER TO postgres;

--
-- TOC entry 4282 (class 0 OID 0)
-- Dependencies: 273
-- Name: TABLE observation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observation IS 'Stores the observations. Mapping file: mapping/series/observation/SeriesObservation.hbm.xml';


--
-- TOC entry 4283 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN observation.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.identifier IS 'The identifier of the observation, gml:identifier. Used as parameter for queries. Optional but unique';


--
-- TOC entry 4284 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN observation.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4285 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN observation.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.name IS 'The name of the observation, gml:name. Optional';


--
-- TOC entry 4286 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN observation.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.codespacename IS 'The name of the observation, gml:name. Optional';


--
-- TOC entry 4287 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN observation.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.description IS 'Description of the observation, gml:description. Optional';


--
-- TOC entry 4288 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN observation.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.unitid IS 'Foreign Key (FK) to the related unit of measure. Contains "unit".unitid. Optional';


--
-- TOC entry 274 (class 1259 OID 20606)
-- Name: observationconstellation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observationconstellation (
    observationconstellationid bigint NOT NULL,
    observablepropertyid bigint NOT NULL,
    procedureid bigint NOT NULL,
    observationtypeid bigint,
    offeringid bigint NOT NULL,
    deleted character(1) DEFAULT 'F'::bpchar NOT NULL,
    hiddenchild character(1) DEFAULT 'F'::bpchar NOT NULL,
    CONSTRAINT observationconstellation_deleted_check CHECK ((deleted = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT observationconstellation_hiddenchild_check CHECK ((hiddenchild = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE observationconstellation OWNER TO postgres;

--
-- TOC entry 4289 (class 0 OID 0)
-- Dependencies: 274
-- Name: TABLE observationconstellation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observationconstellation IS 'Table to store the ObservationConstellation information. Contains information about the constellation of observableProperty, procedure, offering and the observationType. Mapping file: mapping/core/ObservationConstellation.hbm.xml';


--
-- TOC entry 4290 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN observationconstellation.observationconstellationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.observationconstellationid IS 'Table primary key, used for relations';


--
-- TOC entry 4291 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN observationconstellation.observablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.observablepropertyid IS 'Foreign Key (FK) to the related observableProperty. Contains "observableproperty".observablepropertyid';


--
-- TOC entry 4292 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN observationconstellation.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.procedureid IS 'Foreign Key (FK) to the related procedure. Contains "procedure".procedureid';


--
-- TOC entry 4293 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN observationconstellation.observationtypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.observationtypeid IS 'Foreign Key (FK) to the related observableProperty. Contains "observationtype".observationtypeid';


--
-- TOC entry 4294 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN observationconstellation.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.offeringid IS 'Foreign Key (FK) to the related observableProperty. Contains "offering".offeringid';


--
-- TOC entry 4295 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN observationconstellation.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.deleted IS 'Flag to indicate that this observationConstellation is deleted or not. Set if the related procedure is deleted via DeleteSensor operation (OGC SWES 2.0 - DeleteSensor operation)';


--
-- TOC entry 4296 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN observationconstellation.hiddenchild; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.hiddenchild IS 'Flag to indicate that this observationConstellations procedure is a child procedure of another procedure. If true, the related procedure is not contained in OGC SOS 2.0 Capabilities but in OGC SOS 1.0.0 Capabilities.';


--
-- TOC entry 297 (class 1259 OID 21054)
-- Name: observationconstellationid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE observationconstellationid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE observationconstellationid_seq OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 20615)
-- Name: observationhasoffering; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observationhasoffering (
    observationid bigint NOT NULL,
    offeringid bigint NOT NULL
);


ALTER TABLE observationhasoffering OWNER TO postgres;

--
-- TOC entry 4297 (class 0 OID 0)
-- Dependencies: 275
-- Name: TABLE observationhasoffering; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observationhasoffering IS 'Table to store relations between observation and associated offerings. Mapping file: mapping/ereporting/EReportingObservation.hbm.xml';


--
-- TOC entry 298 (class 1259 OID 21056)
-- Name: observationid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE observationid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE observationid_seq OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 20620)
-- Name: observationtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observationtype (
    observationtypeid bigint NOT NULL,
    observationtype character varying(255) NOT NULL
);


ALTER TABLE observationtype OWNER TO postgres;

--
-- TOC entry 4298 (class 0 OID 0)
-- Dependencies: 276
-- Name: TABLE observationtype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observationtype IS 'Table to store the observationTypes. Mapping file: mapping/core/ObservationType.hbm.xml';


--
-- TOC entry 4299 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN observationtype.observationtypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationtype.observationtypeid IS 'Table primary key, used for relations';


--
-- TOC entry 4300 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN observationtype.observationtype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationtype.observationtype IS 'The observationType value, e.g. http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement (OGC OM 2.0 specification) for OM_Measurement';


--
-- TOC entry 299 (class 1259 OID 21058)
-- Name: observationtypeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE observationtypeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE observationtypeid_seq OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 20625)
-- Name: offering; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE offering (
    offeringid bigint NOT NULL,
    hibernatediscriminator character(1) NOT NULL,
    identifier character varying(255) NOT NULL,
    codespace bigint,
    name character varying(255),
    codespacename bigint,
    description character varying(255),
    disabled character(1) DEFAULT 'F'::bpchar NOT NULL,
    CONSTRAINT offering_disabled_check CHECK ((disabled = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE offering OWNER TO postgres;

--
-- TOC entry 4301 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE offering; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offering IS 'Table to store the offering information. Mapping file: mapping/core/Offering.hbm.xml';


--
-- TOC entry 4302 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN offering.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.offeringid IS 'Table primary key, used for relations';


--
-- TOC entry 4303 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN offering.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.identifier IS 'The identifier of the offering, gml:identifier. Used as parameter for queries. Unique';


--
-- TOC entry 4304 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN offering.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4305 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN offering.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.name IS 'The name of the offering, gml:name. If available, displyed in the contents of the Capabilites. Optional';


--
-- TOC entry 4306 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN offering.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.codespacename IS 'Relation/foreign key to the codespace table. Contains the gml:name codespace. Optional';


--
-- TOC entry 4307 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN offering.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.description IS 'Description of the offering, gml:description. Optional';


--
-- TOC entry 4308 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN offering.disabled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.disabled IS 'For later use by the SOS. Indicator if this offering should not be provided by the SOS.';


--
-- TOC entry 278 (class 1259 OID 20635)
-- Name: offeringallowedfeaturetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE offeringallowedfeaturetype (
    offeringid bigint NOT NULL,
    featureofinteresttypeid bigint NOT NULL
);


ALTER TABLE offeringallowedfeaturetype OWNER TO postgres;

--
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 278
-- Name: TABLE offeringallowedfeaturetype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offeringallowedfeaturetype IS 'Table to store relations between offering and allowed featureOfInterestTypes, defined in InsertSensor request. Mapping file: mapping/transactional/TOffering.hbm.xml';


--
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN offeringallowedfeaturetype.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringallowedfeaturetype.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 4311 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN offeringallowedfeaturetype.featureofinteresttypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringallowedfeaturetype.featureofinteresttypeid IS 'Foreign Key (FK) to the related featureOfInterestTypeId. Contains "featureOfInterestType".featureOfInterestTypeId';


--
-- TOC entry 279 (class 1259 OID 20640)
-- Name: offeringallowedobservationtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE offeringallowedobservationtype (
    offeringid bigint NOT NULL,
    observationtypeid bigint NOT NULL
);


ALTER TABLE offeringallowedobservationtype OWNER TO postgres;

--
-- TOC entry 4312 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE offeringallowedobservationtype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offeringallowedobservationtype IS 'Table to store relations between offering and allowed observationTypes, defined in InsertSensor request. Mapping file: mapping/transactional/TOffering.hbm.xml';


--
-- TOC entry 4313 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN offeringallowedobservationtype.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringallowedobservationtype.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 4314 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN offeringallowedobservationtype.observationtypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringallowedobservationtype.observationtypeid IS 'Foreign Key (FK) to the related observationType. Contains "observationType".observationTypeId';


--
-- TOC entry 280 (class 1259 OID 20645)
-- Name: offeringhasrelatedfeature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE offeringhasrelatedfeature (
    relatedfeatureid bigint NOT NULL,
    offeringid bigint NOT NULL
);


ALTER TABLE offeringhasrelatedfeature OWNER TO postgres;

--
-- TOC entry 4315 (class 0 OID 0)
-- Dependencies: 280
-- Name: TABLE offeringhasrelatedfeature; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offeringhasrelatedfeature IS 'Table to store relations between offering and associated relatedFeatures. Mapping file: mapping/transactional/TOffering.hbm.xml';


--
-- TOC entry 4316 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN offeringhasrelatedfeature.relatedfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringhasrelatedfeature.relatedfeatureid IS 'Foreign Key (FK) to the related relatedFeature. Contains "relatedFeature".relatedFeatureid';


--
-- TOC entry 4317 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN offeringhasrelatedfeature.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringhasrelatedfeature.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 300 (class 1259 OID 21060)
-- Name: offeringid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE offeringid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE offeringid_seq OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 20650)
-- Name: parameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE parameter (
    parameterid bigint NOT NULL,
    observationid bigint NOT NULL,
    definition character varying(255) NOT NULL,
    title character varying(255),
    value oid NOT NULL
);


ALTER TABLE parameter OWNER TO postgres;

--
-- TOC entry 4318 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE parameter; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE parameter IS 'NOT YET USED! Table to store additional obervation information (om:parameter). Mapping file: mapping/transactional/Parameter.hbm.xml';


--
-- TOC entry 4319 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN parameter.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN parameter.parameterid IS 'Table primary key';


--
-- TOC entry 4320 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN parameter.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN parameter.observationid IS 'Foreign Key (FK) to the related observation. Contains "observation".observationid';


--
-- TOC entry 4321 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN parameter.definition; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN parameter.definition IS 'Definition of the additional information';


--
-- TOC entry 4322 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN parameter.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN parameter.title IS 'optional title of the additional information. Optional';


--
-- TOC entry 4323 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN parameter.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN parameter.value IS 'Value of the additional information';


--
-- TOC entry 301 (class 1259 OID 21062)
-- Name: parameterid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE parameterid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE parameterid_seq OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 21064)
-- Name: procdescformatid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE procdescformatid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE procdescformatid_seq OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 20509)
-- Name: procedure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE procedure (
    procedureid bigint NOT NULL,
    hibernatediscriminator character(1) NOT NULL,
    proceduredescriptionformatid bigint NOT NULL,
    identifier character varying(255) NOT NULL,
    codespace bigint,
    name character varying(255),
    codespacename bigint,
    description character varying(255),
    deleted character(1) DEFAULT 'F'::bpchar NOT NULL,
    disabled character(1) DEFAULT 'F'::bpchar NOT NULL,
    descriptionfile text,
    referenceflag character(1) DEFAULT 'F'::bpchar,
    CONSTRAINT procedure_deleted_check CHECK ((deleted = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT procedure_disabled_check CHECK ((disabled = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT procedure_referenceflag_check CHECK ((referenceflag = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE procedure OWNER TO postgres;

--
-- TOC entry 4324 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE procedure; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE procedure IS 'Table to store the procedure/sensor. Mapping file: mapping/core/Procedure.hbm.xml';


--
-- TOC entry 4325 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.procedureid IS 'Table primary key, used for relations';


--
-- TOC entry 4326 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.proceduredescriptionformatid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.proceduredescriptionformatid IS 'Relation/foreign key to the procedureDescriptionFormat table. Describes the format of the procedure description.';


--
-- TOC entry 4327 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.identifier IS 'The identifier of the procedure, gml:identifier. Used as parameter for queries. Unique';


--
-- TOC entry 4328 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4329 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.name IS 'The name of the procedure, gml:name. Optional';


--
-- TOC entry 4330 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.codespacename IS 'Relation/foreign key to the codespace table. Contains the gml:name codespace. Optional';


--
-- TOC entry 4331 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.description IS 'Description of the procedure, gml:description. Optional';


--
-- TOC entry 4332 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.deleted IS 'Flag to indicate that this procedure is deleted or not (OGC SWES 2.0 - DeleteSensor operation)';


--
-- TOC entry 4333 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.disabled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.disabled IS 'For later use by the SOS. Indicator if this procedure should not be provided by the SOS.';


--
-- TOC entry 4334 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.descriptionfile; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.descriptionfile IS 'Field for full (XML) encoded procedure description or link to a procedure description file. Optional';


--
-- TOC entry 4335 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN procedure.referenceflag; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.referenceflag IS 'Flag to indicate that this procedure is a reference procedure of another procedure. Not used by the SOS but by the Sensor Web REST-API';


--
-- TOC entry 282 (class 1259 OID 20658)
-- Name: proceduredescriptionformat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE proceduredescriptionformat (
    proceduredescriptionformatid bigint NOT NULL,
    proceduredescriptionformat character varying(255) NOT NULL
);


ALTER TABLE proceduredescriptionformat OWNER TO postgres;

--
-- TOC entry 4336 (class 0 OID 0)
-- Dependencies: 282
-- Name: TABLE proceduredescriptionformat; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE proceduredescriptionformat IS 'Table to store the ProcedureDescriptionFormat information of procedures. Mapping file: mapping/core/ProcedureDescriptionFormat.hbm.xml';


--
-- TOC entry 4337 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN proceduredescriptionformat.proceduredescriptionformatid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN proceduredescriptionformat.proceduredescriptionformatid IS 'Table primary key, used for relations';


--
-- TOC entry 4338 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN proceduredescriptionformat.proceduredescriptionformat; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN proceduredescriptionformat.proceduredescriptionformat IS 'The procedureDescriptionFormat value, e.g. http://www.opengis.net/sensorML/1.0.1 for procedures descriptions as specified in OGC SensorML 1.0.1';


--
-- TOC entry 303 (class 1259 OID 21066)
-- Name: procedureid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE procedureid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE procedureid_seq OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 20663)
-- Name: relatedfeature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE relatedfeature (
    relatedfeatureid bigint NOT NULL,
    featureofinterestid bigint NOT NULL
);


ALTER TABLE relatedfeature OWNER TO postgres;

--
-- TOC entry 4339 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE relatedfeature; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE relatedfeature IS 'Table to store related feature information used in the OGC SOS 2.0 Capabilities (See also OGC SWES 2.0). Mapping file: mapping/transactionl/RelatedFeature.hbm.xml';


--
-- TOC entry 4340 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN relatedfeature.relatedfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeature.relatedfeatureid IS 'Table primary key, used for relations';


--
-- TOC entry 4341 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN relatedfeature.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeature.featureofinterestid IS 'Foreign Key (FK) to the related featureOfInterest. Contains "featureOfInterest".featureOfInterestid';


--
-- TOC entry 284 (class 1259 OID 20668)
-- Name: relatedfeaturehasrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE relatedfeaturehasrole (
    relatedfeatureid bigint NOT NULL,
    relatedfeatureroleid bigint NOT NULL
);


ALTER TABLE relatedfeaturehasrole OWNER TO postgres;

--
-- TOC entry 4342 (class 0 OID 0)
-- Dependencies: 284
-- Name: TABLE relatedfeaturehasrole; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE relatedfeaturehasrole IS 'Relation table to store relatedFeatures and their associated relatedFeatureRoles. Mapping file: mapping/transactionl/RelatedFeature.hbm.xml';


--
-- TOC entry 4343 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN relatedfeaturehasrole.relatedfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeaturehasrole.relatedfeatureid IS 'Foreign Key (FK) to the related relatedFeature. Contains "relatedFeature".relatedFeatureid';


--
-- TOC entry 4344 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN relatedfeaturehasrole.relatedfeatureroleid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeaturehasrole.relatedfeatureroleid IS 'Foreign Key (FK) to the related relatedFeatureRole. Contains "relatedFeatureRole".relatedFeatureRoleid';


--
-- TOC entry 304 (class 1259 OID 21068)
-- Name: relatedfeatureid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE relatedfeatureid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relatedfeatureid_seq OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 20673)
-- Name: relatedfeaturerole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE relatedfeaturerole (
    relatedfeatureroleid bigint NOT NULL,
    relatedfeaturerole character varying(255) NOT NULL
);


ALTER TABLE relatedfeaturerole OWNER TO postgres;

--
-- TOC entry 4345 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE relatedfeaturerole; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE relatedfeaturerole IS 'Table to store related feature role information used in the OGC SOS 2.0 Capabilities (See also OGC SWES 2.0). Mapping file: mapping/transactionl/RelatedFeatureRole.hbm.xml';


--
-- TOC entry 4346 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN relatedfeaturerole.relatedfeatureroleid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeaturerole.relatedfeatureroleid IS 'Table primary key, used for relations';


--
-- TOC entry 4347 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN relatedfeaturerole.relatedfeaturerole; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeaturerole.relatedfeaturerole IS 'The related feature role definition. See OGC SWES 2.0 specification';


--
-- TOC entry 305 (class 1259 OID 21070)
-- Name: relatedfeatureroleid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE relatedfeatureroleid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relatedfeatureroleid_seq OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 20678)
-- Name: resulttemplate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE resulttemplate (
    resulttemplateid bigint NOT NULL,
    offeringid bigint NOT NULL,
    observablepropertyid bigint NOT NULL,
    procedureid bigint NOT NULL,
    featureofinterestid bigint NOT NULL,
    identifier character varying(255) NOT NULL,
    resultstructure text NOT NULL,
    resultencoding text NOT NULL
);


ALTER TABLE resulttemplate OWNER TO postgres;

--
-- TOC entry 4348 (class 0 OID 0)
-- Dependencies: 286
-- Name: TABLE resulttemplate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE resulttemplate IS 'Table to store resultTemplates (OGC SOS 2.0 result handling profile). Mapping file: mapping/transactionl/ResultTemplate.hbm.xml';


--
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN resulttemplate.resulttemplateid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.resulttemplateid IS 'Table primary key';


--
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN resulttemplate.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN resulttemplate.observablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.observablepropertyid IS 'Foreign Key (FK) to the related observableProperty. Contains "observableProperty".observablePropertyId';


--
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN resulttemplate.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.procedureid IS 'Foreign Key (FK) to the related procedure. Contains "procedure".procedureId';


--
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN resulttemplate.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.featureofinterestid IS 'Foreign Key (FK) to the related featureOfInterest. Contains "featureOfInterest".featureOfInterestid';


--
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN resulttemplate.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.identifier IS 'The resultTemplate identifier, required for InsertResult requests.';


--
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN resulttemplate.resultstructure; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.resultstructure IS 'The resultStructure as XML string. Describes the types and order of the values in a GetResultResponse/InsertResultRequest';


--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN resulttemplate.resultencoding; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.resultencoding IS 'The resultEncoding as XML string. Describes the encoding of the values in a GetResultResponse/InsertResultRequest';


--
-- TOC entry 306 (class 1259 OID 21072)
-- Name: resulttemplateid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE resulttemplateid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resulttemplateid_seq OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 20686)
-- Name: sensorsystem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sensorsystem (
    parentsensorid bigint NOT NULL,
    childsensorid bigint NOT NULL
);


ALTER TABLE sensorsystem OWNER TO postgres;

--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 287
-- Name: TABLE sensorsystem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE sensorsystem IS 'Relation table to store procedure hierarchies. E.g. define a parent in a query and all childs are also contained in the response. Mapping file: mapping/transactional/TProcedure.hbm.xml';


--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN sensorsystem.parentsensorid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sensorsystem.parentsensorid IS 'Foreign Key (FK) to the related parent procedure. Contains "procedure".procedureid';


--
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN sensorsystem.childsensorid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sensorsystem.childsensorid IS 'Foreign Key (FK) to the related child procedure. Contains "procedure".procedureid';


--
-- TOC entry 288 (class 1259 OID 20691)
-- Name: series; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE series (
    seriesid bigint NOT NULL,
    featureofinterestid bigint NOT NULL,
    observablepropertyid bigint NOT NULL,
    procedureid bigint NOT NULL,
    offeringid bigint,
    deleted character(1) DEFAULT 'F'::bpchar NOT NULL,
    published character(1) DEFAULT 'T'::bpchar NOT NULL,
    firsttimestamp timestamp without time zone,
    lasttimestamp timestamp without time zone,
    firstnumericvalue double precision,
    lastnumericvalue double precision,
    unitid bigint,
    CONSTRAINT series_deleted_check CHECK ((deleted = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT series_published_check CHECK ((published = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE series OWNER TO postgres;

--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 288
-- Name: TABLE series; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE series IS 'Table to store a (time-) series which consists of featureOfInterest, observableProperty, and procedure. Mapping file: mapping/series/Series.hbm.xml';


--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.seriesid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.seriesid IS 'Table primary key, used for relations';


--
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.featureofinterestid IS 'Foreign Key (FK) to the related featureOfInterest. Contains "featureOfInterest".featureOfInterestId';


--
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.observablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.observablepropertyid IS 'Foreign Key (FK) to the related observableProperty. Contains "observableproperty".observablepropertyid';


--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.procedureid IS 'Foreign Key (FK) to the related procedure. Contains "procedure".procedureid';


--
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.offeringid IS 'Foreign Key (FK) to the related procedure. Contains "offering".offeringid';


--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.deleted IS 'Flag to indicate that this series is deleted or not. Set if the related procedure is deleted via DeleteSensor operation (OGC SWES 2.0 - DeleteSensor operation)';


--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.published; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.published IS 'Flag to indicate that this series is published or not. A not published series is not contained in GetObservation and GetDataAvailability responses';


--
-- TOC entry 4368 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.firsttimestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.firsttimestamp IS 'The time stamp of the first (temporal) observation associated to this series';


--
-- TOC entry 4369 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.lasttimestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.lasttimestamp IS 'The time stamp of the last (temporal) observation associated to this series';


--
-- TOC entry 4370 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.firstnumericvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.firstnumericvalue IS 'The value of the first (temporal) observation associated to this series';


--
-- TOC entry 4371 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.lastnumericvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.lastnumericvalue IS 'The value of the last (temporal) observation associated to this series';


--
-- TOC entry 4372 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN series.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.unitid IS 'Foreign Key (FK) to the related unit of the first/last numeric values . Contains "unit".unitid';


--
-- TOC entry 307 (class 1259 OID 21074)
-- Name: seriesid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE seriesid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seriesid_seq OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 20700)
-- Name: swedataarrayvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE swedataarrayvalue (
    observationid bigint NOT NULL,
    value text
);


ALTER TABLE swedataarrayvalue OWNER TO postgres;

--
-- TOC entry 4373 (class 0 OID 0)
-- Dependencies: 289
-- Name: TABLE swedataarrayvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE swedataarrayvalue IS 'Value table for SweDataArray observation';


--
-- TOC entry 4374 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN swedataarrayvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN swedataarrayvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4375 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN swedataarrayvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN swedataarrayvalue.value IS 'SweDataArray observation value';


--
-- TOC entry 290 (class 1259 OID 20708)
-- Name: textvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE textvalue (
    observationid bigint NOT NULL,
    value text
);


ALTER TABLE textvalue OWNER TO postgres;

--
-- TOC entry 4376 (class 0 OID 0)
-- Dependencies: 290
-- Name: TABLE textvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE textvalue IS 'Value table for text observation';


--
-- TOC entry 4377 (class 0 OID 0)
-- Dependencies: 290
-- Name: COLUMN textvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4378 (class 0 OID 0)
-- Dependencies: 290
-- Name: COLUMN textvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textvalue.value IS 'Text observation value';


--
-- TOC entry 291 (class 1259 OID 20716)
-- Name: unit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE unit (
    unitid bigint NOT NULL,
    unit character varying(255) NOT NULL
);


ALTER TABLE unit OWNER TO postgres;

--
-- TOC entry 4379 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE unit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE unit IS 'Table to store the unit of measure information, used in observations. Mapping file: mapping/core/Unit.hbm.xml';


--
-- TOC entry 4380 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN unit.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN unit.unitid IS 'Table primary key, used for relations';


--
-- TOC entry 4381 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN unit.unit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN unit.unit IS 'The unit of measure of observations. See http://unitsofmeasure.org/ucum.html';


--
-- TOC entry 308 (class 1259 OID 21076)
-- Name: unitid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE unitid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE unitid_seq OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 20721)
-- Name: validproceduretime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE validproceduretime (
    validproceduretimeid bigint NOT NULL,
    procedureid bigint NOT NULL,
    proceduredescriptionformatid bigint NOT NULL,
    starttime timestamp without time zone NOT NULL,
    endtime timestamp without time zone,
    descriptionxml text NOT NULL
);


ALTER TABLE validproceduretime OWNER TO postgres;

--
-- TOC entry 4382 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE validproceduretime; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE validproceduretime IS 'Table to store procedure descriptions which were inserted or updated via the transactional Profile. Mapping file: mapping/transactionl/ValidProcedureTime.hbm.xml';


--
-- TOC entry 4383 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN validproceduretime.validproceduretimeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.validproceduretimeid IS 'Table primary key';


--
-- TOC entry 4384 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN validproceduretime.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.procedureid IS 'Foreign Key (FK) to the related procedure. Contains "procedure".procedureid';


--
-- TOC entry 4385 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN validproceduretime.proceduredescriptionformatid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.proceduredescriptionformatid IS 'Foreign Key (FK) to the related procedureDescriptionFormat. Contains "procedureDescriptionFormat".procedureDescriptionFormatid';


--
-- TOC entry 4386 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN validproceduretime.starttime; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.starttime IS 'Timestamp since this procedure description is valid';


--
-- TOC entry 4387 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN validproceduretime.endtime; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.endtime IS 'Timestamp since this procedure description is invalid';


--
-- TOC entry 4388 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN validproceduretime.descriptionxml; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.descriptionxml IS 'Procedure description as XML string';


--
-- TOC entry 309 (class 1259 OID 21078)
-- Name: validproceduretimeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE validproceduretimeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE validproceduretimeid_seq OWNER TO postgres;

--
-- TOC entry 4178 (class 0 OID 20523)
-- Dependencies: 261
-- Data for Name: blobvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4179 (class 0 OID 20528)
-- Dependencies: 262
-- Data for Name: booleanvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO booleanvalue (observationid, value) VALUES (21, 'T');
INSERT INTO booleanvalue (observationid, value) VALUES (22, 'T');
INSERT INTO booleanvalue (observationid, value) VALUES (23, 'F');
INSERT INTO booleanvalue (observationid, value) VALUES (24, 'T');
INSERT INTO booleanvalue (observationid, value) VALUES (25, 'F');
INSERT INTO booleanvalue (observationid, value) VALUES (26, 'F');
INSERT INTO booleanvalue (observationid, value) VALUES (27, 'T');
INSERT INTO booleanvalue (observationid, value) VALUES (28, 'T');
INSERT INTO booleanvalue (observationid, value) VALUES (29, 'F');
INSERT INTO booleanvalue (observationid, value) VALUES (30, 'T');


--
-- TOC entry 4180 (class 0 OID 20535)
-- Dependencies: 263
-- Data for Name: categoryvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categoryvalue (observationid, value) VALUES (31, 'test_category_0');
INSERT INTO categoryvalue (observationid, value) VALUES (32, 'test_category_1');
INSERT INTO categoryvalue (observationid, value) VALUES (33, 'test_category_2');
INSERT INTO categoryvalue (observationid, value) VALUES (34, 'test_category_3');
INSERT INTO categoryvalue (observationid, value) VALUES (35, 'test_category_4');
INSERT INTO categoryvalue (observationid, value) VALUES (36, 'test_category_5');
INSERT INTO categoryvalue (observationid, value) VALUES (37, 'test_category_6');
INSERT INTO categoryvalue (observationid, value) VALUES (38, 'test_category_7');
INSERT INTO categoryvalue (observationid, value) VALUES (39, 'test_category_8');
INSERT INTO categoryvalue (observationid, value) VALUES (40, 'test_category_9');


--
-- TOC entry 4181 (class 0 OID 20540)
-- Dependencies: 264
-- Data for Name: codespace; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO codespace (codespaceid, codespace) VALUES (1, 'http://www.opengis.net/def/nil/OGC/0/unknown');


--
-- TOC entry 4389 (class 0 OID 0)
-- Dependencies: 293
-- Name: codespaceid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('codespaceid_seq', 1, true);


--
-- TOC entry 4182 (class 0 OID 20545)
-- Dependencies: 265
-- Data for Name: compositephenomenon; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4183 (class 0 OID 20550)
-- Dependencies: 266
-- Data for Name: countvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO countvalue (observationid, value) VALUES (11, 0);
INSERT INTO countvalue (observationid, value) VALUES (12, 1);
INSERT INTO countvalue (observationid, value) VALUES (13, 2);
INSERT INTO countvalue (observationid, value) VALUES (14, 3);
INSERT INTO countvalue (observationid, value) VALUES (15, 4);
INSERT INTO countvalue (observationid, value) VALUES (16, 5);
INSERT INTO countvalue (observationid, value) VALUES (17, 6);
INSERT INTO countvalue (observationid, value) VALUES (18, 7);
INSERT INTO countvalue (observationid, value) VALUES (19, 8);
INSERT INTO countvalue (observationid, value) VALUES (20, 9);


--
-- TOC entry 4184 (class 0 OID 20555)
-- Dependencies: 267
-- Data for Name: featureofinterest; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (1, 'T', 2, 'http://www.52north.org/test/featureOfInterest/world', 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (2, 'T', 2, 'http://www.52north.org/test/featureOfInterest/1', 1, 'con terra', 1, NULL, '0101000020E61000003F726BD26DE91E407D5EF1D423F14940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (3, 'T', 2, 'http://www.52north.org/test/featureOfInterest/2', 1, 'ESRI', 1, NULL, '0101000020E6100000EB1D6E87864C5DC08255F5F23B074140', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (4, 'T', 2, 'http://www.52north.org/test/featureOfInterest/3', 1, 'Kisters', 1, NULL, '0101000020E610000014AAB2C82E8718400576C70892644940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (5, 'T', 2, 'http://www.52north.org/test/featureOfInterest/4', 1, 'con terra', 1, NULL, '0101000020E61000003F726BD26DE91E407D5EF1D423F14940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (6, 'T', 2, 'http://www.52north.org/test/featureOfInterest/5', 1, 'TU-Dresden', 1, NULL, '0101000020E6100000404EB4AB90722B401DE6CB0BB0834940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (7, 'T', 2, 'http://www.52north.org/test/featureOfInterest/6', 1, 'Hochschule Bochum', 1, NULL, '0101000020E6100000083E062B4E151D4090D959F44EB94940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (8, 'T', 2, 'http://www.52north.org/test/featureOfInterest/7', 1, 'ITC', 1, NULL, '0101000020E610000000958FEE31221140E45F15B9F1054A40', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (9, 'T', 2, 'http://www.52north.org/test/featureOfInterest/8', 1, 'DLZ-IT', 1, NULL, '0101000020E61000000055A4C2D8E22540008C67D0D0574940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (10, 'T', 2, 'http://www.52north.org/test/featureOfInterest/Heiden', 1, 'Heiden', 1, NULL, '0101000020E61000008C118942CBBA1B404D874ECFBBE94940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (11, 'T', 2, 'http://www.52north.org/test/featureOfInterest/Münster/FE101', 1, 'Münster/FE101', 1, NULL, '0101000020E610000099B9C0E5B1861E405473B9C150F94940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (12, 'T', 2, 'http://www.52north.org/test/featureOfInterest/Portland', 1, 'Portland', 1, NULL, '0101000020E61000001DC9E53FA4AB5EC0C3F5285C8FC24640', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (13, 'T', 2, 'http://www.52north.org/test/featureOfInterest/TODO', 1, 'TODO', 1, NULL, '0101000020E610000000000000000000000000000000000000', NULL, NULL);


--
-- TOC entry 4390 (class 0 OID 0)
-- Dependencies: 294
-- Name: featureofinterestid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('featureofinterestid_seq', 13, true);


--
-- TOC entry 4185 (class 0 OID 20563)
-- Dependencies: 268
-- Data for Name: featureofinteresttype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO featureofinteresttype (featureofinteresttypeid, featureofinteresttype) VALUES (1, 'http://www.opengis.net/def/samplingFeatureType/OGC-OM/2.0/SF_SamplingPoint');
INSERT INTO featureofinteresttype (featureofinteresttypeid, featureofinteresttype) VALUES (2, 'http://www.opengis.net/def/nil/OGC/0/unknown');


--
-- TOC entry 4391 (class 0 OID 0)
-- Dependencies: 295
-- Name: featureofinteresttypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('featureofinteresttypeid_seq', 2, true);


--
-- TOC entry 4186 (class 0 OID 20568)
-- Dependencies: 269
-- Data for Name: featurerelation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 2);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 3);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 4);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 5);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 6);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 7);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 8);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 9);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 10);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 11);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 12);
INSERT INTO featurerelation (parentfeatureid, childfeatureid) VALUES (1, 13);


--
-- TOC entry 4187 (class 0 OID 20573)
-- Dependencies: 270
-- Data for Name: geometryvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4392 (class 0 OID 0)
-- Dependencies: 259
-- Name: inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inventory_id_seq', 1, false);


--
-- TOC entry 4188 (class 0 OID 20581)
-- Dependencies: 271
-- Data for Name: numericvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO numericvalue (observationid, value) VALUES (1, 1);
INSERT INTO numericvalue (observationid, value) VALUES (2, 1.10000000000000009);
INSERT INTO numericvalue (observationid, value) VALUES (3, 1.19999999999999996);
INSERT INTO numericvalue (observationid, value) VALUES (4, 1.30000000000000004);
INSERT INTO numericvalue (observationid, value) VALUES (5, 1.39999999999999991);
INSERT INTO numericvalue (observationid, value) VALUES (6, 1.5);
INSERT INTO numericvalue (observationid, value) VALUES (7, 1.60000000000000009);
INSERT INTO numericvalue (observationid, value) VALUES (8, 1.69999999999999996);
INSERT INTO numericvalue (observationid, value) VALUES (9, 1.80000000000000004);
INSERT INTO numericvalue (observationid, value) VALUES (10, 1.89999999999999991);
INSERT INTO numericvalue (observationid, value) VALUES (51, 2);
INSERT INTO numericvalue (observationid, value) VALUES (52, 2.10000000000000009);
INSERT INTO numericvalue (observationid, value) VALUES (53, 2.20000000000000018);
INSERT INTO numericvalue (observationid, value) VALUES (54, 2.29999999999999982);
INSERT INTO numericvalue (observationid, value) VALUES (55, 2.39999999999999991);
INSERT INTO numericvalue (observationid, value) VALUES (56, 2.5);
INSERT INTO numericvalue (observationid, value) VALUES (57, 2.60000000000000009);
INSERT INTO numericvalue (observationid, value) VALUES (58, 2.70000000000000018);
INSERT INTO numericvalue (observationid, value) VALUES (59, 2.79999999999999982);
INSERT INTO numericvalue (observationid, value) VALUES (60, 2.89999999999999991);
INSERT INTO numericvalue (observationid, value) VALUES (61, 3);
INSERT INTO numericvalue (observationid, value) VALUES (62, 3.10000000000000009);
INSERT INTO numericvalue (observationid, value) VALUES (63, 3.20000000000000018);
INSERT INTO numericvalue (observationid, value) VALUES (64, 3.29999999999999982);
INSERT INTO numericvalue (observationid, value) VALUES (65, 3.39999999999999991);
INSERT INTO numericvalue (observationid, value) VALUES (66, 3.5);
INSERT INTO numericvalue (observationid, value) VALUES (67, 3.60000000000000009);
INSERT INTO numericvalue (observationid, value) VALUES (68, 3.70000000000000018);
INSERT INTO numericvalue (observationid, value) VALUES (69, 3.79999999999999982);
INSERT INTO numericvalue (observationid, value) VALUES (70, 3.89999999999999991);
INSERT INTO numericvalue (observationid, value) VALUES (71, 4);
INSERT INTO numericvalue (observationid, value) VALUES (72, 4.09999999999999964);
INSERT INTO numericvalue (observationid, value) VALUES (73, 4.20000000000000018);
INSERT INTO numericvalue (observationid, value) VALUES (74, 4.29999999999999982);
INSERT INTO numericvalue (observationid, value) VALUES (75, 4.40000000000000036);
INSERT INTO numericvalue (observationid, value) VALUES (76, 4.5);
INSERT INTO numericvalue (observationid, value) VALUES (77, 4.59999999999999964);
INSERT INTO numericvalue (observationid, value) VALUES (78, 4.70000000000000018);
INSERT INTO numericvalue (observationid, value) VALUES (79, 4.79999999999999982);
INSERT INTO numericvalue (observationid, value) VALUES (80, 4.90000000000000036);


--
-- TOC entry 4189 (class 0 OID 20586)
-- Dependencies: 272
-- Data for Name: observableproperty; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (1, 'F', 'http://www.52north.org/test/observableProperty/1', 1, NULL, 1, NULL, 'F');
INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (2, 'F', 'http://www.52north.org/test/observableProperty/2', 1, NULL, 1, NULL, 'F');
INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (3, 'F', 'http://www.52north.org/test/observableProperty/3', 1, NULL, 1, NULL, 'F');
INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (4, 'F', 'http://www.52north.org/test/observableProperty/4', 1, NULL, 1, NULL, 'F');
INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (5, 'F', 'http://www.52north.org/test/observableProperty/5', 1, NULL, 1, NULL, 'F');
INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (6, 'F', 'http://www.52north.org/test/observableProperty/6', 1, NULL, 1, NULL, 'F');
INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (7, 'F', 'http://www.52north.org/test/observableProperty/7', 1, NULL, 1, NULL, 'F');
INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (8, 'F', 'http://www.52north.org/test/observableProperty/8', 1, NULL, 1, NULL, 'F');
INSERT INTO observableproperty (observablepropertyid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (9, 'F', 'http://www.52north.org/test/observableProperty/developer', 1, NULL, 1, NULL, 'F');


--
-- TOC entry 4393 (class 0 OID 0)
-- Dependencies: 296
-- Name: observablepropertyid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('observablepropertyid_seq', 9, true);


--
-- TOC entry 4190 (class 0 OID 20596)
-- Dependencies: 273
-- Data for Name: observation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (1, 1, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', NULL, NULL, NULL, 'http://www.52north.org/test/observation/1', 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (2, 1, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', NULL, NULL, NULL, 'http://www.52north.org/test/observation/2', 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (3, 1, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (4, 1, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (5, 1, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (6, 1, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (7, 1, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (8, 1, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (9, 1, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (10, 1, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (11, 2, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (12, 2, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (13, 2, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (14, 2, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (15, 2, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (16, 2, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (17, 2, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (18, 2, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (19, 2, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (20, 2, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (21, 3, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (22, 3, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (23, 3, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (24, 3, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (25, 3, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (26, 3, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (27, 3, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (28, 3, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (29, 3, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (30, 3, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (31, 4, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (32, 4, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (33, 4, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (34, 4, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (35, 4, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (36, 4, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (37, 4, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (38, 4, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (39, 4, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (40, 4, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (41, 5, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (42, 5, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (43, 5, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (44, 5, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (45, 5, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (46, 5, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (47, 5, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (48, 5, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (49, 5, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (50, 5, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (51, 6, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (52, 6, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (53, 6, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (54, 6, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (55, 6, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (56, 6, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (57, 6, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (58, 6, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (59, 6, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (60, 6, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (61, 7, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (62, 7, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (63, 7, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (64, 7, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (65, 7, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (66, 7, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (67, 7, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (68, 7, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (69, 7, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (70, 7, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (71, 8, '2012-11-19 13:00:00', '2012-11-19 13:04:59', '2012-11-19 13:05:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (72, 8, '2012-11-19 13:05:00', '2012-11-19 13:09:59', '2012-11-19 13:10:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (73, 8, '2012-11-19 13:10:00', '2012-11-19 13:14:59', '2012-11-19 13:15:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (74, 8, '2012-11-19 13:15:00', '2012-11-19 13:19:59', '2012-11-19 13:20:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (75, 8, '2012-11-19 13:20:00', '2012-11-19 13:24:59', '2012-11-19 13:25:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (76, 8, '2012-11-19 13:25:00', '2012-11-19 13:29:59', '2012-11-19 13:30:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (77, 8, '2012-11-19 13:30:00', '2012-11-19 13:34:59', '2012-11-19 13:35:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (78, 8, '2012-11-19 13:35:00', '2012-11-19 13:39:59', '2012-11-19 13:40:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (79, 8, '2012-11-19 13:40:00', '2012-11-19 13:44:59', '2012-11-19 13:45:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (80, 8, '2012-11-19 13:45:00', '2012-11-19 13:49:59', '2012-11-19 13:50:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (81, 9, '2008-10-29 00:00:00', '2008-10-29 00:00:00', '2008-10-29 00:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (82, 10, '2008-10-29 00:00:00', '2008-10-29 00:00:00', '2008-10-29 00:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (83, 11, '2008-10-29 00:00:00', '2008-10-29 00:00:00', '2008-10-29 00:00:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (84, 12, '2012-12-31 23:00:00', '2012-12-31 23:00:00', '2012-12-31 22:01:00', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);


--
-- TOC entry 4191 (class 0 OID 20606)
-- Dependencies: 274
-- Data for Name: observationconstellation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (1, 1, 1, 1, 1, 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (2, 2, 2, 2, 2, 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (3, 3, 3, 3, 3, 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (4, 4, 4, 4, 4, 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (5, 5, 5, 5, 5, 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (6, 6, 6, 1, 6, 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (7, 7, 7, 1, 7, 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (8, 8, 8, 1, 8, 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild) VALUES (9, 9, 9, 5, 9, 'F', 'F');


--
-- TOC entry 4394 (class 0 OID 0)
-- Dependencies: 297
-- Name: observationconstellationid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('observationconstellationid_seq', 9, true);


--
-- TOC entry 4192 (class 0 OID 20615)
-- Dependencies: 275
-- Data for Name: observationhasoffering; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observationhasoffering (observationid, offeringid) VALUES (1, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (2, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (3, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (4, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (5, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (6, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (7, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (8, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (9, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (10, 1);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (11, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (12, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (13, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (14, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (15, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (16, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (17, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (18, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (19, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (20, 2);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (21, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (22, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (23, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (24, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (25, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (26, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (27, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (28, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (29, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (30, 3);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (31, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (32, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (33, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (34, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (35, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (36, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (37, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (38, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (39, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (40, 4);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (41, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (42, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (43, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (44, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (45, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (46, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (47, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (48, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (49, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (50, 5);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (51, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (52, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (53, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (54, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (55, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (56, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (57, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (58, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (59, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (60, 6);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (61, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (62, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (63, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (64, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (65, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (66, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (67, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (68, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (69, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (70, 7);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (71, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (72, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (73, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (74, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (75, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (76, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (77, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (78, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (79, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (80, 8);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (81, 9);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (82, 9);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (83, 9);
INSERT INTO observationhasoffering (observationid, offeringid) VALUES (84, 9);


--
-- TOC entry 4395 (class 0 OID 0)
-- Dependencies: 298
-- Name: observationid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('observationid_seq', 84, true);


--
-- TOC entry 4193 (class 0 OID 20620)
-- Dependencies: 276
-- Data for Name: observationtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observationtype (observationtypeid, observationtype) VALUES (1, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement');
INSERT INTO observationtype (observationtypeid, observationtype) VALUES (2, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_CountObservation');
INSERT INTO observationtype (observationtypeid, observationtype) VALUES (3, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TruthObservation');
INSERT INTO observationtype (observationtypeid, observationtype) VALUES (4, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_CategoryObservation');
INSERT INTO observationtype (observationtypeid, observationtype) VALUES (5, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TextObservation');


--
-- TOC entry 4396 (class 0 OID 0)
-- Dependencies: 299
-- Name: observationtypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('observationtypeid_seq', 5, true);


--
-- TOC entry 4194 (class 0 OID 20625)
-- Dependencies: 277
-- Data for Name: offering; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (1, 'T', 'http://www.52north.org/test/offering/1', NULL, 'Offering for sensor 1', NULL, NULL, 'F');
INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (2, 'T', 'http://www.52north.org/test/offering/2', NULL, 'Offering for sensor 2', NULL, NULL, 'F');
INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (3, 'T', 'http://www.52north.org/test/offering/3', NULL, 'Offering for sensor 3', NULL, NULL, 'F');
INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (4, 'T', 'http://www.52north.org/test/offering/4', NULL, 'Offering for sensor 2', NULL, NULL, 'F');
INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (5, 'T', 'http://www.52north.org/test/offering/5', NULL, 'Offering for sensor 5', NULL, NULL, 'F');
INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (6, 'T', 'http://www.52north.org/test/offering/6', NULL, 'Offering for sensor 6', NULL, NULL, 'F');
INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (7, 'T', 'http://www.52north.org/test/offering/7', NULL, 'Offering for sensor 7', NULL, NULL, 'F');
INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (8, 'T', 'http://www.52north.org/test/offering/8', NULL, 'Offering for sensor 8', NULL, NULL, 'F');
INSERT INTO offering (offeringid, hibernatediscriminator, identifier, codespace, name, codespacename, description, disabled) VALUES (9, 'T', 'http://www.52north.org/test/offering/developer', NULL, 'Offering for procedure developer', NULL, NULL, 'F');


--
-- TOC entry 4195 (class 0 OID 20635)
-- Dependencies: 278
-- Data for Name: offeringallowedfeaturetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (1, 1);
INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (2, 1);
INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (3, 1);
INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (4, 1);
INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (5, 1);
INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (6, 1);
INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (7, 1);
INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (8, 1);
INSERT INTO offeringallowedfeaturetype (offeringid, featureofinteresttypeid) VALUES (9, 1);


--
-- TOC entry 4196 (class 0 OID 20640)
-- Dependencies: 279
-- Data for Name: offeringallowedobservationtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (1, 1);
INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (2, 2);
INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (3, 3);
INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (4, 4);
INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (5, 5);
INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (6, 1);
INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (7, 1);
INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (8, 1);
INSERT INTO offeringallowedobservationtype (offeringid, observationtypeid) VALUES (9, 5);


--
-- TOC entry 4197 (class 0 OID 20645)
-- Dependencies: 280
-- Data for Name: offeringhasrelatedfeature; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4397 (class 0 OID 0)
-- Dependencies: 300
-- Name: offeringid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('offeringid_seq', 9, true);


--
-- TOC entry 4198 (class 0 OID 20650)
-- Dependencies: 281
-- Data for Name: parameter; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4398 (class 0 OID 0)
-- Dependencies: 301
-- Name: parameterid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parameterid_seq', 1, false);


--
-- TOC entry 4399 (class 0 OID 0)
-- Dependencies: 302
-- Name: procdescformatid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('procdescformatid_seq', 1, true);


--
-- TOC entry 4177 (class 0 OID 20509)
-- Dependencies: 260
-- Data for Name: procedure; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (1, 'T', 1, 'http://www.52north.org/test/procedure/1', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (2, 'T', 1, 'http://www.52north.org/test/procedure/2', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (3, 'T', 1, 'http://www.52north.org/test/procedure/3', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (4, 'T', 1, 'http://www.52north.org/test/procedure/4', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (5, 'T', 1, 'http://www.52north.org/test/procedure/5', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (6, 'T', 1, 'http://www.52north.org/test/procedure/6', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (7, 'T', 1, 'http://www.52north.org/test/procedure/7', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (8, 'T', 1, 'http://www.52north.org/test/procedure/8', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag) VALUES (9, 'T', 1, 'http://www.52north.org/test/procedure/developer', NULL, NULL, NULL, NULL, 'F', 'F', NULL, 'F');


--
-- TOC entry 4199 (class 0 OID 20658)
-- Dependencies: 282
-- Data for Name: proceduredescriptionformat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO proceduredescriptionformat (proceduredescriptionformatid, proceduredescriptionformat) VALUES (1, 'http://www.opengis.net/sensorML/1.0.1');


--
-- TOC entry 4400 (class 0 OID 0)
-- Dependencies: 303
-- Name: procedureid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('procedureid_seq', 9, true);


--
-- TOC entry 4200 (class 0 OID 20663)
-- Dependencies: 283
-- Data for Name: relatedfeature; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4201 (class 0 OID 20668)
-- Dependencies: 284
-- Data for Name: relatedfeaturehasrole; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4401 (class 0 OID 0)
-- Dependencies: 304
-- Name: relatedfeatureid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('relatedfeatureid_seq', 1, false);


--
-- TOC entry 4202 (class 0 OID 20673)
-- Dependencies: 285
-- Data for Name: relatedfeaturerole; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4402 (class 0 OID 0)
-- Dependencies: 305
-- Name: relatedfeatureroleid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('relatedfeatureroleid_seq', 1, false);


--
-- TOC entry 4203 (class 0 OID 20678)
-- Dependencies: 286
-- Data for Name: resulttemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO resulttemplate (resulttemplateid, offeringid, observablepropertyid, procedureid, featureofinterestid, identifier, resultstructure, resultencoding) VALUES (1, 6, 6, 6, 7, 'http://www.52north.org/test/procedure/6/template/1', '<swe:DataRecord xmlns:swe="http://www.opengis.net/swe/2.0" xmlns:xlink="http://www.w3.org/1999/xlink">
  <swe:field name="phenomenonTime">
    <swe:TimeRange xmlns:ns="http://www.opengis.net/swe/2.0" definition="http://www.opengis.net/def/property/OGC/0/PhenomenonTime">
      <ns:uom xlink:href="http://www.opengis.net/def/uom/ISO-8601/0/Gregorian"/>
    </swe:TimeRange>
  </swe:field>
  <swe:field name="resultTime">
    <swe:Time xmlns:ns="http://www.opengis.net/swe/2.0" definition="http://www.opengis.net/def/property/OGC/0/ResultTime">
      <ns:uom code="testunit1"/>
    </swe:Time>
  </swe:field>
  <swe:field name="observable_property_6">
    <swe:Quantity xmlns:ns="http://www.opengis.net/swe/2.0" definition="http://www.52north.org/test/observableProperty/6">
      <ns:uom code="test_unit_6"/>
    </swe:Quantity>
  </swe:field>
</swe:DataRecord>', '<swe:TextEncoding xmlns:swe="http://www.opengis.net/swe/2.0" blockSeparator="#" tokenSeparator=","/>');


--
-- TOC entry 4403 (class 0 OID 0)
-- Dependencies: 306
-- Name: resulttemplateid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('resulttemplateid_seq', 1, true);


--
-- TOC entry 4204 (class 0 OID 20686)
-- Dependencies: 287
-- Data for Name: sensorsystem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4205 (class 0 OID 20691)
-- Dependencies: 288
-- Data for Name: series; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (7, 8, 7, 7, 7, 'F', 'T', '2012-11-19 13:00:00', '2012-11-19 13:09:00', 3, 3.89999999999999991, 4);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (1, 2, 1, 1, 1, 'F', 'T', '2012-11-19 13:00:00', '2012-11-19 13:09:00', 1, 1.89999999999999991, 1);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (8, 9, 8, 8, 8, 'F', 'T', '2012-11-19 13:00:00', '2012-11-19 13:49:59', 4, 4.90000000000000036, 5);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (2, 3, 2, 2, 2, 'F', 'T', '2012-11-19 13:00:00', '2012-11-19 13:09:00', NULL, NULL, NULL);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (9, 10, 9, 9, 9, 'F', 'T', '2008-10-29 00:00:00', '2008-10-29 00:00:00', NULL, NULL, NULL);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (10, 11, 9, 9, 9, 'F', 'T', '2008-10-29 00:00:00', '2008-10-29 00:00:00', NULL, NULL, NULL);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (11, 12, 9, 9, 9, 'F', 'T', '2008-10-29 00:00:00', '2008-10-29 00:00:00', NULL, NULL, NULL);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (12, 13, 9, 9, 9, 'F', 'T', '2012-12-31 23:00:00', '2012-12-31 23:00:00', NULL, NULL, NULL);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (3, 4, 3, 3, 3, 'F', 'T', '2012-11-19 13:00:00', '2012-11-19 13:09:00', NULL, NULL, NULL);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (4, 5, 4, 4, 4, 'F', 'T', '2012-11-19 13:00:00', '2012-11-19 13:09:00', NULL, NULL, NULL);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (5, 6, 5, 5, 5, 'F', 'T', '2012-11-19 13:00:00', '2012-11-19 13:09:00', NULL, NULL, NULL);
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid) VALUES (6, 7, 6, 6, 6, 'F', 'T', '2012-11-19 13:00:00', '2012-11-19 13:09:00', 2, 2.89999999999999991, 3);


--
-- TOC entry 4404 (class 0 OID 0)
-- Dependencies: 307
-- Name: seriesid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seriesid_seq', 12, true);


--
-- TOC entry 3865 (class 0 OID 18737)
-- Dependencies: 189
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4206 (class 0 OID 20700)
-- Dependencies: 289
-- Data for Name: swedataarrayvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4207 (class 0 OID 20708)
-- Dependencies: 290
-- Data for Name: textvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO textvalue (observationid, value) VALUES (41, 'test_text_0');
INSERT INTO textvalue (observationid, value) VALUES (42, 'test_text_1');
INSERT INTO textvalue (observationid, value) VALUES (43, 'test_text_2');
INSERT INTO textvalue (observationid, value) VALUES (44, 'test_text_3');
INSERT INTO textvalue (observationid, value) VALUES (45, 'test_text_4');
INSERT INTO textvalue (observationid, value) VALUES (46, 'test_text_5');
INSERT INTO textvalue (observationid, value) VALUES (47, 'test_text_6');
INSERT INTO textvalue (observationid, value) VALUES (48, 'test_text_7');
INSERT INTO textvalue (observationid, value) VALUES (49, 'test_text_8');
INSERT INTO textvalue (observationid, value) VALUES (50, 'test_text_9');
INSERT INTO textvalue (observationid, value) VALUES (81, 'Carsten Hollmann');
INSERT INTO textvalue (observationid, value) VALUES (82, 'Christian Autermann');
INSERT INTO textvalue (observationid, value) VALUES (83, 'Shane StClair');
INSERT INTO textvalue (observationid, value) VALUES (84, 'John/Jane Doe');


--
-- TOC entry 4208 (class 0 OID 20716)
-- Dependencies: 291
-- Data for Name: unit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO unit (unitid, unit) VALUES (1, 'test_unit_1');
INSERT INTO unit (unitid, unit) VALUES (2, 'test_unit_4');
INSERT INTO unit (unitid, unit) VALUES (3, 'test_unit_6');
INSERT INTO unit (unitid, unit) VALUES (4, 'test_unit_7');
INSERT INTO unit (unitid, unit) VALUES (5, 'test_unit_8');


--
-- TOC entry 4405 (class 0 OID 0)
-- Dependencies: 308
-- Name: unitid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('unitid_seq', 5, true);


--
-- TOC entry 4209 (class 0 OID 20721)
-- Dependencies: 292
-- Data for Name: validproceduretime; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (1, 1, 1, '2017-07-26 14:18:00.604', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:System xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:swes="http://www.opengis.net/swes/2.0" xmlns:sos="http://www.opengis.net/sos/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/1</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>con terra GmbH (www.conterra.de)</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="shortName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:shortName">
              <sml:value>con terra</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://www.52north.org/test/featureOfInterest/1</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:position name="sensorPosition">
        <swe:Position referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="easting">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>7.727958</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="northing">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>51.883906</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="altitude">
                <swe:Quantity axisID="z">
                  <swe:uom code="m"/>
                  <swe:value>52.0</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="test_observable_property_1">
            <swe:ObservableProperty definition="http://www.52north.org/test/observableProperty/1"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="test_observable_property_1">
            <swe:Category definition="http://www.52north.org/test/observableProperty/1">
              <swe:codeSpace xlink:href="test_unit_1"/>
            </swe:Category>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
    </sml:System>
  </sml:member>
</sml:SensorML>');
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (2, 2, 1, '2017-07-26 14:18:00.989', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:System xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:swes="http://www.opengis.net/swes/2.0" xmlns:sos="http://www.opengis.net/sos/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/2</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>ESRI (www.esri.com)</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="shortName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:shortName">
              <sml:value>ESRI</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://www.52north.org/test/featureOfInterest/2</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:position name="sensorPosition">
        <swe:Position referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="easting">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>-117.195711</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="northing">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>34.056517</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="altitude">
                <swe:Quantity axisID="z">
                  <swe:uom code="m"/>
                  <swe:value>52.0</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="test_observable_property_2">
            <swe:ObservableProperty definition="http://www.52north.org/test/observableProperty/2"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="test_observable_property_2">
            <swe:Count definition="http://www.52north.org/test/observableProperty/2"/>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
    </sml:System>
  </sml:member>
</sml:SensorML>');
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (3, 3, 1, '2017-07-26 14:18:01.123', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:System xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:swes="http://www.opengis.net/swes/2.0" xmlns:sos="http://www.opengis.net/sos/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/3</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>Kisters AG (www.kisters.de)</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="shortName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:shortName">
              <sml:value>Kisters</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://www.52north.org/test/featureOfInterest/3</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:position name="sensorPosition">
        <swe:Position referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="easting">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>6.1320144042060925</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="northing">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>50.78570661296184</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="altitude">
                <swe:Quantity axisID="z">
                  <swe:uom code="m"/>
                  <swe:value>52.0</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="test_observable_property_3">
            <swe:ObservableProperty definition="http://www.52north.org/test/observableProperty/3"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="test_observable_property_3">
            <swe:Boolean definition="http://www.52north.org/test/observableProperty/3"/>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
    </sml:System>
  </sml:member>
</sml:SensorML>');
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (4, 4, 1, '2017-07-26 14:18:01.248', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:System xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:swes="http://www.opengis.net/swes/2.0" xmlns:sos="http://www.opengis.net/sos/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/4</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>Institute for Geoinformatics (http://ifgi.uni-muenster.de/en)</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="shortName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:shortName">
              <sml:value>IfGI</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://www.52north.org/test/featureOfInterest/4</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:position name="sensorPosition">
        <swe:Position referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="easting">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>7.593655600000034</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="northing">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>51.9681661</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="altitude">
                <swe:Quantity axisID="z">
                  <swe:uom code="m"/>
                  <swe:value>52.0</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="test_observable_property_4">
            <swe:ObservableProperty definition="http://www.52north.org/test/observableProperty/4"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="test_observable_property_4">
            <swe:Quantity definition="http://www.52north.org/test/observableProperty/4">
              <swe:uom code="test_unit_4"/>
            </swe:Quantity>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
    </sml:System>
  </sml:member>
</sml:SensorML>');
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (5, 5, 1, '2017-07-26 14:18:01.37', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:System xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:swes="http://www.opengis.net/swes/2.0" xmlns:sos="http://www.opengis.net/sos/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/5</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>Technical University Dresden (http://tu-dresden.de/en)</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="shortName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:shortName">
              <sml:value>TU-Dresden</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://www.52north.org/test/featureOfInterest/5</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:position name="sensorPosition">
        <swe:Position referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="easting">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>13.72375999999997</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="northing">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>51.02881</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="altitude">
                <swe:Quantity axisID="z">
                  <swe:uom code="m"/>
                  <swe:value>52.0</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="test_observable_property_5">
            <swe:ObservableProperty definition="http://www.52north.org/test/observableProperty/5"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="test_observable_property_5">
            <swe:Text definition="http://www.52north.org/test/observableProperty/5"/>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
    </sml:System>
  </sml:member>
</sml:SensorML>');
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (6, 6, 1, '2017-07-26 14:18:01.505', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:System xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:swes="http://www.opengis.net/swes/2.0" xmlns:sos="http://www.opengis.net/sos/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/6</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>Hochschule Bochum - Bochum University of Applied Sciences (http://www.hochschule-bochum.de/en/)</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="shortName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:shortName">
              <sml:value>Hochschule Bochum</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://www.52north.org/test/featureOfInterest/6</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:position name="sensorPosition">
        <swe:Position referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="easting">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>7.270806</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="northing">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>51.447722</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="altitude">
                <swe:Quantity axisID="z">
                  <swe:uom code="m"/>
                  <swe:value>52.0</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="test_observable_property_6">
            <swe:ObservableProperty definition="http://www.52north.org/test/observableProperty/6"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="test_observable_property_6">
            <swe:Category definition="http://www.52north.org/test/observableProperty/6">
              <swe:codeSpace xlink:href="test_unit_6"/>
            </swe:Category>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
    </sml:System>
  </sml:member>
</sml:SensorML>');
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (7, 7, 1, '2017-07-26 14:18:01.779', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:System xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:swes="http://www.opengis.net/swes/2.0" xmlns:sos="http://www.opengis.net/sos/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/7</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>ITC - University of Twente (http://www.itc.nl/)</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="shortName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:shortName">
              <sml:value>ITC</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://www.52north.org/test/featureOfInterest/7</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:position name="sensorPosition">
        <swe:Position referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="easting">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>4.283393599999954</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="northing">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>52.0464393</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="altitude">
                <swe:Quantity axisID="z">
                  <swe:uom code="m"/>
                  <swe:value>52.0</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="test_observable_property_7">
            <swe:ObservableProperty definition="http://www.52north.org/test/observableProperty/7"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="test_observable_property_7">
            <swe:Category definition="http://www.52north.org/test/observableProperty/7">
              <swe:codeSpace xlink:href="test_unit_7"/>
            </swe:Category>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
    </sml:System>
  </sml:member>
</sml:SensorML>');
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (8, 8, 1, '2017-07-26 14:18:01.88', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:System xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:swes="http://www.opengis.net/swes/2.0" xmlns:sos="http://www.opengis.net/sos/2.0" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/8</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>Bundesanstalt für IT-Dienstleistungen im Geschäftsbereich des BMVBS (http://www.dlz-it.de)</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="shortName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:shortName">
              <sml:value>DLZ-IT</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://www.52north.org/test/featureOfInterest/8</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:position name="sensorPosition">
        <swe:Position referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="easting">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>10.94306000000006</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="northing">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>50.68606</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="altitude">
                <swe:Quantity axisID="z">
                  <swe:uom code="m"/>
                  <swe:value>52.0</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="test_observable_property_8">
            <swe:ObservableProperty definition="http://www.52north.org/test/observableProperty/8"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="test_observable_property_8">
            <swe:Category definition="http://www.52north.org/test/observableProperty/8">
              <swe:codeSpace xlink:href="test_unit_8"/>
            </swe:Category>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
    </sml:System>
  </sml:member>
</sml:SensorML>');
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (9, 9, 1, '2017-07-26 14:18:02.004', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
  <sml:member>
    <sml:ProcessModel xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" gml:id="developer">
      <gml:description>52°North developer process</gml:description>
      <gml:name>http://www.52north.org/test/procedure/developer</gml:name>
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:uniqueID">
              <sml:value>http://www.52north.org/test/procedure/developer</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <sml:inputs>
        <sml:InputList>
          <sml:input name="community">
            <swe:Text definition="http://www.52north.org/test/observableProperty/community"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="developer">
            <swe:Text definition="http://www.52north.org/test/observableProperty/developer"/>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
      <sml:method>
        <sml:ProcessMethod>
          <gml:description>52deg;North Sensor Observation Service development method</gml:description>
          <sml:contact xlink:arcrole="author">
            <sml:ResponsibleParty>
              <sml:individualName>Carsten Hollmann</sml:individualName>
              <sml:organizationName>52deg;North Initiative for Geospatial Open Source Software GmbH</sml:organizationName>
              <sml:positionName>code manager</sml:positionName>
              <sml:contactInfo>
                <sml:phone>
                  <sml:voice>+49 (0)251 396371 0</sml:voice>
                </sml:phone>
                <sml:address>
                  <sml:deliveryPoint>Martin-Luther-King-Weg 24</sml:deliveryPoint>
                  <sml:city>Muenster</sml:city>
                  <sml:administrativeArea>North Rhine-Westphalia</sml:administrativeArea>
                  <sml:postalCode>48155</sml:postalCode>
                  <sml:country>Germany</sml:country>
                  <sml:electronicMailAddress>info@52north.org</sml:electronicMailAddress>
                </sml:address>
              </sml:contactInfo>
            </sml:ResponsibleParty>
          </sml:contact>
          <sml:rules>
            <sml:RulesDefinition>
              <gml:description>Inputs are the specifications and the idea, Output is the SOS service</gml:description>
            </sml:RulesDefinition>
          </sml:rules>
          <sml:algorithm>
            <sml:AlgorithmDefinition>
              <gml:description>Spec/Idea to code</gml:description>
            </sml:AlgorithmDefinition>
          </sml:algorithm>
        </sml:ProcessMethod>
      </sml:method>
    </sml:ProcessModel>
  </sml:member>
</sml:SensorML>');


--
-- TOC entry 4406 (class 0 OID 0)
-- Dependencies: 309
-- Name: validproceduretimeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('validproceduretimeid_seq', 9, true);


--
-- TOC entry 3893 (class 2606 OID 20527)
-- Name: blobvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blobvalue
    ADD CONSTRAINT blobvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3895 (class 2606 OID 20534)
-- Name: booleanvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booleanvalue
    ADD CONSTRAINT booleanvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3897 (class 2606 OID 20539)
-- Name: categoryvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryvalue
    ADD CONSTRAINT categoryvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3899 (class 2606 OID 20544)
-- Name: codespace_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY codespace
    ADD CONSTRAINT codespace_pkey PRIMARY KEY (codespaceid);


--
-- TOC entry 3901 (class 2606 OID 20732)
-- Name: codespaceuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY codespace
    ADD CONSTRAINT codespaceuk UNIQUE (codespace);


--
-- TOC entry 3903 (class 2606 OID 20549)
-- Name: compositephenomenon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositephenomenon
    ADD CONSTRAINT compositephenomenon_pkey PRIMARY KEY (childobservablepropertyid, parentobservablepropertyid);


--
-- TOC entry 3905 (class 2606 OID 20554)
-- Name: countvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countvalue
    ADD CONSTRAINT countvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3907 (class 2606 OID 20562)
-- Name: featureofinterest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featureofinterest_pkey PRIMARY KEY (featureofinterestid);


--
-- TOC entry 3913 (class 2606 OID 20567)
-- Name: featureofinteresttype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinteresttype
    ADD CONSTRAINT featureofinteresttype_pkey PRIMARY KEY (featureofinteresttypeid);


--
-- TOC entry 3917 (class 2606 OID 20572)
-- Name: featurerelation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featurerelation
    ADD CONSTRAINT featurerelation_pkey PRIMARY KEY (childfeatureid, parentfeatureid);


--
-- TOC entry 3915 (class 2606 OID 20738)
-- Name: featuretypeuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinteresttype
    ADD CONSTRAINT featuretypeuk UNIQUE (featureofinteresttype);


--
-- TOC entry 3909 (class 2606 OID 20736)
-- Name: featureurl; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featureurl UNIQUE (url);


--
-- TOC entry 3911 (class 2606 OID 20734)
-- Name: foiidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT foiidentifieruk UNIQUE (identifier);


--
-- TOC entry 3919 (class 2606 OID 20580)
-- Name: geometryvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geometryvalue
    ADD CONSTRAINT geometryvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3921 (class 2606 OID 20585)
-- Name: numericvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericvalue
    ADD CONSTRAINT numericvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3923 (class 2606 OID 20595)
-- Name: observableproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observableproperty
    ADD CONSTRAINT observableproperty_pkey PRIMARY KEY (observablepropertyid);


--
-- TOC entry 3927 (class 2606 OID 20605)
-- Name: observation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT observation_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3938 (class 2606 OID 20614)
-- Name: observationconstellation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT observationconstellation_pkey PRIMARY KEY (observationconstellationid);


--
-- TOC entry 3942 (class 2606 OID 20619)
-- Name: observationhasoffering_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationhasoffering
    ADD CONSTRAINT observationhasoffering_pkey PRIMARY KEY (observationid, offeringid);


--
-- TOC entry 3929 (class 2606 OID 20742)
-- Name: observationidentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT observationidentity UNIQUE (seriesid, phenomenontimestart, phenomenontimeend, resulttime);


--
-- TOC entry 3946 (class 2606 OID 20624)
-- Name: observationtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationtype
    ADD CONSTRAINT observationtype_pkey PRIMARY KEY (observationtypeid);


--
-- TOC entry 3948 (class 2606 OID 20755)
-- Name: observationtypeuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationtype
    ADD CONSTRAINT observationtypeuk UNIQUE (observationtype);


--
-- TOC entry 3940 (class 2606 OID 20748)
-- Name: obsnconstellationidentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsnconstellationidentity UNIQUE (observablepropertyid, procedureid, offeringid);


--
-- TOC entry 3925 (class 2606 OID 20740)
-- Name: obspropidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observableproperty
    ADD CONSTRAINT obspropidentifieruk UNIQUE (identifier);


--
-- TOC entry 3950 (class 2606 OID 20634)
-- Name: offering_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offering
    ADD CONSTRAINT offering_pkey PRIMARY KEY (offeringid);


--
-- TOC entry 3954 (class 2606 OID 20639)
-- Name: offeringallowedfeaturetype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedfeaturetype
    ADD CONSTRAINT offeringallowedfeaturetype_pkey PRIMARY KEY (offeringid, featureofinteresttypeid);


--
-- TOC entry 3956 (class 2606 OID 20644)
-- Name: offeringallowedobservationtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedobservationtype
    ADD CONSTRAINT offeringallowedobservationtype_pkey PRIMARY KEY (offeringid, observationtypeid);


--
-- TOC entry 3958 (class 2606 OID 20649)
-- Name: offeringhasrelatedfeature_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringhasrelatedfeature
    ADD CONSTRAINT offeringhasrelatedfeature_pkey PRIMARY KEY (offeringid, relatedfeatureid);


--
-- TOC entry 3952 (class 2606 OID 20757)
-- Name: offidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offering
    ADD CONSTRAINT offidentifieruk UNIQUE (identifier);


--
-- TOC entry 3960 (class 2606 OID 20657)
-- Name: parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 3962 (class 2606 OID 20759)
-- Name: procdescformatuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proceduredescriptionformat
    ADD CONSTRAINT procdescformatuk UNIQUE (proceduredescriptionformat);


--
-- TOC entry 3889 (class 2606 OID 20522)
-- Name: procedure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT procedure_pkey PRIMARY KEY (procedureid);


--
-- TOC entry 3964 (class 2606 OID 20662)
-- Name: proceduredescriptionformat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proceduredescriptionformat
    ADD CONSTRAINT proceduredescriptionformat_pkey PRIMARY KEY (proceduredescriptionformatid);


--
-- TOC entry 3891 (class 2606 OID 20730)
-- Name: procidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT procidentifieruk UNIQUE (identifier);


--
-- TOC entry 3966 (class 2606 OID 20667)
-- Name: relatedfeature_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeature
    ADD CONSTRAINT relatedfeature_pkey PRIMARY KEY (relatedfeatureid);


--
-- TOC entry 3968 (class 2606 OID 20672)
-- Name: relatedfeaturehasrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturehasrole
    ADD CONSTRAINT relatedfeaturehasrole_pkey PRIMARY KEY (relatedfeatureid, relatedfeatureroleid);


--
-- TOC entry 3970 (class 2606 OID 20677)
-- Name: relatedfeaturerole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturerole
    ADD CONSTRAINT relatedfeaturerole_pkey PRIMARY KEY (relatedfeatureroleid);


--
-- TOC entry 3972 (class 2606 OID 20761)
-- Name: relfeatroleuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturerole
    ADD CONSTRAINT relfeatroleuk UNIQUE (relatedfeaturerole);


--
-- TOC entry 3976 (class 2606 OID 20685)
-- Name: resulttemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplate_pkey PRIMARY KEY (resulttemplateid);


--
-- TOC entry 3980 (class 2606 OID 20690)
-- Name: sensorsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sensorsystem
    ADD CONSTRAINT sensorsystem_pkey PRIMARY KEY (childsensorid, parentsensorid);


--
-- TOC entry 3982 (class 2606 OID 20699)
-- Name: series_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT series_pkey PRIMARY KEY (seriesid);


--
-- TOC entry 3985 (class 2606 OID 20767)
-- Name: seriesidentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesidentity UNIQUE (featureofinterestid, observablepropertyid, procedureid, offeringid);


--
-- TOC entry 3990 (class 2606 OID 20707)
-- Name: swedataarrayvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY swedataarrayvalue
    ADD CONSTRAINT swedataarrayvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3992 (class 2606 OID 20715)
-- Name: textvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY textvalue
    ADD CONSTRAINT textvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3994 (class 2606 OID 20720)
-- Name: unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unit
    ADD CONSTRAINT unit_pkey PRIMARY KEY (unitid);


--
-- TOC entry 3996 (class 2606 OID 20773)
-- Name: unituk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unit
    ADD CONSTRAINT unituk UNIQUE (unit);


--
-- TOC entry 3998 (class 2606 OID 20728)
-- Name: validproceduretime_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY validproceduretime
    ADD CONSTRAINT validproceduretime_pkey PRIMARY KEY (validproceduretimeid);


--
-- TOC entry 3934 (class 1259 OID 20749)
-- Name: obsconstobspropidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsconstobspropidx ON observationconstellation USING btree (observablepropertyid);


--
-- TOC entry 3935 (class 1259 OID 20751)
-- Name: obsconstofferingidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsconstofferingidx ON observationconstellation USING btree (offeringid);


--
-- TOC entry 3936 (class 1259 OID 20750)
-- Name: obsconstprocedureidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsconstprocedureidx ON observationconstellation USING btree (procedureid);


--
-- TOC entry 3943 (class 1259 OID 20752)
-- Name: obshasoffobservationidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obshasoffobservationidx ON observationhasoffering USING btree (observationid);


--
-- TOC entry 3944 (class 1259 OID 20753)
-- Name: obshasoffofferingidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obshasoffofferingidx ON observationhasoffering USING btree (offeringid);


--
-- TOC entry 3930 (class 1259 OID 20745)
-- Name: obsphentimeendidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsphentimeendidx ON observation USING btree (phenomenontimeend);


--
-- TOC entry 3931 (class 1259 OID 20744)
-- Name: obsphentimestartidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsphentimestartidx ON observation USING btree (phenomenontimestart);


--
-- TOC entry 3932 (class 1259 OID 20746)
-- Name: obsresulttimeidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsresulttimeidx ON observation USING btree (resulttime);


--
-- TOC entry 3933 (class 1259 OID 20743)
-- Name: obsseriesidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsseriesidx ON observation USING btree (seriesid);


--
-- TOC entry 3973 (class 1259 OID 20763)
-- Name: resulttempeobspropidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX resulttempeobspropidx ON resulttemplate USING btree (observablepropertyid);


--
-- TOC entry 3974 (class 1259 OID 20765)
-- Name: resulttempidentifieridx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX resulttempidentifieridx ON resulttemplate USING btree (identifier);


--
-- TOC entry 3977 (class 1259 OID 20762)
-- Name: resulttempofferingidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX resulttempofferingidx ON resulttemplate USING btree (offeringid);


--
-- TOC entry 3978 (class 1259 OID 20764)
-- Name: resulttempprocedureidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX resulttempprocedureidx ON resulttemplate USING btree (procedureid);


--
-- TOC entry 3983 (class 1259 OID 20768)
-- Name: seriesfeatureidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seriesfeatureidx ON series USING btree (featureofinterestid);


--
-- TOC entry 3986 (class 1259 OID 20769)
-- Name: seriesobspropidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seriesobspropidx ON series USING btree (observablepropertyid);


--
-- TOC entry 3987 (class 1259 OID 20771)
-- Name: seriesofferingidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seriesofferingidx ON series USING btree (offeringid);


--
-- TOC entry 3988 (class 1259 OID 20770)
-- Name: seriesprocedureidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seriesprocedureidx ON series USING btree (procedureid);


--
-- TOC entry 3999 (class 1259 OID 20775)
-- Name: validproceduretimeendtimeidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX validproceduretimeendtimeidx ON validproceduretime USING btree (endtime);


--
-- TOC entry 4000 (class 1259 OID 20774)
-- Name: validproceduretimestarttimeidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX validproceduretimestarttimeidx ON validproceduretime USING btree (starttime);


--
-- TOC entry 4011 (class 2606 OID 20826)
-- Name: featurecodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featurecodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4010 (class 2606 OID 20831)
-- Name: featurecodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featurecodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4012 (class 2606 OID 20821)
-- Name: featurefeaturetypefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featurefeaturetypefk FOREIGN KEY (featureofinteresttypeid) REFERENCES featureofinteresttype(featureofinteresttypeid);


--
-- TOC entry 4014 (class 2606 OID 20836)
-- Name: featureofinterestchildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featurerelation
    ADD CONSTRAINT featureofinterestchildfk FOREIGN KEY (childfeatureid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4013 (class 2606 OID 20841)
-- Name: featureofinterestparentfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featurerelation
    ADD CONSTRAINT featureofinterestparentfk FOREIGN KEY (parentfeatureid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4031 (class 2606 OID 20931)
-- Name: fk_6vvrdxvd406n48gkm706ow1pt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedfeaturetype
    ADD CONSTRAINT fk_6vvrdxvd406n48gkm706ow1pt FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4038 (class 2606 OID 20966)
-- Name: fk_6ynwkk91xe8p1uibmjt98sog3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturehasrole
    ADD CONSTRAINT fk_6ynwkk91xe8p1uibmjt98sog3 FOREIGN KEY (relatedfeatureid) REFERENCES relatedfeature(relatedfeatureid);


--
-- TOC entry 4027 (class 2606 OID 20911)
-- Name: fk_9ex7hawh3dbplkllmw5w3kvej; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationhasoffering
    ADD CONSTRAINT fk_9ex7hawh3dbplkllmw5w3kvej FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4033 (class 2606 OID 20941)
-- Name: fk_lkljeohulvu7cr26pduyp5bd0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedobservationtype
    ADD CONSTRAINT fk_lkljeohulvu7cr26pduyp5bd0 FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4020 (class 2606 OID 20871)
-- Name: obscodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT obscodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4021 (class 2606 OID 20876)
-- Name: obscodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT obscodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4025 (class 2606 OID 20896)
-- Name: obsconstobservationiypefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsconstobservationiypefk FOREIGN KEY (observationtypeid) REFERENCES observationtype(observationtypeid);


--
-- TOC entry 4023 (class 2606 OID 20886)
-- Name: obsconstobspropfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsconstobspropfk FOREIGN KEY (observablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4026 (class 2606 OID 20901)
-- Name: obsconstofferingfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsconstofferingfk FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4008 (class 2606 OID 20806)
-- Name: observablepropertychildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositephenomenon
    ADD CONSTRAINT observablepropertychildfk FOREIGN KEY (childobservablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4007 (class 2606 OID 20811)
-- Name: observablepropertyparentfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositephenomenon
    ADD CONSTRAINT observablepropertyparentfk FOREIGN KEY (parentobservablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4004 (class 2606 OID 20791)
-- Name: observationblobvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blobvalue
    ADD CONSTRAINT observationblobvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4005 (class 2606 OID 20796)
-- Name: observationbooleanvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booleanvalue
    ADD CONSTRAINT observationbooleanvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4006 (class 2606 OID 20801)
-- Name: observationcategoryvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryvalue
    ADD CONSTRAINT observationcategoryvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4009 (class 2606 OID 20816)
-- Name: observationcountvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countvalue
    ADD CONSTRAINT observationcountvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4015 (class 2606 OID 20846)
-- Name: observationgeometryvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geometryvalue
    ADD CONSTRAINT observationgeometryvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4016 (class 2606 OID 20851)
-- Name: observationnumericvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericvalue
    ADD CONSTRAINT observationnumericvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4028 (class 2606 OID 20906)
-- Name: observationofferingfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationhasoffering
    ADD CONSTRAINT observationofferingfk FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4019 (class 2606 OID 20866)
-- Name: observationseriesfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT observationseriesfk FOREIGN KEY (seriesid) REFERENCES series(seriesid);


--
-- TOC entry 4051 (class 2606 OID 21026)
-- Name: observationswedataarrayvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY swedataarrayvalue
    ADD CONSTRAINT observationswedataarrayvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4052 (class 2606 OID 21031)
-- Name: observationtextvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY textvalue
    ADD CONSTRAINT observationtextvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4022 (class 2606 OID 20881)
-- Name: observationunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT observationunitfk FOREIGN KEY (unitid) REFERENCES unit(unitid);


--
-- TOC entry 4024 (class 2606 OID 20891)
-- Name: obsnconstprocedurefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsnconstprocedurefk FOREIGN KEY (procedureid) REFERENCES procedure(procedureid);


--
-- TOC entry 4018 (class 2606 OID 20856)
-- Name: obspropcodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observableproperty
    ADD CONSTRAINT obspropcodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4017 (class 2606 OID 20861)
-- Name: obspropcodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observableproperty
    ADD CONSTRAINT obspropcodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4030 (class 2606 OID 20916)
-- Name: offcodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offering
    ADD CONSTRAINT offcodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4029 (class 2606 OID 20921)
-- Name: offcodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offering
    ADD CONSTRAINT offcodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4032 (class 2606 OID 20926)
-- Name: offeringfeaturetypefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedfeaturetype
    ADD CONSTRAINT offeringfeaturetypefk FOREIGN KEY (featureofinteresttypeid) REFERENCES featureofinteresttype(featureofinteresttypeid);


--
-- TOC entry 4034 (class 2606 OID 20936)
-- Name: offeringobservationtypefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedobservationtype
    ADD CONSTRAINT offeringobservationtypefk FOREIGN KEY (observationtypeid) REFERENCES observationtype(observationtypeid);


--
-- TOC entry 4035 (class 2606 OID 20951)
-- Name: offeringrelatedfeaturefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringhasrelatedfeature
    ADD CONSTRAINT offeringrelatedfeaturefk FOREIGN KEY (relatedfeatureid) REFERENCES relatedfeature(relatedfeatureid);


--
-- TOC entry 4002 (class 2606 OID 20781)
-- Name: proccodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT proccodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4003 (class 2606 OID 20786)
-- Name: proccodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT proccodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4045 (class 2606 OID 20991)
-- Name: procedurechildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sensorsystem
    ADD CONSTRAINT procedurechildfk FOREIGN KEY (childsensorid) REFERENCES procedure(procedureid);


--
-- TOC entry 4044 (class 2606 OID 20996)
-- Name: procedureparenffk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sensorsystem
    ADD CONSTRAINT procedureparenffk FOREIGN KEY (parentsensorid) REFERENCES procedure(procedureid);


--
-- TOC entry 4001 (class 2606 OID 20776)
-- Name: procprocdescformatfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT procprocdescformatfk FOREIGN KEY (proceduredescriptionformatid) REFERENCES proceduredescriptionformat(proceduredescriptionformatid);


--
-- TOC entry 4039 (class 2606 OID 20961)
-- Name: relatedfeatrelatedfeatrolefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturehasrole
    ADD CONSTRAINT relatedfeatrelatedfeatrolefk FOREIGN KEY (relatedfeatureroleid) REFERENCES relatedfeaturerole(relatedfeatureroleid);


--
-- TOC entry 4037 (class 2606 OID 20956)
-- Name: relatedfeaturefeaturefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeature
    ADD CONSTRAINT relatedfeaturefeaturefk FOREIGN KEY (featureofinterestid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4036 (class 2606 OID 20946)
-- Name: relatedfeatureofferingfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringhasrelatedfeature
    ADD CONSTRAINT relatedfeatureofferingfk FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4040 (class 2606 OID 20986)
-- Name: resulttemplatefeatureidx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplatefeatureidx FOREIGN KEY (featureofinterestid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4042 (class 2606 OID 20976)
-- Name: resulttemplateobspropfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplateobspropfk FOREIGN KEY (observablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4043 (class 2606 OID 20971)
-- Name: resulttemplateofferingidx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplateofferingidx FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4041 (class 2606 OID 20981)
-- Name: resulttemplateprocedurefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplateprocedurefk FOREIGN KEY (procedureid) REFERENCES procedure(procedureid);


--
-- TOC entry 4046 (class 2606 OID 21001)
-- Name: seriesfeaturefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesfeaturefk FOREIGN KEY (featureofinterestid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4047 (class 2606 OID 21006)
-- Name: seriesobpropfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesobpropfk FOREIGN KEY (observablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4049 (class 2606 OID 21016)
-- Name: seriesofferingfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesofferingfk FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4048 (class 2606 OID 21011)
-- Name: seriesprocedurefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesprocedurefk FOREIGN KEY (procedureid) REFERENCES procedure(procedureid);


--
-- TOC entry 4050 (class 2606 OID 21021)
-- Name: seriesunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesunitfk FOREIGN KEY (unitid) REFERENCES unit(unitid);


--
-- TOC entry 4054 (class 2606 OID 21036)
-- Name: validproceduretimeprocedurefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY validproceduretime
    ADD CONSTRAINT validproceduretimeprocedurefk FOREIGN KEY (procedureid) REFERENCES procedure(procedureid);


--
-- TOC entry 4053 (class 2606 OID 21041)
-- Name: validprocprocdescformatfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY validproceduretime
    ADD CONSTRAINT validprocprocdescformatfk FOREIGN KEY (proceduredescriptionformatid) REFERENCES proceduredescriptionformat(proceduredescriptionformatid);


--
-- TOC entry 4232 (class 0 OID 0)
-- Dependencies: 10
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-07-27 09:58:04 CEST

--
-- PostgreSQL database dump complete
--

