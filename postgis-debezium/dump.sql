

--
-- TOC entry 260 (class 1259 OID 20544)
-- Name: blobvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blobvalue (
    observationid bigint NOT NULL,
    value oid
);


ALTER TABLE blobvalue OWNER TO postgres;

--
-- TOC entry 4438 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE blobvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE blobvalue IS 'Value table for blob observation';


--
-- TOC entry 4439 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN blobvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN blobvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4440 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN blobvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN blobvalue.value IS 'Blob observation value';


--
-- TOC entry 261 (class 1259 OID 20549)
-- Name: booleanfeatparamvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE booleanfeatparamvalue (
    parameterid bigint NOT NULL,
    value character(1),
    CONSTRAINT booleanfeatparamvalue_value_check CHECK ((value = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE booleanfeatparamvalue OWNER TO postgres;

--
-- TOC entry 4441 (class 0 OID 0)
-- Dependencies: 261
-- Name: TABLE booleanfeatparamvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE booleanfeatparamvalue IS 'Value table for boolean parameter';


--
-- TOC entry 4442 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN booleanfeatparamvalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN booleanfeatparamvalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "featureParameter".parameterid';


--
-- TOC entry 4443 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN booleanfeatparamvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN booleanfeatparamvalue.value IS 'Boolean parameter value';


--
-- TOC entry 262 (class 1259 OID 20555)
-- Name: booleanparametervalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE booleanparametervalue (
    parameterid bigint NOT NULL,
    value character(1),
    CONSTRAINT booleanparametervalue_value_check CHECK ((value = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE booleanparametervalue OWNER TO postgres;

--
-- TOC entry 4444 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE booleanparametervalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE booleanparametervalue IS 'Value table for boolean parameter';


--
-- TOC entry 4445 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN booleanparametervalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN booleanparametervalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "parameter".parameterid';


--
-- TOC entry 4446 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN booleanparametervalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN booleanparametervalue.value IS 'Boolean parameter value';


--
-- TOC entry 263 (class 1259 OID 20561)
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
-- TOC entry 4447 (class 0 OID 0)
-- Dependencies: 263
-- Name: TABLE booleanvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE booleanvalue IS 'Value table for boolean observation';


--
-- TOC entry 4448 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN booleanvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN booleanvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4449 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN booleanvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN booleanvalue.value IS 'Boolean observation value';


--
-- TOC entry 264 (class 1259 OID 20568)
-- Name: categoryfeatparamvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categoryfeatparamvalue (
    parameterid bigint NOT NULL,
    value character varying(255),
    unitid bigint
);


ALTER TABLE categoryfeatparamvalue OWNER TO postgres;

--
-- TOC entry 4450 (class 0 OID 0)
-- Dependencies: 264
-- Name: TABLE categoryfeatparamvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE categoryfeatparamvalue IS 'Value table for category parameter';


--
-- TOC entry 4451 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN categoryfeatparamvalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryfeatparamvalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "featureParameter".parameterid';


--
-- TOC entry 4452 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN categoryfeatparamvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryfeatparamvalue.value IS 'Category parameter value';


--
-- TOC entry 4453 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN categoryfeatparamvalue.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryfeatparamvalue.unitid IS 'Foreign Key (FK) to the related unit of measure. Contains "unit".unitid. Optional';


--
-- TOC entry 265 (class 1259 OID 20573)
-- Name: categoryparametervalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categoryparametervalue (
    parameterid bigint NOT NULL,
    value character varying(255),
    unitid bigint
);


ALTER TABLE categoryparametervalue OWNER TO postgres;

--
-- TOC entry 4454 (class 0 OID 0)
-- Dependencies: 265
-- Name: TABLE categoryparametervalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE categoryparametervalue IS 'Value table for category parameter';


--
-- TOC entry 4455 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN categoryparametervalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryparametervalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "parameter".parameterid';


--
-- TOC entry 4456 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN categoryparametervalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryparametervalue.value IS 'Category parameter value';


--
-- TOC entry 4457 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN categoryparametervalue.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryparametervalue.unitid IS 'Foreign Key (FK) to the related unit of measure. Contains "unit".unitid. Optional';


--
-- TOC entry 266 (class 1259 OID 20578)
-- Name: categoryvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categoryvalue (
    observationid bigint NOT NULL,
    value character varying(255),
    identifier character varying(255),
    name character varying(255),
    description character varying(255)
);


ALTER TABLE categoryvalue OWNER TO postgres;

--
-- TOC entry 4458 (class 0 OID 0)
-- Dependencies: 266
-- Name: TABLE categoryvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE categoryvalue IS 'Value table for category observation';


--
-- TOC entry 4459 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN categoryvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4460 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN categoryvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryvalue.value IS 'Category observation value';


--
-- TOC entry 4461 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN categoryvalue.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryvalue.identifier IS 'SweCategory observation identifier';


--
-- TOC entry 4462 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN categoryvalue.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryvalue.name IS 'SweCategory observation name';


--
-- TOC entry 4463 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN categoryvalue.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN categoryvalue.description IS 'SweCategory observation description';


--
-- TOC entry 267 (class 1259 OID 20586)
-- Name: codespace; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE codespace (
    codespaceid bigint NOT NULL,
    codespace character varying(255) NOT NULL
);


ALTER TABLE codespace OWNER TO postgres;

--
-- TOC entry 4464 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE codespace IS 'Table to store the gml:identifier and gml:name codespace information. Mapping file: mapping/core/Codespace.hbm.xml';


--
-- TOC entry 4465 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN codespace.codespaceid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN codespace.codespaceid IS 'Table primary key, used for relations';


--
-- TOC entry 4466 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN codespace.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN codespace.codespace IS 'The codespace value';


--
-- TOC entry 311 (class 1259 OID 21364)
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
-- TOC entry 268 (class 1259 OID 20591)
-- Name: complexvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE complexvalue (
    observationid bigint NOT NULL
);


ALTER TABLE complexvalue OWNER TO postgres;

--
-- TOC entry 4467 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE complexvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE complexvalue IS 'Value table for complex observation';


--
-- TOC entry 4468 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN complexvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN complexvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 269 (class 1259 OID 20596)
-- Name: compositeobservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE compositeobservation (
    observationid bigint NOT NULL,
    childobservationid bigint NOT NULL
);


ALTER TABLE compositeobservation OWNER TO postgres;

--
-- TOC entry 4469 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE compositeobservation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE compositeobservation IS 'Relation table for complex parent/child observations';


--
-- TOC entry 4470 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN compositeobservation.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN compositeobservation.observationid IS 'Foreign Key (FK) to the related parent complex observation. Contains "observation".observationid';


--
-- TOC entry 4471 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN compositeobservation.childobservationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN compositeobservation.childobservationid IS 'Foreign Key (FK) to the related child complex observation. Contains "observation".observationid';


--
-- TOC entry 270 (class 1259 OID 20601)
-- Name: compositephenomenon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE compositephenomenon (
    parentobservablepropertyid bigint NOT NULL,
    childobservablepropertyid bigint NOT NULL
);


ALTER TABLE compositephenomenon OWNER TO postgres;

--
-- TOC entry 4472 (class 0 OID 0)
-- Dependencies: 270
-- Name: TABLE compositephenomenon; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE compositephenomenon IS 'Relation table to store observableProperty hierarchies, aka compositePhenomenon. E.g. define a parent in a query and all childs are also contained in the response. Mapping file: mapping/transactional/TObservableProperty.hbm.xml';


--
-- TOC entry 4473 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN compositephenomenon.parentobservablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN compositephenomenon.parentobservablepropertyid IS 'Foreign Key (FK) to the related parent observableProperty. Contains "observableProperty".observablePropertyid';


--
-- TOC entry 4474 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN compositephenomenon.childobservablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN compositephenomenon.childobservablepropertyid IS 'Foreign Key (FK) to the related child observableProperty. Contains "observableProperty".observablePropertyid';


--
-- TOC entry 271 (class 1259 OID 20606)
-- Name: countfeatparamvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countfeatparamvalue (
    parameterid bigint NOT NULL,
    value integer
);


ALTER TABLE countfeatparamvalue OWNER TO postgres;

--
-- TOC entry 4475 (class 0 OID 0)
-- Dependencies: 271
-- Name: TABLE countfeatparamvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE countfeatparamvalue IS 'Value table for count parameter';


--
-- TOC entry 4476 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN countfeatparamvalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN countfeatparamvalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "featureParameter".parameterid';


--
-- TOC entry 4477 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN countfeatparamvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN countfeatparamvalue.value IS 'Count parameter value';


--
-- TOC entry 272 (class 1259 OID 20611)
-- Name: countparametervalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countparametervalue (
    parameterid bigint NOT NULL,
    value integer
);


ALTER TABLE countparametervalue OWNER TO postgres;

--
-- TOC entry 4478 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE countparametervalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE countparametervalue IS 'Value table for count parameter';


--
-- TOC entry 4479 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN countparametervalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN countparametervalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "parameter".parameterid';


--
-- TOC entry 4480 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN countparametervalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN countparametervalue.value IS 'Count parameter value';


--
-- TOC entry 273 (class 1259 OID 20616)
-- Name: countvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countvalue (
    observationid bigint NOT NULL,
    value integer
);


ALTER TABLE countvalue OWNER TO postgres;

--
-- TOC entry 4481 (class 0 OID 0)
-- Dependencies: 273
-- Name: TABLE countvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE countvalue IS 'Value table for count observation';


--
-- TOC entry 4482 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN countvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN countvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4483 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN countvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN countvalue.value IS 'Count observation value';


--
-- TOC entry 274 (class 1259 OID 20621)
-- Name: featureofinterest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE featureofinterest (
    featureofinterestid bigint NOT NULL,
    hibernatediscriminator character varying(255),
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
-- TOC entry 4484 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.featureofinterestid IS 'Table primary key, used for relations';


--
-- TOC entry 4485 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.featureofinteresttypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.featureofinteresttypeid IS 'Relation/foreign key to the featureOfInterestType table. Describes the type of the featureOfInterest. Contains "featureOfInterestType".featureOfInterestTypeId';


--
-- TOC entry 4486 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.identifier IS 'The identifier of the featureOfInterest, gml:identifier. Used as parameter for queries. Optional but unique';


--
-- TOC entry 4487 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4488 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.name IS 'The name of the featureOfInterest, gml:name. Optional';


--
-- TOC entry 4489 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.codespacename IS 'The name of the featureOfInterest, gml:name. Optional';


--
-- TOC entry 4490 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.description IS 'Description of the featureOfInterest, gml:description. Optional';


--
-- TOC entry 4491 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.geom; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.geom IS 'The geometry of the featureOfInterest (composed of the “latitude” and “longitude”) . Optional';


--
-- TOC entry 4492 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.descriptionxml; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.descriptionxml IS 'XML description of the feature, used when transactional profile is supported . Optional';


--
-- TOC entry 4493 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN featureofinterest.url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinterest.url IS 'Reference URL to the feature if it is stored in another service, e.g. WFS. Optional but unique';


--
-- TOC entry 312 (class 1259 OID 21366)
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
-- TOC entry 275 (class 1259 OID 20629)
-- Name: featureofinteresttype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE featureofinteresttype (
    featureofinteresttypeid bigint NOT NULL,
    featureofinteresttype character varying(255) NOT NULL
);


ALTER TABLE featureofinteresttype OWNER TO postgres;

--
-- TOC entry 4494 (class 0 OID 0)
-- Dependencies: 275
-- Name: TABLE featureofinteresttype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE featureofinteresttype IS 'Table to store the FeatureOfInterestType information. Mapping file: mapping/core/FeatureOfInterestType.hbm.xml';


--
-- TOC entry 4495 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN featureofinteresttype.featureofinteresttypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinteresttype.featureofinteresttypeid IS 'Table primary key, used for relations';


--
-- TOC entry 4496 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN featureofinteresttype.featureofinteresttype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureofinteresttype.featureofinteresttype IS 'The featureOfInterestType value, e.g. http://www.opengis.net/def/samplingFeatureType/OGC-OM/2.0/SF_SamplingPoint (OGC OM 2.0 specification) for point features';


--
-- TOC entry 313 (class 1259 OID 21368)
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
-- TOC entry 276 (class 1259 OID 20634)
-- Name: featureparameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE featureparameter (
    parameterid bigint NOT NULL,
    featureofinterestid bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE featureparameter OWNER TO postgres;

--
-- TOC entry 4497 (class 0 OID 0)
-- Dependencies: 276
-- Name: TABLE featureparameter; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE featureparameter IS 'Table to store additional featureOfInterest information (sf:parameter). Mapping file: mapping/core/FeatureParameter.hbm.xml';


--
-- TOC entry 4498 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN featureparameter.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureparameter.parameterid IS 'Table primary key';


--
-- TOC entry 4499 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN featureparameter.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureparameter.featureofinterestid IS 'Foreign Key (FK) to the related featureOfInterest. Contains "featureOfInterest.featureOfInterestId';


--
-- TOC entry 4500 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN featureparameter.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featureparameter.name IS 'Parameter name';


--
-- TOC entry 277 (class 1259 OID 20639)
-- Name: featurerelation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE featurerelation (
    parentfeatureid bigint NOT NULL,
    childfeatureid bigint NOT NULL
);


ALTER TABLE featurerelation OWNER TO postgres;

--
-- TOC entry 4501 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE featurerelation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE featurerelation IS 'Relation table to store feature hierarchies. E.g. define a parent in a query and all childs are also contained in the response. Mapping file: mapping/transactional/TFeatureOfInterest.hbm.xml';


--
-- TOC entry 4502 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN featurerelation.parentfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featurerelation.parentfeatureid IS 'Foreign Key (FK) to the related parent featureOfInterest. Contains "featureOfInterest".featureOfInterestid';


--
-- TOC entry 4503 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN featurerelation.childfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN featurerelation.childfeatureid IS 'Foreign Key (FK) to the related child featureOfInterest. Contains "featureOfInterest".featureOfInterestid';


--
-- TOC entry 278 (class 1259 OID 20644)
-- Name: geometryvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE geometryvalue (
    observationid bigint NOT NULL,
    value geometry
);


ALTER TABLE geometryvalue OWNER TO postgres;

--
-- TOC entry 4504 (class 0 OID 0)
-- Dependencies: 278
-- Name: TABLE geometryvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE geometryvalue IS 'Value table for geometry observation';


--
-- TOC entry 4505 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN geometryvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN geometryvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4506 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN geometryvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN geometryvalue.value IS 'Geometry observation value';


--
-- TOC entry 279 (class 1259 OID 20652)
-- Name: numericfeatparamvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE numericfeatparamvalue (
    parameterid bigint NOT NULL,
    value double precision,
    unitid bigint
);


ALTER TABLE numericfeatparamvalue OWNER TO postgres;

--
-- TOC entry 4507 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE numericfeatparamvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE numericfeatparamvalue IS 'Value table for numeric/Measurment parameter';


--
-- TOC entry 4508 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN numericfeatparamvalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericfeatparamvalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "featureParameter".parameterid';


--
-- TOC entry 4509 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN numericfeatparamvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericfeatparamvalue.value IS 'Numeric/Quantity parameter value';


--
-- TOC entry 4510 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN numericfeatparamvalue.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericfeatparamvalue.unitid IS 'Foreign Key (FK) to the related unit of measure. Contains "unit".unitid. Optional';


--
-- TOC entry 280 (class 1259 OID 20657)
-- Name: numericparametervalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE numericparametervalue (
    parameterid bigint NOT NULL,
    value double precision,
    unitid bigint
);


ALTER TABLE numericparametervalue OWNER TO postgres;

--
-- TOC entry 4511 (class 0 OID 0)
-- Dependencies: 280
-- Name: TABLE numericparametervalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE numericparametervalue IS 'Value table for numeric/Measurment parameter';


--
-- TOC entry 4512 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN numericparametervalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericparametervalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "parameter".parameterid';


--
-- TOC entry 4513 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN numericparametervalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericparametervalue.value IS 'Numeric/Quantity parameter value';


--
-- TOC entry 4514 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN numericparametervalue.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericparametervalue.unitid IS 'Foreign Key (FK) to the related unit of measure. Contains "unit".unitid. Optional';


--
-- TOC entry 281 (class 1259 OID 20662)
-- Name: numericvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE numericvalue (
    observationid bigint NOT NULL,
    value double precision
);


ALTER TABLE numericvalue OWNER TO postgres;

--
-- TOC entry 4515 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE numericvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE numericvalue IS 'Value table for numeric/Measurment observation';


--
-- TOC entry 4516 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN numericvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4517 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN numericvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN numericvalue.value IS 'Numeric/Measurment observation value';


--
-- TOC entry 282 (class 1259 OID 20667)
-- Name: observableproperty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observableproperty (
    observablepropertyid bigint NOT NULL,
    identifier character varying(255) NOT NULL,
    codespace bigint,
    name character varying(255),
    codespacename bigint,
    description character varying(255),
    disabled character(1) DEFAULT 'F'::bpchar NOT NULL,
    hiddenchild character(1) DEFAULT 'F'::bpchar NOT NULL,
    CONSTRAINT observableproperty_disabled_check CHECK ((disabled = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT observableproperty_hiddenchild_check CHECK ((hiddenchild = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE observableproperty OWNER TO postgres;

--
-- TOC entry 4518 (class 0 OID 0)
-- Dependencies: 282
-- Name: TABLE observableproperty; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observableproperty IS 'Table to store the ObservedProperty/Phenomenon information. Mapping file: mapping/core/ObservableProperty.hbm.xml';


--
-- TOC entry 4519 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN observableproperty.observablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.observablepropertyid IS 'Table primary key, used for relations';


--
-- TOC entry 4520 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN observableproperty.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.identifier IS 'The identifier of the observableProperty, gml:identifier. Used as parameter for queries. Unique';


--
-- TOC entry 4521 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN observableproperty.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4522 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN observableproperty.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.name IS 'The name of the observableProperty, gml:name. Optional';


--
-- TOC entry 4523 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN observableproperty.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.codespacename IS 'Relation/foreign key to the codespace table. Contains the gml:name codespace. Optional';


--
-- TOC entry 4524 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN observableproperty.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.description IS 'Description of the observableProperty, gml:description. Optional';


--
-- TOC entry 4525 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN observableproperty.disabled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observableproperty.disabled IS 'For later use by the SOS. Indicator if this observableProperty should not be provided by the SOS.';


--
-- TOC entry 314 (class 1259 OID 21370)
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
-- TOC entry 283 (class 1259 OID 20679)
-- Name: observation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observation (
    observationid bigint NOT NULL,
    seriesid bigint NOT NULL,
    phenomenontimestart timestamp without time zone NOT NULL,
    phenomenontimeend timestamp without time zone NOT NULL,
    resulttime timestamp without time zone NOT NULL,
    deleted character(1) DEFAULT 'F'::bpchar NOT NULL,
    child character(1) DEFAULT 'F'::bpchar NOT NULL,
    parent character(1) DEFAULT 'F'::bpchar NOT NULL,
    validtimestart timestamp without time zone,
    validtimeend timestamp without time zone,
    samplinggeometry geometry,
    identifier character varying(255),
    codespace bigint,
    name character varying(255),
    codespacename bigint,
    description character varying(255),
    unitid bigint,
    CONSTRAINT observation_child_check CHECK ((child = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT observation_deleted_check CHECK ((deleted = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT observation_parent_check CHECK ((parent = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE observation OWNER TO postgres;

--
-- TOC entry 4526 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE observation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observation IS 'Stores the observations. Mapping file: mapping/series/observation/Observation.hbm.xml';


--
-- TOC entry 4527 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.observationid IS 'Table primary key, used in relations';


--
-- TOC entry 4528 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.seriesid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.seriesid IS 'Relation/foreign key to the associated series table. Contains "series".seriesId';


--
-- TOC entry 4529 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.phenomenontimestart; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.phenomenontimestart IS 'Time stamp when the observation was started or phenomenon was observed';


--
-- TOC entry 4530 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.phenomenontimeend; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.phenomenontimeend IS 'Time stamp when the observation was stopped or phenomenon was observed';


--
-- TOC entry 4531 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.resulttime; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.resulttime IS 'Time stamp when the observation was published or result was published/available';


--
-- TOC entry 4532 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.deleted IS 'Flag to indicate that this observation is deleted or not (OGC SWES 2.0 - DeleteSensor operation or not specified DeleteObservation)';


--
-- TOC entry 4533 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.child; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.child IS 'Flag to indicate that this observation is a child observation for complex observation';


--
-- TOC entry 4534 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.parent; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.parent IS 'Flag to indicate that this observation is a parent observation for complex observation';


--
-- TOC entry 4535 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.validtimestart; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.validtimestart IS 'Start time stamp for which the observation/result is valid, e.g. used for forecasting. Optional';


--
-- TOC entry 4536 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.validtimeend; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.validtimeend IS 'End time stamp for which the observation/result is valid, e.g. used for forecasting. Optional';


--
-- TOC entry 4537 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.samplinggeometry; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.samplinggeometry IS 'Sampling geometry describes exactly where the measurement has taken place. Used for OGC SOS 2.0 Spatial Filtering Profile. Optional';


--
-- TOC entry 4538 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.identifier IS 'The identifier of the observation, gml:identifier. Used as parameter for queries. Optional but unique';


--
-- TOC entry 4539 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4540 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.name IS 'The name of the observation, gml:name. Optional';


--
-- TOC entry 4541 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.codespacename IS 'The name of the observation, gml:name. Optional';


--
-- TOC entry 4542 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.description IS 'Description of the observation, gml:description. Optional';


--
-- TOC entry 4543 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN observation.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observation.unitid IS 'Foreign Key (FK) to the related unit of measure. Contains "unit".unitid. Optional';


--
-- TOC entry 284 (class 1259 OID 20693)
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
    disabled character(1) DEFAULT 'F'::bpchar NOT NULL,
    CONSTRAINT observationconstellation_deleted_check CHECK ((deleted = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT observationconstellation_disabled_check CHECK ((disabled = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT observationconstellation_hiddenchild_check CHECK ((hiddenchild = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE observationconstellation OWNER TO postgres;

--
-- TOC entry 4544 (class 0 OID 0)
-- Dependencies: 284
-- Name: TABLE observationconstellation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observationconstellation IS 'Table to store the ObservationConstellation information. Contains information about the constellation of observableProperty, procedure, offering and the observationType. Mapping file: mapping/core/ObservationConstellation.hbm.xml';


--
-- TOC entry 4545 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN observationconstellation.observationconstellationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.observationconstellationid IS 'Table primary key, used for relations';


--
-- TOC entry 4546 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN observationconstellation.observablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.observablepropertyid IS 'Foreign Key (FK) to the related observableProperty. Contains "observableproperty".observablepropertyid';


--
-- TOC entry 4547 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN observationconstellation.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.procedureid IS 'Foreign Key (FK) to the related procedure. Contains "procedure".procedureid';


--
-- TOC entry 4548 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN observationconstellation.observationtypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.observationtypeid IS 'Foreign Key (FK) to the related observation type. Contains "observationtype".observationtypeid';


--
-- TOC entry 4549 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN observationconstellation.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 4550 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN observationconstellation.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.deleted IS 'Flag to indicate that this observationConstellation is deleted or not. Set if the related procedure is deleted via DeleteSensor operation (OGC SWES 2.0 - DeleteSensor operation)';


--
-- TOC entry 4551 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN observationconstellation.hiddenchild; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.hiddenchild IS 'Flag to indicate that this observationConstellations procedure is a child procedure of another procedure. If true, the related procedure is not contained in OGC SOS 2.0 Capabilities but in OGC SOS 1.0.0 Capabilities.';


--
-- TOC entry 4552 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN observationconstellation.disabled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationconstellation.disabled IS 'Flag to indicate that this observationConstellations is disabled for insertion of observations. If false, new observation could be added to the SOS.';


--
-- TOC entry 315 (class 1259 OID 21372)
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
-- TOC entry 285 (class 1259 OID 20704)
-- Name: observationhasoffering; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observationhasoffering (
    observationid bigint NOT NULL,
    offeringid bigint NOT NULL
);


ALTER TABLE observationhasoffering OWNER TO postgres;

--
-- TOC entry 4553 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN observationhasoffering.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationhasoffering.observationid IS 'Foreign Key (FK) to the related observation. Contains "observation".observationid';


--
-- TOC entry 4554 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN observationhasoffering.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationhasoffering.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 316 (class 1259 OID 21374)
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
-- TOC entry 286 (class 1259 OID 20709)
-- Name: observationtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE observationtype (
    observationtypeid bigint NOT NULL,
    observationtype character varying(255) NOT NULL
);


ALTER TABLE observationtype OWNER TO postgres;

--
-- TOC entry 4555 (class 0 OID 0)
-- Dependencies: 286
-- Name: TABLE observationtype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE observationtype IS 'Table to store the observationTypes. Mapping file: mapping/core/ObservationType.hbm.xml';


--
-- TOC entry 4556 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN observationtype.observationtypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationtype.observationtypeid IS 'Table primary key, used for relations';


--
-- TOC entry 4557 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN observationtype.observationtype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN observationtype.observationtype IS 'The observationType value, e.g. http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement (OGC OM 2.0 specification) for OM_Measurement';


--
-- TOC entry 317 (class 1259 OID 21376)
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
-- TOC entry 287 (class 1259 OID 20714)
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
-- TOC entry 4558 (class 0 OID 0)
-- Dependencies: 287
-- Name: TABLE offering; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offering IS 'Table to store the offering information. Mapping file: mapping/core/Offering.hbm.xml';


--
-- TOC entry 4559 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN offering.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.offeringid IS 'Table primary key, used for relations';


--
-- TOC entry 4560 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN offering.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.identifier IS 'The identifier of the offering, gml:identifier. Used as parameter for queries. Unique';


--
-- TOC entry 4561 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN offering.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4562 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN offering.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.name IS 'The name of the offering, gml:name. If available, displyed in the contents of the Capabilites. Optional';


--
-- TOC entry 4563 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN offering.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.codespacename IS 'Relation/foreign key to the codespace table. Contains the gml:name codespace. Optional';


--
-- TOC entry 4564 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN offering.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.description IS 'Description of the offering, gml:description. Optional';


--
-- TOC entry 4565 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN offering.disabled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offering.disabled IS 'For later use by the SOS. Indicator if this offering should not be provided by the SOS.';


--
-- TOC entry 288 (class 1259 OID 20724)
-- Name: offeringallowedfeaturetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE offeringallowedfeaturetype (
    offeringid bigint NOT NULL,
    featureofinteresttypeid bigint NOT NULL
);


ALTER TABLE offeringallowedfeaturetype OWNER TO postgres;

--
-- TOC entry 4566 (class 0 OID 0)
-- Dependencies: 288
-- Name: TABLE offeringallowedfeaturetype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offeringallowedfeaturetype IS 'Table to store relations between offering and allowed featureOfInterestTypes, defined in InsertSensor request. Mapping file: mapping/transactional/TOffering.hbm.xml';


--
-- TOC entry 4567 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN offeringallowedfeaturetype.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringallowedfeaturetype.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 4568 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN offeringallowedfeaturetype.featureofinteresttypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringallowedfeaturetype.featureofinteresttypeid IS 'Foreign Key (FK) to the related featureOfInterestTypeId. Contains "featureOfInterestType".featureOfInterestTypeId';


--
-- TOC entry 289 (class 1259 OID 20729)
-- Name: offeringallowedobservationtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE offeringallowedobservationtype (
    offeringid bigint NOT NULL,
    observationtypeid bigint NOT NULL
);


ALTER TABLE offeringallowedobservationtype OWNER TO postgres;

--
-- TOC entry 4569 (class 0 OID 0)
-- Dependencies: 289
-- Name: TABLE offeringallowedobservationtype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offeringallowedobservationtype IS 'Table to store relations between offering and allowed observationTypes, defined in InsertSensor request. Mapping file: mapping/transactional/TOffering.hbm.xml';


--
-- TOC entry 4570 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN offeringallowedobservationtype.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringallowedobservationtype.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 4571 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN offeringallowedobservationtype.observationtypeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringallowedobservationtype.observationtypeid IS 'Foreign Key (FK) to the related observationType. Contains "observationType".observationTypeId';


--
-- TOC entry 290 (class 1259 OID 20734)
-- Name: offeringhasrelatedfeature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE offeringhasrelatedfeature (
    relatedfeatureid bigint NOT NULL,
    offeringid bigint NOT NULL
);


ALTER TABLE offeringhasrelatedfeature OWNER TO postgres;

--
-- TOC entry 4572 (class 0 OID 0)
-- Dependencies: 290
-- Name: TABLE offeringhasrelatedfeature; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offeringhasrelatedfeature IS 'Table to store relations between offering and associated relatedFeatures. Mapping file: mapping/transactional/TOffering.hbm.xml';


--
-- TOC entry 4573 (class 0 OID 0)
-- Dependencies: 290
-- Name: COLUMN offeringhasrelatedfeature.relatedfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringhasrelatedfeature.relatedfeatureid IS 'Foreign Key (FK) to the related relatedFeature. Contains "relatedFeature".relatedFeatureid';


--
-- TOC entry 4574 (class 0 OID 0)
-- Dependencies: 290
-- Name: COLUMN offeringhasrelatedfeature.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringhasrelatedfeature.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 318 (class 1259 OID 21378)
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
-- TOC entry 291 (class 1259 OID 20739)
-- Name: offeringrelation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE offeringrelation (
    parentofferingid bigint NOT NULL,
    childofferingid bigint NOT NULL
);


ALTER TABLE offeringrelation OWNER TO postgres;

--
-- TOC entry 4575 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE offeringrelation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE offeringrelation IS 'Relation table to store offering hierarchies. E.g. define a parent in a query and all childs are also contained in the response. Mapping file: mapping/core/Offering.hbm.xml';


--
-- TOC entry 4576 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN offeringrelation.parentofferingid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringrelation.parentofferingid IS 'Foreign Key (FK) to the related parent offering. Contains "offering".offeringid';


--
-- TOC entry 4577 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN offeringrelation.childofferingid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN offeringrelation.childofferingid IS 'Foreign Key (FK) to the related child offering. Contains "offering".offeringid';


--
-- TOC entry 292 (class 1259 OID 20744)
-- Name: parameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE parameter (
    parameterid bigint NOT NULL,
    observationid bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE parameter OWNER TO postgres;

--
-- TOC entry 4578 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE parameter; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE parameter IS 'Table to store additional obervation information (om:parameter). Mapping file: mapping/core/Parameter.hbm.xml';


--
-- TOC entry 4579 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN parameter.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN parameter.parameterid IS 'Table primary key';


--
-- TOC entry 4580 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN parameter.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN parameter.observationid IS 'Foreign Key (FK) to the related observation. Contains "observation".observationId';


--
-- TOC entry 4581 (class 0 OID 0)
-- Dependencies: 292
-- Name: COLUMN parameter.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN parameter.name IS 'Parameter name';


--
-- TOC entry 319 (class 1259 OID 21380)
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
-- TOC entry 320 (class 1259 OID 21382)
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
-- TOC entry 259 (class 1259 OID 20522)
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
    typeof bigint,
    istype character(1) DEFAULT 'F'::bpchar,
    isaggregation character(1) DEFAULT 'T'::bpchar,
    mobile character(1) DEFAULT 'F'::bpchar,
    insitu character(1) DEFAULT 'T'::bpchar,
    CONSTRAINT procedure_deleted_check CHECK ((deleted = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT procedure_disabled_check CHECK ((disabled = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT procedure_insitu_check CHECK ((insitu = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT procedure_isaggregation_check CHECK ((isaggregation = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT procedure_istype_check CHECK ((istype = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT procedure_mobile_check CHECK ((mobile = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT procedure_referenceflag_check CHECK ((referenceflag = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE procedure OWNER TO postgres;

--
-- TOC entry 4582 (class 0 OID 0)
-- Dependencies: 259
-- Name: TABLE procedure; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE procedure IS 'Table to store the procedure/sensor. Mapping file: mapping/core/Procedure.hbm.xml';


--
-- TOC entry 4583 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.procedureid IS 'Table primary key, used for relations';


--
-- TOC entry 4584 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.proceduredescriptionformatid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.proceduredescriptionformatid IS 'Relation/foreign key to the procedureDescriptionFormat table. Describes the format of the procedure description.';


--
-- TOC entry 4585 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.identifier IS 'The identifier of the procedure, gml:identifier. Used as parameter for queries. Unique';


--
-- TOC entry 4586 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4587 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.name IS 'The name of the procedure, gml:name. Optional';


--
-- TOC entry 4588 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.codespacename IS 'Relation/foreign key to the codespace table. Contains the gml:name codespace. Optional';


--
-- TOC entry 4589 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.description IS 'Description of the procedure, gml:description. Optional';


--
-- TOC entry 4590 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.deleted IS 'Flag to indicate that this procedure is deleted or not (OGC SWES 2.0 - DeleteSensor operation)';


--
-- TOC entry 4591 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.disabled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.disabled IS 'For later use by the SOS. Indicator if this procedure should not be provided by the SOS.';


--
-- TOC entry 4592 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.descriptionfile; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.descriptionfile IS 'Field for full (XML) encoded procedure description or link to a procedure description file. Optional';


--
-- TOC entry 4593 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.referenceflag; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.referenceflag IS 'Flag to indicate that this procedure is a reference procedure of another procedure. Not used by the SOS but by the Sensor Web REST-API';


--
-- TOC entry 4594 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.typeof; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.typeof IS 'Relation/foreign key to procedure table. Optional, contains procedureId if this procedure is typeOf another procedure';


--
-- TOC entry 4595 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.istype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.istype IS 'Flag to indicate that this procedure is a type description, has no observations.';


--
-- TOC entry 4596 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.isaggregation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.isaggregation IS 'Flag to indicate that this procedure is an aggregation (e.g. System, PhysicalSystem).';


--
-- TOC entry 4597 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.mobile; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.mobile IS 'Flag to indicate that this procedure is stationary (false) or mobile (true). Optional';


--
-- TOC entry 4598 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN procedure.insitu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN procedure.insitu IS 'Flag to indicate that this procedure is insitu (true) or remote (false). Optional';


--
-- TOC entry 293 (class 1259 OID 20749)
-- Name: proceduredescriptionformat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE proceduredescriptionformat (
    proceduredescriptionformatid bigint NOT NULL,
    proceduredescriptionformat character varying(255) NOT NULL
);


ALTER TABLE proceduredescriptionformat OWNER TO postgres;

--
-- TOC entry 4599 (class 0 OID 0)
-- Dependencies: 293
-- Name: TABLE proceduredescriptionformat; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE proceduredescriptionformat IS 'Table to store the ProcedureDescriptionFormat information of procedures. Mapping file: mapping/core/ProcedureDescriptionFormat.hbm.xml';


--
-- TOC entry 4600 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN proceduredescriptionformat.proceduredescriptionformatid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN proceduredescriptionformat.proceduredescriptionformatid IS 'Table primary key, used for relations';


--
-- TOC entry 4601 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN proceduredescriptionformat.proceduredescriptionformat; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN proceduredescriptionformat.proceduredescriptionformat IS 'The procedureDescriptionFormat value, e.g. http://www.opengis.net/sensorML/1.0.1 for procedures descriptions as specified in OGC SensorML 1.0.1';


--
-- TOC entry 321 (class 1259 OID 21384)
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
-- TOC entry 294 (class 1259 OID 20754)
-- Name: profileobservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profileobservation (
    observationid bigint NOT NULL,
    childobservationid bigint NOT NULL
);


ALTER TABLE profileobservation OWNER TO postgres;

--
-- TOC entry 4602 (class 0 OID 0)
-- Dependencies: 294
-- Name: TABLE profileobservation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE profileobservation IS 'Relation table for complex parent/child observations';


--
-- TOC entry 4603 (class 0 OID 0)
-- Dependencies: 294
-- Name: COLUMN profileobservation.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN profileobservation.observationid IS 'Foreign Key (FK) to the related parent complex observation. Contains "observation".observationid';


--
-- TOC entry 4604 (class 0 OID 0)
-- Dependencies: 294
-- Name: COLUMN profileobservation.childobservationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN profileobservation.childobservationid IS 'Foreign Key (FK) to the related child complex observation. Contains "observation".observationid';


--
-- TOC entry 295 (class 1259 OID 20759)
-- Name: profilevalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profilevalue (
    observationid bigint NOT NULL,
    fromlevel double precision,
    tolevel double precision,
    levelunitid bigint
);


ALTER TABLE profilevalue OWNER TO postgres;

--
-- TOC entry 4605 (class 0 OID 0)
-- Dependencies: 295
-- Name: TABLE profilevalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE profilevalue IS 'Value table for profile observation';


--
-- TOC entry 4606 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN profilevalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN profilevalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4607 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN profilevalue.fromlevel; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN profilevalue.fromlevel IS 'Value of fromLevel';


--
-- TOC entry 4608 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN profilevalue.tolevel; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN profilevalue.tolevel IS 'Value of toLevel';


--
-- TOC entry 4609 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN profilevalue.levelunitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN profilevalue.levelunitid IS 'Foreign Key (FK) to the related unit of measure. Contains "unit".unitid. Optional';


--
-- TOC entry 296 (class 1259 OID 20764)
-- Name: relatedfeature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE relatedfeature (
    relatedfeatureid bigint NOT NULL,
    featureofinterestid bigint NOT NULL
);


ALTER TABLE relatedfeature OWNER TO postgres;

--
-- TOC entry 4610 (class 0 OID 0)
-- Dependencies: 296
-- Name: TABLE relatedfeature; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE relatedfeature IS 'Table to store related feature information used in the OGC SOS 2.0 Capabilities (See also OGC SWES 2.0). Mapping file: mapping/transactionl/RelatedFeature.hbm.xml';


--
-- TOC entry 4611 (class 0 OID 0)
-- Dependencies: 296
-- Name: COLUMN relatedfeature.relatedfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeature.relatedfeatureid IS 'Table primary key, used for relations';


--
-- TOC entry 4612 (class 0 OID 0)
-- Dependencies: 296
-- Name: COLUMN relatedfeature.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeature.featureofinterestid IS 'Foreign Key (FK) to the related featureOfInterest. Contains "featureOfInterest".featureOfInterestid';


--
-- TOC entry 297 (class 1259 OID 20769)
-- Name: relatedfeaturehasrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE relatedfeaturehasrole (
    relatedfeatureid bigint NOT NULL,
    relatedfeatureroleid bigint NOT NULL
);


ALTER TABLE relatedfeaturehasrole OWNER TO postgres;

--
-- TOC entry 4613 (class 0 OID 0)
-- Dependencies: 297
-- Name: TABLE relatedfeaturehasrole; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE relatedfeaturehasrole IS 'Relation table to store relatedFeatures and their associated relatedFeatureRoles. Mapping file: mapping/transactionl/RelatedFeature.hbm.xml';


--
-- TOC entry 4614 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN relatedfeaturehasrole.relatedfeatureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeaturehasrole.relatedfeatureid IS 'Foreign Key (FK) to the related relatedFeature. Contains "relatedFeature".relatedFeatureid';


--
-- TOC entry 4615 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN relatedfeaturehasrole.relatedfeatureroleid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeaturehasrole.relatedfeatureroleid IS 'Foreign Key (FK) to the related relatedFeatureRole. Contains "relatedFeatureRole".relatedFeatureRoleid';


--
-- TOC entry 322 (class 1259 OID 21386)
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
-- TOC entry 298 (class 1259 OID 20774)
-- Name: relatedfeaturerole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE relatedfeaturerole (
    relatedfeatureroleid bigint NOT NULL,
    relatedfeaturerole character varying(255) NOT NULL
);


ALTER TABLE relatedfeaturerole OWNER TO postgres;

--
-- TOC entry 4616 (class 0 OID 0)
-- Dependencies: 298
-- Name: TABLE relatedfeaturerole; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE relatedfeaturerole IS 'Table to store related feature role information used in the OGC SOS 2.0 Capabilities (See also OGC SWES 2.0). Mapping file: mapping/transactionl/RelatedFeatureRole.hbm.xml';


--
-- TOC entry 4617 (class 0 OID 0)
-- Dependencies: 298
-- Name: COLUMN relatedfeaturerole.relatedfeatureroleid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeaturerole.relatedfeatureroleid IS 'Table primary key, used for relations';


--
-- TOC entry 4618 (class 0 OID 0)
-- Dependencies: 298
-- Name: COLUMN relatedfeaturerole.relatedfeaturerole; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedfeaturerole.relatedfeaturerole IS 'The related feature role definition. See OGC SWES 2.0 specification';


--
-- TOC entry 323 (class 1259 OID 21388)
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
-- TOC entry 299 (class 1259 OID 20779)
-- Name: relatedobservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE relatedobservation (
    relatedobservationid bigint NOT NULL,
    observationid bigint,
    relatedobservation bigint,
    role character varying(255),
    relatedurl character varying(255)
);


ALTER TABLE relatedobservation OWNER TO postgres;

--
-- TOC entry 4619 (class 0 OID 0)
-- Dependencies: 299
-- Name: TABLE relatedobservation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE relatedobservation IS 'The related observation of an observation.';


--
-- TOC entry 4620 (class 0 OID 0)
-- Dependencies: 299
-- Name: COLUMN relatedobservation.relatedobservationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedobservation.relatedobservationid IS 'Table primary key';


--
-- TOC entry 4621 (class 0 OID 0)
-- Dependencies: 299
-- Name: COLUMN relatedobservation.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedobservation.observationid IS 'Foreign Key (FK) to the observation. Contains "observation".observationId';


--
-- TOC entry 4622 (class 0 OID 0)
-- Dependencies: 299
-- Name: COLUMN relatedobservation.relatedobservation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedobservation.relatedobservation IS 'Relation/foreign key to the associated observation table. Contains "observation".observationId';


--
-- TOC entry 4623 (class 0 OID 0)
-- Dependencies: 299
-- Name: COLUMN relatedobservation.role; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedobservation.role IS 'The role of the relation';


--
-- TOC entry 4624 (class 0 OID 0)
-- Dependencies: 299
-- Name: COLUMN relatedobservation.relatedurl; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN relatedobservation.relatedurl IS 'An url to a related observation';


--
-- TOC entry 324 (class 1259 OID 21390)
-- Name: relatedobservationid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE relatedobservationid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relatedobservationid_seq OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 20787)
-- Name: resulttemplate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE resulttemplate (
    resulttemplateid bigint NOT NULL,
    offeringid bigint NOT NULL,
    observablepropertyid bigint NOT NULL,
    procedureid bigint,
    featureofinterestid bigint,
    identifier character varying(255) NOT NULL,
    resultstructure text NOT NULL,
    resultencoding text NOT NULL
);


ALTER TABLE resulttemplate OWNER TO postgres;

--
-- TOC entry 4625 (class 0 OID 0)
-- Dependencies: 300
-- Name: TABLE resulttemplate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE resulttemplate IS 'Table to store resultTemplates (OGC SOS 2.0 result handling profile). Mapping file: mapping/transactionl/ResultTemplate.hbm.xml';


--
-- TOC entry 4626 (class 0 OID 0)
-- Dependencies: 300
-- Name: COLUMN resulttemplate.resulttemplateid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.resulttemplateid IS 'Table primary key';


--
-- TOC entry 4627 (class 0 OID 0)
-- Dependencies: 300
-- Name: COLUMN resulttemplate.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 4628 (class 0 OID 0)
-- Dependencies: 300
-- Name: COLUMN resulttemplate.observablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.observablepropertyid IS 'Foreign Key (FK) to the related observableProperty. Contains "observableProperty".observablePropertyId';


--
-- TOC entry 4629 (class 0 OID 0)
-- Dependencies: 300
-- Name: COLUMN resulttemplate.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.procedureid IS 'Foreign Key (FK) to the related procedure. Contains "procedure".procedureId';


--
-- TOC entry 4630 (class 0 OID 0)
-- Dependencies: 300
-- Name: COLUMN resulttemplate.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.featureofinterestid IS 'Foreign Key (FK) to the related featureOfInterest. Contains "featureOfInterest".featureOfInterestid';


--
-- TOC entry 4631 (class 0 OID 0)
-- Dependencies: 300
-- Name: COLUMN resulttemplate.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.identifier IS 'The resultTemplate identifier, required for InsertResult requests.';


--
-- TOC entry 4632 (class 0 OID 0)
-- Dependencies: 300
-- Name: COLUMN resulttemplate.resultstructure; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.resultstructure IS 'The resultStructure as XML string. Describes the types and order of the values in a GetResultResponse/InsertResultRequest';


--
-- TOC entry 4633 (class 0 OID 0)
-- Dependencies: 300
-- Name: COLUMN resulttemplate.resultencoding; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN resulttemplate.resultencoding IS 'The resultEncoding as XML string. Describes the encoding of the values in a GetResultResponse/InsertResultRequest';


--
-- TOC entry 325 (class 1259 OID 21392)
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
-- TOC entry 301 (class 1259 OID 20795)
-- Name: sensorsystem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sensorsystem (
    parentsensorid bigint NOT NULL,
    childsensorid bigint NOT NULL
);


ALTER TABLE sensorsystem OWNER TO postgres;

--
-- TOC entry 4634 (class 0 OID 0)
-- Dependencies: 301
-- Name: TABLE sensorsystem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE sensorsystem IS 'Relation table to store procedure hierarchies. E.g. define a parent in a query and all childs are also contained in the response. Mapping file: mapping/transactional/TProcedure.hbm.xml';


--
-- TOC entry 4635 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN sensorsystem.parentsensorid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sensorsystem.parentsensorid IS 'Foreign Key (FK) to the related parent procedure. Contains "procedure".procedureid';


--
-- TOC entry 4636 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN sensorsystem.childsensorid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sensorsystem.childsensorid IS 'Foreign Key (FK) to the related child procedure. Contains "procedure".procedureid';


--
-- TOC entry 302 (class 1259 OID 20800)
-- Name: series; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE series (
    seriesid bigint NOT NULL,
    featureofinterestid bigint NOT NULL,
    observablepropertyid bigint NOT NULL,
    procedureid bigint NOT NULL,
    offeringid bigint NOT NULL,
    deleted character(1) DEFAULT 'F'::bpchar NOT NULL,
    published character(1) DEFAULT 'T'::bpchar NOT NULL,
    hiddenchild character(1) DEFAULT 'F'::bpchar NOT NULL,
    firsttimestamp timestamp without time zone,
    lasttimestamp timestamp without time zone,
    firstnumericvalue double precision,
    lastnumericvalue double precision,
    unitid bigint,
    identifier character varying(255),
    codespace bigint,
    name character varying(255),
    codespacename bigint,
    description character varying(255),
    seriestype character varying(255),
    CONSTRAINT series_deleted_check CHECK ((deleted = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT series_hiddenchild_check CHECK ((hiddenchild = ANY (ARRAY['T'::bpchar, 'F'::bpchar]))),
    CONSTRAINT series_published_check CHECK ((published = ANY (ARRAY['T'::bpchar, 'F'::bpchar])))
);


ALTER TABLE series OWNER TO postgres;

--
-- TOC entry 4637 (class 0 OID 0)
-- Dependencies: 302
-- Name: TABLE series; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE series IS 'Table to store a (time-) series which consists of featureOfInterest, observableProperty, and procedure. Mapping file: mapping/series/Series.hbm.xml';


--
-- TOC entry 4638 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.seriesid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.seriesid IS 'Table primary key, used for relations';


--
-- TOC entry 4639 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.featureofinterestid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.featureofinterestid IS 'Foreign Key (FK) to the related featureOfInterest. Contains "featureOfInterest".featureOfInterestId';


--
-- TOC entry 4640 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.observablepropertyid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.observablepropertyid IS 'Foreign Key (FK) to the related observableProperty. Contains "observableproperty".observablepropertyid';


--
-- TOC entry 4641 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.procedureid IS 'Foreign Key (FK) to the related procedure. Contains "procedure".procedureid';


--
-- TOC entry 4642 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.offeringid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.offeringid IS 'Foreign Key (FK) to the related offering. Contains "offering".offeringid';


--
-- TOC entry 4643 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.deleted; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.deleted IS 'Flag to indicate that this series is deleted or not. Set if the related procedure is deleted via DeleteSensor operation (OGC SWES 2.0 - DeleteSensor operation)';


--
-- TOC entry 4644 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.published; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.published IS 'Flag to indicate that this series is published or not. A not published series is not contained in GetObservation and GetDataAvailability responses';


--
-- TOC entry 4645 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.hiddenchild; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.hiddenchild IS 'TODO';


--
-- TOC entry 4646 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.firsttimestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.firsttimestamp IS 'The time stamp of the first (temporal) observation associated to this series';


--
-- TOC entry 4647 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.lasttimestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.lasttimestamp IS 'The time stamp of the last (temporal) observation associated to this series';


--
-- TOC entry 4648 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.firstnumericvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.firstnumericvalue IS 'The value of the first (temporal) observation associated to this series';


--
-- TOC entry 4649 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.lastnumericvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.lastnumericvalue IS 'The value of the last (temporal) observation associated to this series';


--
-- TOC entry 4650 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.unitid IS 'Foreign Key (FK) to the related unit of the first/last numeric values . Contains "unit".unitid';


--
-- TOC entry 4651 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.identifier IS 'The identifier of the series, gml:identifier. Unique';


--
-- TOC entry 4652 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.codespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.codespace IS 'Relation/foreign key to the codespace table. Contains the gml:identifier codespace. Optional';


--
-- TOC entry 4653 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.name IS 'The name of the series, gml:name. Optional';


--
-- TOC entry 4654 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.codespacename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.codespacename IS 'Relation/foreign key to the codespace table. Contains the gml:name codespace. Optional';


--
-- TOC entry 4655 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.description IS 'Description of the series, gml:description. Optional';


--
-- TOC entry 4656 (class 0 OID 0)
-- Dependencies: 302
-- Name: COLUMN series.seriestype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN series.seriestype IS 'Definition of the series type, e.g. measurement for OM_Measurement. Optional';


--
-- TOC entry 326 (class 1259 OID 21394)
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
-- TOC entry 303 (class 1259 OID 20814)
-- Name: swedataarrayvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE swedataarrayvalue (
    observationid bigint NOT NULL,
    value text
);


ALTER TABLE swedataarrayvalue OWNER TO postgres;

--
-- TOC entry 4657 (class 0 OID 0)
-- Dependencies: 303
-- Name: TABLE swedataarrayvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE swedataarrayvalue IS 'Value table for SweDataArray observation';


--
-- TOC entry 4658 (class 0 OID 0)
-- Dependencies: 303
-- Name: COLUMN swedataarrayvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN swedataarrayvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4659 (class 0 OID 0)
-- Dependencies: 303
-- Name: COLUMN swedataarrayvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN swedataarrayvalue.value IS 'SweDataArray observation value';


--
-- TOC entry 304 (class 1259 OID 20822)
-- Name: textfeatparamvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE textfeatparamvalue (
    parameterid bigint NOT NULL,
    value character varying(255)
);


ALTER TABLE textfeatparamvalue OWNER TO postgres;

--
-- TOC entry 4660 (class 0 OID 0)
-- Dependencies: 304
-- Name: TABLE textfeatparamvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE textfeatparamvalue IS 'Value table for text parameter';


--
-- TOC entry 4661 (class 0 OID 0)
-- Dependencies: 304
-- Name: COLUMN textfeatparamvalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textfeatparamvalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "featureParameter".parameterid';


--
-- TOC entry 4662 (class 0 OID 0)
-- Dependencies: 304
-- Name: COLUMN textfeatparamvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textfeatparamvalue.value IS 'Text parameter value';


--
-- TOC entry 305 (class 1259 OID 20827)
-- Name: textparametervalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE textparametervalue (
    parameterid bigint NOT NULL,
    value character varying(255)
);


ALTER TABLE textparametervalue OWNER TO postgres;

--
-- TOC entry 4663 (class 0 OID 0)
-- Dependencies: 305
-- Name: TABLE textparametervalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE textparametervalue IS 'Value table for text parameter';


--
-- TOC entry 4664 (class 0 OID 0)
-- Dependencies: 305
-- Name: COLUMN textparametervalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textparametervalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "parameter".parameterid';


--
-- TOC entry 4665 (class 0 OID 0)
-- Dependencies: 305
-- Name: COLUMN textparametervalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textparametervalue.value IS 'Text parameter value';


--
-- TOC entry 306 (class 1259 OID 20832)
-- Name: textvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE textvalue (
    observationid bigint NOT NULL,
    value text,
    identifier character varying(255),
    name character varying(255),
    description character varying(255)
);


ALTER TABLE textvalue OWNER TO postgres;

--
-- TOC entry 4666 (class 0 OID 0)
-- Dependencies: 306
-- Name: TABLE textvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE textvalue IS 'Value table for text observation';


--
-- TOC entry 4667 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN textvalue.observationid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textvalue.observationid IS 'Foreign Key (FK) to the related observation from the observation table. Contains "observation".observationid';


--
-- TOC entry 4668 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN textvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textvalue.value IS 'Text observation value';


--
-- TOC entry 4669 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN textvalue.identifier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textvalue.identifier IS 'SweText observation identifier';


--
-- TOC entry 4670 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN textvalue.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textvalue.name IS 'SweText observation name';


--
-- TOC entry 4671 (class 0 OID 0)
-- Dependencies: 306
-- Name: COLUMN textvalue.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN textvalue.description IS 'SweText observation description';


--
-- TOC entry 307 (class 1259 OID 20840)
-- Name: unit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE unit (
    unitid bigint NOT NULL,
    unit character varying(255) NOT NULL,
    name character varying(255),
    link character varying(255)
);


ALTER TABLE unit OWNER TO postgres;

--
-- TOC entry 4672 (class 0 OID 0)
-- Dependencies: 307
-- Name: TABLE unit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE unit IS 'Table to store the unit of measure information, used in observations. Mapping file: mapping/core/Unit.hbm.xml';


--
-- TOC entry 4673 (class 0 OID 0)
-- Dependencies: 307
-- Name: COLUMN unit.unitid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN unit.unitid IS 'Table primary key, used for relations';


--
-- TOC entry 4674 (class 0 OID 0)
-- Dependencies: 307
-- Name: COLUMN unit.unit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN unit.unit IS 'The unit of measure of observations. See http://unitsofmeasure.org/ucum.html';


--
-- TOC entry 4675 (class 0 OID 0)
-- Dependencies: 307
-- Name: COLUMN unit.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN unit.name IS 'The name of the unit of measure of observations';


--
-- TOC entry 4676 (class 0 OID 0)
-- Dependencies: 307
-- Name: COLUMN unit.link; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN unit.link IS 'The link to an external description of the unit of measure of observations, e.g. a vocabulary';


--
-- TOC entry 327 (class 1259 OID 21396)
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
-- TOC entry 308 (class 1259 OID 20848)
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
-- TOC entry 4677 (class 0 OID 0)
-- Dependencies: 308
-- Name: TABLE validproceduretime; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE validproceduretime IS 'Table to store procedure descriptions which were inserted or updated via the transactional Profile. Mapping file: mapping/transactionl/ValidProcedureTime.hbm.xml';


--
-- TOC entry 4678 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN validproceduretime.validproceduretimeid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.validproceduretimeid IS 'Table primary key';


--
-- TOC entry 4679 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN validproceduretime.procedureid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.procedureid IS 'Foreign Key (FK) to the related procedure. Contains "procedure".procedureid';


--
-- TOC entry 4680 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN validproceduretime.proceduredescriptionformatid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.proceduredescriptionformatid IS 'Foreign Key (FK) to the related procedureDescriptionFormat. Contains "procedureDescriptionFormat".procedureDescriptionFormatid';


--
-- TOC entry 4681 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN validproceduretime.starttime; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.starttime IS 'Timestamp since this procedure description is valid';


--
-- TOC entry 4682 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN validproceduretime.endtime; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.endtime IS 'Timestamp until this procedure description is invalid';


--
-- TOC entry 4683 (class 0 OID 0)
-- Dependencies: 308
-- Name: COLUMN validproceduretime.descriptionxml; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN validproceduretime.descriptionxml IS 'Procedure description as XML string';


--
-- TOC entry 328 (class 1259 OID 21398)
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
-- TOC entry 309 (class 1259 OID 20856)
-- Name: xmlfeatparamvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE xmlfeatparamvalue (
    parameterid bigint NOT NULL,
    value text
);


ALTER TABLE xmlfeatparamvalue OWNER TO postgres;

--
-- TOC entry 4684 (class 0 OID 0)
-- Dependencies: 309
-- Name: TABLE xmlfeatparamvalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE xmlfeatparamvalue IS 'Value table for XML parameter';


--
-- TOC entry 4685 (class 0 OID 0)
-- Dependencies: 309
-- Name: COLUMN xmlfeatparamvalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN xmlfeatparamvalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "featureParameter".parameterid';


--
-- TOC entry 4686 (class 0 OID 0)
-- Dependencies: 309
-- Name: COLUMN xmlfeatparamvalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN xmlfeatparamvalue.value IS 'XML parameter value';


--
-- TOC entry 310 (class 1259 OID 20864)
-- Name: xmlparametervalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE xmlparametervalue (
    parameterid bigint NOT NULL,
    value text
);


ALTER TABLE xmlparametervalue OWNER TO postgres;

--
-- TOC entry 4687 (class 0 OID 0)
-- Dependencies: 310
-- Name: TABLE xmlparametervalue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE xmlparametervalue IS 'Value table for XML parameter';


--
-- TOC entry 4688 (class 0 OID 0)
-- Dependencies: 310
-- Name: COLUMN xmlparametervalue.parameterid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN xmlparametervalue.parameterid IS 'Foreign Key (FK) to the related parameter from the parameter table. Contains "parameter".parameterid';


--
-- TOC entry 4689 (class 0 OID 0)
-- Dependencies: 310
-- Name: COLUMN xmlparametervalue.value; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN xmlparametervalue.value IS 'XML parameter value';


--
-- TOC entry 4363 (class 0 OID 20544)
-- Dependencies: 260
-- Data for Name: blobvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4364 (class 0 OID 20549)
-- Dependencies: 261
-- Data for Name: booleanfeatparamvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4365 (class 0 OID 20555)
-- Dependencies: 262
-- Data for Name: booleanparametervalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4366 (class 0 OID 20561)
-- Dependencies: 263
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
-- TOC entry 4367 (class 0 OID 20568)
-- Dependencies: 264
-- Data for Name: categoryfeatparamvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4368 (class 0 OID 20573)
-- Dependencies: 265
-- Data for Name: categoryparametervalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4369 (class 0 OID 20578)
-- Dependencies: 266
-- Data for Name: categoryvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (31, 'test_category_0', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (32, 'test_category_1', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (33, 'test_category_2', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (34, 'test_category_3', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (35, 'test_category_4', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (36, 'test_category_5', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (37, 'test_category_6', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (38, 'test_category_7', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (39, 'test_category_8', NULL, NULL, NULL);
INSERT INTO categoryvalue (observationid, value, identifier, name, description) VALUES (40, 'test_category_9', NULL, NULL, NULL);


--
-- TOC entry 4370 (class 0 OID 20586)
-- Dependencies: 267
-- Data for Name: codespace; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO codespace (codespaceid, codespace) VALUES (1, 'http://www.opengis.net/def/nil/OGC/0/unknown');


--
-- TOC entry 4690 (class 0 OID 0)
-- Dependencies: 311
-- Name: codespaceid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('codespaceid_seq', 1, true);


--
-- TOC entry 4371 (class 0 OID 20591)
-- Dependencies: 268
-- Data for Name: complexvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4372 (class 0 OID 20596)
-- Dependencies: 269
-- Data for Name: compositeobservation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4373 (class 0 OID 20601)
-- Dependencies: 270
-- Data for Name: compositephenomenon; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4374 (class 0 OID 20606)
-- Dependencies: 271
-- Data for Name: countfeatparamvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4375 (class 0 OID 20611)
-- Dependencies: 272
-- Data for Name: countparametervalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4376 (class 0 OID 20616)
-- Dependencies: 273
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
-- TOC entry 4377 (class 0 OID 20621)
-- Dependencies: 274
-- Data for Name: featureofinterest; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (1, NULL, 2, 'http://www.52north.org/test/featureOfInterest/world', 1, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (2, NULL, 2, 'http://www.52north.org/test/featureOfInterest/1', 1, 'con terra', 1, NULL, '0101000020E61000003F726BD26DE91E407D5EF1D423F14940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (3, NULL, 2, 'http://www.52north.org/test/featureOfInterest/2', 1, 'ESRI', 1, NULL, '0101000020E6100000EB1D6E87864C5DC08255F5F23B074140', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (4, NULL, 2, 'http://www.52north.org/test/featureOfInterest/3', 1, 'Kisters', 1, NULL, '0101000020E610000014AAB2C82E8718400576C70892644940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (5, NULL, 2, 'http://www.52north.org/test/featureOfInterest/4', 1, 'con terra', 1, NULL, '0101000020E61000003F726BD26DE91E407D5EF1D423F14940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (6, NULL, 2, 'http://www.52north.org/test/featureOfInterest/5', 1, 'TU-Dresden', 1, NULL, '0101000020E6100000404EB4AB90722B401DE6CB0BB0834940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (7, NULL, 2, 'http://www.52north.org/test/featureOfInterest/6', 1, 'Hochschule Bochum', 1, NULL, '0101000020E6100000083E062B4E151D4090D959F44EB94940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (8, NULL, 2, 'http://www.52north.org/test/featureOfInterest/7', 1, 'ITC', 1, NULL, '0101000020E610000000958FEE31221140E45F15B9F1054A40', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (9, NULL, 2, 'http://www.52north.org/test/featureOfInterest/8', 1, 'DLZ-IT', 1, NULL, '0101000020E61000000055A4C2D8E22540008C67D0D0574940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (10, NULL, 2, 'http://www.52north.org/test/featureOfInterest/Heiden', 1, 'Heiden', 1, NULL, '0101000020E61000008C118942CBBA1B404D874ECFBBE94940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (11, NULL, 2, 'http://www.52north.org/test/featureOfInterest/Münster/FE101', 1, 'Münster/FE101', 1, NULL, '0101000020E610000099B9C0E5B1861E405473B9C150F94940', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (12, NULL, 2, 'http://www.52north.org/test/featureOfInterest/Portland', 1, 'Portland', 1, NULL, '0101000020E61000001DC9E53FA4AB5EC0C3F5285C8FC24640', NULL, NULL);
INSERT INTO featureofinterest (featureofinterestid, hibernatediscriminator, featureofinteresttypeid, identifier, codespace, name, codespacename, description, geom, descriptionxml, url) VALUES (13, NULL, 2, 'http://www.52north.org/test/featureOfInterest/TODO', 1, 'TODO', 1, NULL, '0101000020E610000000000000000000000000000000000000', NULL, NULL);


--
-- TOC entry 4691 (class 0 OID 0)
-- Dependencies: 312
-- Name: featureofinterestid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('featureofinterestid_seq', 13, true);


--
-- TOC entry 4378 (class 0 OID 20629)
-- Dependencies: 275
-- Data for Name: featureofinteresttype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO featureofinteresttype (featureofinteresttypeid, featureofinteresttype) VALUES (1, 'http://www.opengis.net/def/samplingFeatureType/OGC-OM/2.0/SF_SamplingPoint');
INSERT INTO featureofinteresttype (featureofinteresttypeid, featureofinteresttype) VALUES (2, 'http://www.opengis.net/def/nil/OGC/0/unknown');


--
-- TOC entry 4692 (class 0 OID 0)
-- Dependencies: 313
-- Name: featureofinteresttypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('featureofinteresttypeid_seq', 2, true);


--
-- TOC entry 4379 (class 0 OID 20634)
-- Dependencies: 276
-- Data for Name: featureparameter; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4380 (class 0 OID 20639)
-- Dependencies: 277
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
-- TOC entry 4381 (class 0 OID 20644)
-- Dependencies: 278
-- Data for Name: geometryvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4382 (class 0 OID 20652)
-- Dependencies: 279
-- Data for Name: numericfeatparamvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4383 (class 0 OID 20657)
-- Dependencies: 280
-- Data for Name: numericparametervalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4384 (class 0 OID 20662)
-- Dependencies: 281
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
-- TOC entry 4385 (class 0 OID 20667)
-- Dependencies: 282
-- Data for Name: observableproperty; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (1, 'http://www.52north.org/test/observableProperty/1', 1, 'test_observable_property_1', 1, NULL, 'F', 'F');
INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (2, 'http://www.52north.org/test/observableProperty/2', 1, 'test_observable_property_2', 1, NULL, 'F', 'F');
INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (3, 'http://www.52north.org/test/observableProperty/3', 1, 'test_observable_property_3', 1, NULL, 'F', 'F');
INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (4, 'http://www.52north.org/test/observableProperty/4', 1, 'test_observable_property_4', 1, NULL, 'F', 'F');
INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (5, 'http://www.52north.org/test/observableProperty/5', 1, 'test_observable_property_5', 1, NULL, 'F', 'F');
INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (6, 'http://www.52north.org/test/observableProperty/6', 1, 'test_observable_property_6', 1, NULL, 'F', 'F');
INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (7, 'http://www.52north.org/test/observableProperty/7', 1, 'test_observable_property_7', 1, NULL, 'F', 'F');
INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (8, 'http://www.52north.org/test/observableProperty/8', 1, 'test_observable_property_8', 1, NULL, 'F', 'F');
INSERT INTO observableproperty (observablepropertyid, identifier, codespace, name, codespacename, description, disabled, hiddenchild) VALUES (9, 'http://www.52north.org/test/observableProperty/developer', 1, 'developer', 1, NULL, 'F', 'F');


--
-- TOC entry 4693 (class 0 OID 0)
-- Dependencies: 314
-- Name: observablepropertyid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('observablepropertyid_seq', 9, true);


--
-- TOC entry 4386 (class 0 OID 20679)
-- Dependencies: 283
-- Data for Name: observation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (1, 1, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', 'F', 'F', NULL, NULL, NULL, 'http://www.52north.org/test/observation/1', 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (2, 1, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', 'F', 'F', NULL, NULL, NULL, 'http://www.52north.org/test/observation/2', 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (3, 1, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (4, 1, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (5, 1, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (6, 1, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (7, 1, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (8, 1, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (9, 1, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (10, 1, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (11, 2, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (12, 2, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (13, 2, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (14, 2, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (15, 2, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (16, 2, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (17, 2, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (18, 2, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (19, 2, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (20, 2, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (21, 3, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (22, 3, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (23, 3, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (24, 3, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (25, 3, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (26, 3, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (27, 3, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (28, 3, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (29, 3, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (30, 3, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (31, 4, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (32, 4, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (33, 4, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (34, 4, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (35, 4, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (36, 4, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (37, 4, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (38, 4, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (39, 4, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (40, 4, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 2);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (41, 5, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (42, 5, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (43, 5, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (44, 5, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (45, 5, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (46, 5, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (47, 5, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (48, 5, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (49, 5, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (50, 5, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (51, 6, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (52, 6, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (53, 6, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (54, 6, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (55, 6, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (56, 6, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (57, 6, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (58, 6, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (59, 6, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (60, 6, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 3);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (61, 7, '2012-11-19 13:00:00', '2012-11-19 13:00:00', '2012-11-19 13:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (62, 7, '2012-11-19 13:01:00', '2012-11-19 13:01:00', '2012-11-19 13:01:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (63, 7, '2012-11-19 13:02:00', '2012-11-19 13:02:00', '2012-11-19 13:02:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (64, 7, '2012-11-19 13:03:00', '2012-11-19 13:03:00', '2012-11-19 13:03:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (65, 7, '2012-11-19 13:04:00', '2012-11-19 13:04:00', '2012-11-19 13:04:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (66, 7, '2012-11-19 13:05:00', '2012-11-19 13:05:00', '2012-11-19 13:05:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (67, 7, '2012-11-19 13:06:00', '2012-11-19 13:06:00', '2012-11-19 13:06:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (68, 7, '2012-11-19 13:07:00', '2012-11-19 13:07:00', '2012-11-19 13:07:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (69, 7, '2012-11-19 13:08:00', '2012-11-19 13:08:00', '2012-11-19 13:08:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (70, 7, '2012-11-19 13:09:00', '2012-11-19 13:09:00', '2012-11-19 13:09:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 4);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (71, 8, '2012-11-19 13:00:00', '2012-11-19 13:04:59', '2012-11-19 13:05:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (72, 8, '2012-11-19 13:05:00', '2012-11-19 13:09:59', '2012-11-19 13:10:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (73, 8, '2012-11-19 13:10:00', '2012-11-19 13:14:59', '2012-11-19 13:15:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (74, 8, '2012-11-19 13:15:00', '2012-11-19 13:19:59', '2012-11-19 13:20:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (75, 8, '2012-11-19 13:20:00', '2012-11-19 13:24:59', '2012-11-19 13:25:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (76, 8, '2012-11-19 13:25:00', '2012-11-19 13:29:59', '2012-11-19 13:30:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (77, 8, '2012-11-19 13:30:00', '2012-11-19 13:34:59', '2012-11-19 13:35:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (78, 8, '2012-11-19 13:35:00', '2012-11-19 13:39:59', '2012-11-19 13:40:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (79, 8, '2012-11-19 13:40:00', '2012-11-19 13:44:59', '2012-11-19 13:45:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (80, 8, '2012-11-19 13:45:00', '2012-11-19 13:49:59', '2012-11-19 13:50:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 5);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (81, 9, '2008-10-29 00:00:00', '2008-10-29 00:00:00', '2008-10-29 00:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (82, 10, '2008-10-29 00:00:00', '2008-10-29 00:00:00', '2008-10-29 00:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (83, 11, '2008-10-29 00:00:00', '2008-10-29 00:00:00', '2008-10-29 00:00:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO observation (observationid, seriesid, phenomenontimestart, phenomenontimeend, resulttime, deleted, child, parent, validtimestart, validtimeend, samplinggeometry, identifier, codespace, name, codespacename, description, unitid) VALUES (84, 12, '2012-12-31 23:00:00', '2012-12-31 23:00:00', '2012-12-31 22:01:00', 'F', 'F', 'F', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL);


--
-- TOC entry 4387 (class 0 OID 20693)
-- Dependencies: 284
-- Data for Name: observationconstellation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (1, 1, 1, 1, 1, 'F', 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (2, 2, 2, 2, 2, 'F', 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (3, 3, 3, 3, 3, 'F', 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (4, 4, 4, 4, 4, 'F', 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (5, 5, 5, 5, 5, 'F', 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (6, 6, 6, 1, 6, 'F', 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (7, 7, 7, 1, 7, 'F', 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (8, 8, 8, 1, 8, 'F', 'F', 'F');
INSERT INTO observationconstellation (observationconstellationid, observablepropertyid, procedureid, observationtypeid, offeringid, deleted, hiddenchild, disabled) VALUES (9, 9, 9, 5, 9, 'F', 'F', 'F');


--
-- TOC entry 4694 (class 0 OID 0)
-- Dependencies: 315
-- Name: observationconstellationid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('observationconstellationid_seq', 9, true);


--
-- TOC entry 4388 (class 0 OID 20704)
-- Dependencies: 285
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
-- TOC entry 4695 (class 0 OID 0)
-- Dependencies: 316
-- Name: observationid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('observationid_seq', 84, true);


--
-- TOC entry 4389 (class 0 OID 20709)
-- Dependencies: 286
-- Data for Name: observationtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO observationtype (observationtypeid, observationtype) VALUES (1, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement');
INSERT INTO observationtype (observationtypeid, observationtype) VALUES (2, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_CountObservation');
INSERT INTO observationtype (observationtypeid, observationtype) VALUES (3, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TruthObservation');
INSERT INTO observationtype (observationtypeid, observationtype) VALUES (4, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_CategoryObservation');
INSERT INTO observationtype (observationtypeid, observationtype) VALUES (5, 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_TextObservation');


--
-- TOC entry 4696 (class 0 OID 0)
-- Dependencies: 317
-- Name: observationtypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('observationtypeid_seq', 5, true);


--
-- TOC entry 4390 (class 0 OID 20714)
-- Dependencies: 287
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
-- TOC entry 4391 (class 0 OID 20724)
-- Dependencies: 288
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
-- TOC entry 4392 (class 0 OID 20729)
-- Dependencies: 289
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
-- TOC entry 4393 (class 0 OID 20734)
-- Dependencies: 290
-- Data for Name: offeringhasrelatedfeature; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4697 (class 0 OID 0)
-- Dependencies: 318
-- Name: offeringid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('offeringid_seq', 9, true);


--
-- TOC entry 4394 (class 0 OID 20739)
-- Dependencies: 291
-- Data for Name: offeringrelation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4395 (class 0 OID 20744)
-- Dependencies: 292
-- Data for Name: parameter; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4698 (class 0 OID 0)
-- Dependencies: 319
-- Name: parameterid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parameterid_seq', 1, false);


--
-- TOC entry 4699 (class 0 OID 0)
-- Dependencies: 320
-- Name: procdescformatid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('procdescformatid_seq', 1, true);


--
-- TOC entry 4362 (class 0 OID 20522)
-- Dependencies: 259
-- Data for Name: procedure; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (1, 'T', 1, 'http://www.52north.org/test/procedure/1', NULL, 'con terra', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (2, 'T', 1, 'http://www.52north.org/test/procedure/2', NULL, 'ESRI', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (3, 'T', 1, 'http://www.52north.org/test/procedure/3', NULL, 'Kisters', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (4, 'T', 1, 'http://www.52north.org/test/procedure/4', NULL, 'IfGI', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (5, 'T', 1, 'http://www.52north.org/test/procedure/5', NULL, 'TU-Dresden', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (6, 'T', 1, 'http://www.52north.org/test/procedure/6', NULL, 'Hochschule Bochum', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (7, 'T', 1, 'http://www.52north.org/test/procedure/7', NULL, 'ITC', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (8, 'T', 1, 'http://www.52north.org/test/procedure/8', NULL, 'DLZ-IT', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');
INSERT INTO procedure (procedureid, hibernatediscriminator, proceduredescriptionformatid, identifier, codespace, name, codespacename, description, deleted, disabled, descriptionfile, referenceflag, typeof, istype, isaggregation, mobile, insitu) VALUES (9, 'T', 1, 'http://www.52north.org/test/procedure/developer', NULL, 'http://www.52north.org/test/procedure/developer', NULL, NULL, 'F', 'F', NULL, 'F', NULL, 'F', 'F', 'F', 'T');


--
-- TOC entry 4396 (class 0 OID 20749)
-- Dependencies: 293
-- Data for Name: proceduredescriptionformat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO proceduredescriptionformat (proceduredescriptionformatid, proceduredescriptionformat) VALUES (1, 'http://www.opengis.net/sensorML/1.0.1');


--
-- TOC entry 4700 (class 0 OID 0)
-- Dependencies: 321
-- Name: procedureid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('procedureid_seq', 9, true);


--
-- TOC entry 4397 (class 0 OID 20754)
-- Dependencies: 294
-- Data for Name: profileobservation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4398 (class 0 OID 20759)
-- Dependencies: 295
-- Data for Name: profilevalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4399 (class 0 OID 20764)
-- Dependencies: 296
-- Data for Name: relatedfeature; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4400 (class 0 OID 20769)
-- Dependencies: 297
-- Data for Name: relatedfeaturehasrole; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4701 (class 0 OID 0)
-- Dependencies: 322
-- Name: relatedfeatureid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('relatedfeatureid_seq', 1, false);


--
-- TOC entry 4401 (class 0 OID 20774)
-- Dependencies: 298
-- Data for Name: relatedfeaturerole; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4702 (class 0 OID 0)
-- Dependencies: 323
-- Name: relatedfeatureroleid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('relatedfeatureroleid_seq', 1, false);


--
-- TOC entry 4402 (class 0 OID 20779)
-- Dependencies: 299
-- Data for Name: relatedobservation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4703 (class 0 OID 0)
-- Dependencies: 324
-- Name: relatedobservationid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('relatedobservationid_seq', 1, false);


--
-- TOC entry 4403 (class 0 OID 20787)
-- Dependencies: 300
-- Data for Name: resulttemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO resulttemplate (resulttemplateid, offeringid, observablepropertyid, procedureid, featureofinterestid, identifier, resultstructure, resultencoding) VALUES (1, 6, 6, 6, 7, 'http://www.52north.org/test/procedure/6/template/1', '<swe:DataRecord xmlns:swe="http://www.opengis.net/swe/2.0" xmlns:xlink="http://www.w3.org/1999/xlink">
  <swe:field name="phenomenonTime">
    <swe:TimeRange definition="http://www.opengis.net/def/property/OGC/0/PhenomenonTime">
      <swe:uom xlink:href="http://www.opengis.net/def/uom/ISO-8601/0/Gregorian"/>
    </swe:TimeRange>
  </swe:field>
  <swe:field name="resultTime">
    <swe:Time definition="http://www.opengis.net/def/property/OGC/0/ResultTime">
      <swe:uom code="testunit1"/>
    </swe:Time>
  </swe:field>
  <swe:field name="observable_property_6">
    <swe:Quantity definition="http://www.52north.org/test/observableProperty/6">
      <swe:uom code="test_unit_6"/>
    </swe:Quantity>
  </swe:field>
</swe:DataRecord>', '<swe:TextEncoding xmlns:swe="http://www.opengis.net/swe/2.0" blockSeparator="#" tokenSeparator=","/>');


--
-- TOC entry 4704 (class 0 OID 0)
-- Dependencies: 325
-- Name: resulttemplateid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('resulttemplateid_seq', 1, true);


--
-- TOC entry 4404 (class 0 OID 20795)
-- Dependencies: 301
-- Data for Name: sensorsystem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4405 (class 0 OID 20800)
-- Dependencies: 302
-- Data for Name: series; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (6, 7, 6, 6, 6, 'F', 'T', 'F', '2012-11-19 13:00:00', '2012-11-19 13:09:00', 2, 2.89999999999999991, 3, NULL, NULL, NULL, NULL, NULL, 'quantity');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (1, 2, 1, 1, 1, 'F', 'T', 'F', '2012-11-19 13:00:00', '2012-11-19 13:09:00', 1, 1.89999999999999991, 1, NULL, NULL, NULL, NULL, NULL, 'quantity');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (7, 8, 7, 7, 7, 'F', 'T', 'F', '2012-11-19 13:00:00', '2012-11-19 13:09:00', 3, 3.89999999999999991, 4, NULL, NULL, NULL, NULL, NULL, 'quantity');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (2, 3, 2, 2, 2, 'F', 'T', 'F', '2012-11-19 13:00:00', '2012-11-19 13:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'count');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (8, 9, 8, 8, 8, 'F', 'T', 'F', '2012-11-19 13:00:00', '2012-11-19 13:49:59', 4, 4.90000000000000036, 5, NULL, NULL, NULL, NULL, NULL, 'quantity');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (9, 10, 9, 9, 9, 'F', 'T', 'F', '2008-10-29 00:00:00', '2008-10-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (3, 4, 3, 3, 3, 'F', 'T', 'F', '2012-11-19 13:00:00', '2012-11-19 13:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'boolean');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (10, 11, 9, 9, 9, 'F', 'T', 'F', '2008-10-29 00:00:00', '2008-10-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (11, 12, 9, 9, 9, 'F', 'T', 'F', '2008-10-29 00:00:00', '2008-10-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (12, 13, 9, 9, 9, 'F', 'T', 'F', '2012-12-31 23:00:00', '2012-12-31 23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (4, 5, 4, 4, 4, 'F', 'T', 'F', '2012-11-19 13:00:00', '2012-11-19 13:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'category');
INSERT INTO series (seriesid, featureofinterestid, observablepropertyid, procedureid, offeringid, deleted, published, hiddenchild, firsttimestamp, lasttimestamp, firstnumericvalue, lastnumericvalue, unitid, identifier, codespace, name, codespacename, description, seriestype) VALUES (5, 6, 5, 5, 5, 'F', 'T', 'F', '2012-11-19 13:00:00', '2012-11-19 13:09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text');


--
-- TOC entry 4705 (class 0 OID 0)
-- Dependencies: 326
-- Name: seriesid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seriesid_seq', 12, true);


--
-- TOC entry 3946 (class 0 OID 18737)
-- Dependencies: 189
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4406 (class 0 OID 20814)
-- Dependencies: 303
-- Data for Name: swedataarrayvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4407 (class 0 OID 20822)
-- Dependencies: 304
-- Data for Name: textfeatparamvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4408 (class 0 OID 20827)
-- Dependencies: 305
-- Data for Name: textparametervalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4409 (class 0 OID 20832)
-- Dependencies: 306
-- Data for Name: textvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (41, 'test_text_0', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (42, 'test_text_1', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (43, 'test_text_2', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (44, 'test_text_3', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (45, 'test_text_4', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (46, 'test_text_5', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (47, 'test_text_6', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (48, 'test_text_7', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (49, 'test_text_8', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (50, 'test_text_9', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (81, 'Carsten Hollmann', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (82, 'Christian Autermann', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (83, 'Shane StClair', NULL, NULL, NULL);
INSERT INTO textvalue (observationid, value, identifier, name, description) VALUES (84, 'John/Jane Doe', NULL, NULL, NULL);


--
-- TOC entry 4410 (class 0 OID 20840)
-- Dependencies: 307
-- Data for Name: unit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO unit (unitid, unit, name, link) VALUES (1, 'test_unit_1', NULL, NULL);
INSERT INTO unit (unitid, unit, name, link) VALUES (2, 'test_unit_4', NULL, NULL);
INSERT INTO unit (unitid, unit, name, link) VALUES (3, 'test_unit_6', NULL, NULL);
INSERT INTO unit (unitid, unit, name, link) VALUES (4, 'test_unit_7', NULL, NULL);
INSERT INTO unit (unitid, unit, name, link) VALUES (5, 'test_unit_8', NULL, NULL);


--
-- TOC entry 4706 (class 0 OID 0)
-- Dependencies: 327
-- Name: unitid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('unitid_seq', 5, true);


--
-- TOC entry 4411 (class 0 OID 20848)
-- Dependencies: 308
-- Data for Name: validproceduretime; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (1, 1, 1, '2017-07-28 13:27:48.62', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (2, 2, 1, '2017-07-28 13:27:49.222', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (3, 3, 1, '2017-07-28 13:27:49.376', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (4, 4, 1, '2017-07-28 13:27:49.524', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (5, 5, 1, '2017-07-28 13:27:49.689', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (6, 6, 1, '2017-07-28 13:27:49.839', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (7, 7, 1, '2017-07-28 13:27:50.069', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (8, 8, 1, '2017-07-28 13:27:50.213', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
INSERT INTO validproceduretime (validproceduretimeid, procedureid, proceduredescriptionformatid, starttime, endtime, descriptionxml) VALUES (9, 9, 1, '2017-07-28 13:27:50.5', NULL, '<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" version="1.0.1">
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
-- TOC entry 4707 (class 0 OID 0)
-- Dependencies: 328
-- Name: validproceduretimeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('validproceduretimeid_seq', 9, true);


--
-- TOC entry 4412 (class 0 OID 20856)
-- Dependencies: 309
-- Data for Name: xmlfeatparamvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4413 (class 0 OID 20864)
-- Dependencies: 310
-- Data for Name: xmlparametervalue; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3994 (class 2606 OID 20548)
-- Name: blobvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blobvalue
    ADD CONSTRAINT blobvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 3997 (class 2606 OID 20554)
-- Name: booleanfeatparamvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booleanfeatparamvalue
    ADD CONSTRAINT booleanfeatparamvalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 3999 (class 2606 OID 20560)
-- Name: booleanparametervalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booleanparametervalue
    ADD CONSTRAINT booleanparametervalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4002 (class 2606 OID 20567)
-- Name: booleanvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booleanvalue
    ADD CONSTRAINT booleanvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4005 (class 2606 OID 20572)
-- Name: categoryfeatparamvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryfeatparamvalue
    ADD CONSTRAINT categoryfeatparamvalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4007 (class 2606 OID 20577)
-- Name: categoryparametervalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryparametervalue
    ADD CONSTRAINT categoryparametervalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4010 (class 2606 OID 20585)
-- Name: categoryvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryvalue
    ADD CONSTRAINT categoryvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4012 (class 2606 OID 20590)
-- Name: codespace_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY codespace
    ADD CONSTRAINT codespace_pkey PRIMARY KEY (codespaceid);


--
-- TOC entry 4014 (class 2606 OID 20879)
-- Name: codespaceuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY codespace
    ADD CONSTRAINT codespaceuk UNIQUE (codespace);


--
-- TOC entry 4016 (class 2606 OID 20595)
-- Name: complexvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY complexvalue
    ADD CONSTRAINT complexvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4018 (class 2606 OID 20600)
-- Name: compositeobservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositeobservation
    ADD CONSTRAINT compositeobservation_pkey PRIMARY KEY (observationid, childobservationid);


--
-- TOC entry 4020 (class 2606 OID 20605)
-- Name: compositephenomenon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositephenomenon
    ADD CONSTRAINT compositephenomenon_pkey PRIMARY KEY (childobservablepropertyid, parentobservablepropertyid);


--
-- TOC entry 4023 (class 2606 OID 20610)
-- Name: countfeatparamvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countfeatparamvalue
    ADD CONSTRAINT countfeatparamvalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4025 (class 2606 OID 20615)
-- Name: countparametervalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countparametervalue
    ADD CONSTRAINT countparametervalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4028 (class 2606 OID 20620)
-- Name: countvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countvalue
    ADD CONSTRAINT countvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4031 (class 2606 OID 20628)
-- Name: featureofinterest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featureofinterest_pkey PRIMARY KEY (featureofinterestid);


--
-- TOC entry 4037 (class 2606 OID 20633)
-- Name: featureofinteresttype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinteresttype
    ADD CONSTRAINT featureofinteresttype_pkey PRIMARY KEY (featureofinteresttypeid);


--
-- TOC entry 4042 (class 2606 OID 20638)
-- Name: featureparameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureparameter
    ADD CONSTRAINT featureparameter_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4044 (class 2606 OID 20643)
-- Name: featurerelation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featurerelation
    ADD CONSTRAINT featurerelation_pkey PRIMARY KEY (childfeatureid, parentfeatureid);


--
-- TOC entry 4039 (class 2606 OID 20888)
-- Name: featuretypeuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinteresttype
    ADD CONSTRAINT featuretypeuk UNIQUE (featureofinteresttype);


--
-- TOC entry 4033 (class 2606 OID 20885)
-- Name: featureurl; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featureurl UNIQUE (url);


--
-- TOC entry 4035 (class 2606 OID 20883)
-- Name: foiidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT foiidentifieruk UNIQUE (identifier);


--
-- TOC entry 4046 (class 2606 OID 20651)
-- Name: geometryvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geometryvalue
    ADD CONSTRAINT geometryvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4048 (class 2606 OID 20656)
-- Name: numericfeatparamvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericfeatparamvalue
    ADD CONSTRAINT numericfeatparamvalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4051 (class 2606 OID 20661)
-- Name: numericparametervalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericparametervalue
    ADD CONSTRAINT numericparametervalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4054 (class 2606 OID 20666)
-- Name: numericvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericvalue
    ADD CONSTRAINT numericvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4056 (class 2606 OID 20678)
-- Name: observableproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observableproperty
    ADD CONSTRAINT observableproperty_pkey PRIMARY KEY (observablepropertyid);


--
-- TOC entry 4060 (class 2606 OID 20692)
-- Name: observation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT observation_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4070 (class 2606 OID 20703)
-- Name: observationconstellation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT observationconstellation_pkey PRIMARY KEY (observationconstellationid);


--
-- TOC entry 4074 (class 2606 OID 20708)
-- Name: observationhasoffering_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationhasoffering
    ADD CONSTRAINT observationhasoffering_pkey PRIMARY KEY (observationid, offeringid);


--
-- TOC entry 4078 (class 2606 OID 20713)
-- Name: observationtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationtype
    ADD CONSTRAINT observationtype_pkey PRIMARY KEY (observationtypeid);


--
-- TOC entry 4080 (class 2606 OID 20907)
-- Name: observationtypeuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationtype
    ADD CONSTRAINT observationtypeuk UNIQUE (observationtype);


--
-- TOC entry 4072 (class 2606 OID 20900)
-- Name: obsnconstellationidentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsnconstellationidentity UNIQUE (observablepropertyid, procedureid, offeringid);


--
-- TOC entry 4058 (class 2606 OID 20893)
-- Name: obspropidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observableproperty
    ADD CONSTRAINT obspropidentifieruk UNIQUE (identifier);


--
-- TOC entry 4082 (class 2606 OID 20723)
-- Name: offering_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offering
    ADD CONSTRAINT offering_pkey PRIMARY KEY (offeringid);


--
-- TOC entry 4086 (class 2606 OID 20728)
-- Name: offeringallowedfeaturetype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedfeaturetype
    ADD CONSTRAINT offeringallowedfeaturetype_pkey PRIMARY KEY (offeringid, featureofinteresttypeid);


--
-- TOC entry 4088 (class 2606 OID 20733)
-- Name: offeringallowedobservationtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedobservationtype
    ADD CONSTRAINT offeringallowedobservationtype_pkey PRIMARY KEY (offeringid, observationtypeid);


--
-- TOC entry 4090 (class 2606 OID 20738)
-- Name: offeringhasrelatedfeature_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringhasrelatedfeature
    ADD CONSTRAINT offeringhasrelatedfeature_pkey PRIMARY KEY (offeringid, relatedfeatureid);


--
-- TOC entry 4092 (class 2606 OID 20743)
-- Name: offeringrelation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringrelation
    ADD CONSTRAINT offeringrelation_pkey PRIMARY KEY (childofferingid, parentofferingid);


--
-- TOC entry 4084 (class 2606 OID 20909)
-- Name: offidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offering
    ADD CONSTRAINT offidentifieruk UNIQUE (identifier);


--
-- TOC entry 4094 (class 2606 OID 20748)
-- Name: parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4097 (class 2606 OID 20912)
-- Name: procdescformatuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proceduredescriptionformat
    ADD CONSTRAINT procdescformatuk UNIQUE (proceduredescriptionformat);


--
-- TOC entry 3990 (class 2606 OID 20543)
-- Name: procedure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT procedure_pkey PRIMARY KEY (procedureid);


--
-- TOC entry 4099 (class 2606 OID 20753)
-- Name: proceduredescriptionformat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proceduredescriptionformat
    ADD CONSTRAINT proceduredescriptionformat_pkey PRIMARY KEY (proceduredescriptionformatid);


--
-- TOC entry 3992 (class 2606 OID 20873)
-- Name: procidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT procidentifieruk UNIQUE (identifier);


--
-- TOC entry 4101 (class 2606 OID 20758)
-- Name: profileobservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profileobservation
    ADD CONSTRAINT profileobservation_pkey PRIMARY KEY (observationid, childobservationid);


--
-- TOC entry 4103 (class 2606 OID 20763)
-- Name: profilevalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profilevalue
    ADD CONSTRAINT profilevalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4105 (class 2606 OID 20768)
-- Name: relatedfeature_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeature
    ADD CONSTRAINT relatedfeature_pkey PRIMARY KEY (relatedfeatureid);


--
-- TOC entry 4107 (class 2606 OID 20773)
-- Name: relatedfeaturehasrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturehasrole
    ADD CONSTRAINT relatedfeaturehasrole_pkey PRIMARY KEY (relatedfeatureid, relatedfeatureroleid);


--
-- TOC entry 4109 (class 2606 OID 20778)
-- Name: relatedfeaturerole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturerole
    ADD CONSTRAINT relatedfeaturerole_pkey PRIMARY KEY (relatedfeatureroleid);


--
-- TOC entry 4113 (class 2606 OID 20786)
-- Name: relatedobservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedobservation
    ADD CONSTRAINT relatedobservation_pkey PRIMARY KEY (relatedobservationid);


--
-- TOC entry 4111 (class 2606 OID 20914)
-- Name: relfeatroleuk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturerole
    ADD CONSTRAINT relfeatroleuk UNIQUE (relatedfeaturerole);


--
-- TOC entry 4118 (class 2606 OID 20794)
-- Name: resulttemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplate_pkey PRIMARY KEY (resulttemplateid);


--
-- TOC entry 4122 (class 2606 OID 20799)
-- Name: sensorsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sensorsystem
    ADD CONSTRAINT sensorsystem_pkey PRIMARY KEY (childsensorid, parentsensorid);


--
-- TOC entry 4124 (class 2606 OID 20813)
-- Name: series_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT series_pkey PRIMARY KEY (seriesid);


--
-- TOC entry 4127 (class 2606 OID 20923)
-- Name: seriesidentifieruk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesidentifieruk UNIQUE (identifier);


--
-- TOC entry 4129 (class 2606 OID 20921)
-- Name: seriesidentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesidentity UNIQUE (featureofinterestid, observablepropertyid, procedureid, offeringid);


--
-- TOC entry 4134 (class 2606 OID 20821)
-- Name: swedataarrayvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY swedataarrayvalue
    ADD CONSTRAINT swedataarrayvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4137 (class 2606 OID 20826)
-- Name: textfeatparamvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY textfeatparamvalue
    ADD CONSTRAINT textfeatparamvalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4139 (class 2606 OID 20831)
-- Name: textparametervalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY textparametervalue
    ADD CONSTRAINT textparametervalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4142 (class 2606 OID 20839)
-- Name: textvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY textvalue
    ADD CONSTRAINT textvalue_pkey PRIMARY KEY (observationid);


--
-- TOC entry 4144 (class 2606 OID 20847)
-- Name: unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unit
    ADD CONSTRAINT unit_pkey PRIMARY KEY (unitid);


--
-- TOC entry 4146 (class 2606 OID 20931)
-- Name: unituk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY unit
    ADD CONSTRAINT unituk UNIQUE (unit);


--
-- TOC entry 4148 (class 2606 OID 20855)
-- Name: validproceduretime_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY validproceduretime
    ADD CONSTRAINT validproceduretime_pkey PRIMARY KEY (validproceduretimeid);


--
-- TOC entry 4152 (class 2606 OID 20863)
-- Name: xmlfeatparamvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY xmlfeatparamvalue
    ADD CONSTRAINT xmlfeatparamvalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 4154 (class 2606 OID 20871)
-- Name: xmlparametervalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY xmlparametervalue
    ADD CONSTRAINT xmlparametervalue_pkey PRIMARY KEY (parameterid);


--
-- TOC entry 3995 (class 1259 OID 20874)
-- Name: booleanfeatparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX booleanfeatparamidx ON booleanfeatparamvalue USING btree (value);


--
-- TOC entry 4000 (class 1259 OID 20875)
-- Name: booleanparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX booleanparamidx ON booleanparametervalue USING btree (value);


--
-- TOC entry 4003 (class 1259 OID 20876)
-- Name: categoryfeatparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categoryfeatparamidx ON categoryfeatparamvalue USING btree (value);


--
-- TOC entry 4008 (class 1259 OID 20877)
-- Name: categoryparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categoryparamidx ON categoryparametervalue USING btree (value);


--
-- TOC entry 4021 (class 1259 OID 20880)
-- Name: countfeatparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX countfeatparamidx ON countfeatparamvalue USING btree (value);


--
-- TOC entry 4026 (class 1259 OID 20881)
-- Name: countparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX countparamidx ON countparametervalue USING btree (value);


--
-- TOC entry 4040 (class 1259 OID 20889)
-- Name: featparamnameidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX featparamnameidx ON featureparameter USING btree (name);


--
-- TOC entry 4029 (class 1259 OID 20886)
-- Name: featuregeomidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX featuregeomidx ON featureofinterest USING gist (geom);


--
-- TOC entry 4066 (class 1259 OID 20901)
-- Name: obsconstobspropidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsconstobspropidx ON observationconstellation USING btree (observablepropertyid);


--
-- TOC entry 4067 (class 1259 OID 20903)
-- Name: obsconstofferingidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsconstofferingidx ON observationconstellation USING btree (offeringid);


--
-- TOC entry 4068 (class 1259 OID 20902)
-- Name: obsconstprocedureidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsconstprocedureidx ON observationconstellation USING btree (procedureid);


--
-- TOC entry 4075 (class 1259 OID 20904)
-- Name: obshasoffobservationidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obshasoffobservationidx ON observationhasoffering USING btree (observationid);


--
-- TOC entry 4076 (class 1259 OID 20905)
-- Name: obshasoffofferingidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obshasoffofferingidx ON observationhasoffering USING btree (offeringid);


--
-- TOC entry 4061 (class 1259 OID 20896)
-- Name: obsphentimeendidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsphentimeendidx ON observation USING btree (phenomenontimeend);


--
-- TOC entry 4062 (class 1259 OID 20895)
-- Name: obsphentimestartidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsphentimestartidx ON observation USING btree (phenomenontimestart);


--
-- TOC entry 4063 (class 1259 OID 20897)
-- Name: obsresulttimeidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsresulttimeidx ON observation USING btree (resulttime);


--
-- TOC entry 4064 (class 1259 OID 20894)
-- Name: obsseriesidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX obsseriesidx ON observation USING btree (seriesid);


--
-- TOC entry 4095 (class 1259 OID 20910)
-- Name: paramnameidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX paramnameidx ON parameter USING btree (name);


--
-- TOC entry 4049 (class 1259 OID 20890)
-- Name: quantityfeatparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quantityfeatparamidx ON numericfeatparamvalue USING btree (value);


--
-- TOC entry 4052 (class 1259 OID 20891)
-- Name: quantityparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX quantityparamidx ON numericparametervalue USING btree (value);


--
-- TOC entry 4114 (class 1259 OID 20915)
-- Name: relatedobsobsidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX relatedobsobsidx ON relatedobservation USING btree (observationid);


--
-- TOC entry 4115 (class 1259 OID 20917)
-- Name: resulttempeobspropidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX resulttempeobspropidx ON resulttemplate USING btree (observablepropertyid);


--
-- TOC entry 4116 (class 1259 OID 20919)
-- Name: resulttempidentifieridx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX resulttempidentifieridx ON resulttemplate USING btree (identifier);


--
-- TOC entry 4119 (class 1259 OID 20916)
-- Name: resulttempofferingidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX resulttempofferingidx ON resulttemplate USING btree (offeringid);


--
-- TOC entry 4120 (class 1259 OID 20918)
-- Name: resulttempprocedureidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX resulttempprocedureidx ON resulttemplate USING btree (procedureid);


--
-- TOC entry 4065 (class 1259 OID 20898)
-- Name: samplinggeomidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX samplinggeomidx ON observation USING gist (samplinggeometry);


--
-- TOC entry 4125 (class 1259 OID 20924)
-- Name: seriesfeatureidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seriesfeatureidx ON series USING btree (featureofinterestid);


--
-- TOC entry 4130 (class 1259 OID 20925)
-- Name: seriesobspropidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seriesobspropidx ON series USING btree (observablepropertyid);


--
-- TOC entry 4131 (class 1259 OID 20927)
-- Name: seriesofferingidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seriesofferingidx ON series USING btree (offeringid);


--
-- TOC entry 4132 (class 1259 OID 20926)
-- Name: seriesprocedureidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seriesprocedureidx ON series USING btree (procedureid);


--
-- TOC entry 4135 (class 1259 OID 20928)
-- Name: textfeatparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX textfeatparamidx ON textfeatparamvalue USING btree (value);


--
-- TOC entry 4140 (class 1259 OID 20929)
-- Name: textparamidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX textparamidx ON textparametervalue USING btree (value);


--
-- TOC entry 4149 (class 1259 OID 20933)
-- Name: validproceduretimeendtimeidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX validproceduretimeendtimeidx ON validproceduretime USING btree (endtime);


--
-- TOC entry 4150 (class 1259 OID 20932)
-- Name: validproceduretimestarttimeidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX validproceduretimestarttimeidx ON validproceduretime USING btree (starttime);


--
-- TOC entry 4163 (class 2606 OID 20979)
-- Name: catfeatparamvalueunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryfeatparamvalue
    ADD CONSTRAINT catfeatparamvalueunitfk FOREIGN KEY (unitid) REFERENCES unit(unitid);


--
-- TOC entry 4165 (class 2606 OID 20989)
-- Name: catparamvalueunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryparametervalue
    ADD CONSTRAINT catparamvalueunitfk FOREIGN KEY (unitid) REFERENCES unit(unitid);


--
-- TOC entry 4160 (class 2606 OID 20959)
-- Name: featparambooleanvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booleanfeatparamvalue
    ADD CONSTRAINT featparambooleanvaluefk FOREIGN KEY (parameterid) REFERENCES featureparameter(parameterid);


--
-- TOC entry 4164 (class 2606 OID 20974)
-- Name: featparamcategoryvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryfeatparamvalue
    ADD CONSTRAINT featparamcategoryvaluefk FOREIGN KEY (parameterid) REFERENCES featureparameter(parameterid);


--
-- TOC entry 4173 (class 2606 OID 21024)
-- Name: featparamcountvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countfeatparamvalue
    ADD CONSTRAINT featparamcountvaluefk FOREIGN KEY (parameterid) REFERENCES featureparameter(parameterid);


--
-- TOC entry 4184 (class 2606 OID 21074)
-- Name: featparamnumericvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericfeatparamvalue
    ADD CONSTRAINT featparamnumericvaluefk FOREIGN KEY (parameterid) REFERENCES featureparameter(parameterid);


--
-- TOC entry 4234 (class 2606 OID 21329)
-- Name: featparamtextvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY textfeatparamvalue
    ADD CONSTRAINT featparamtextvaluefk FOREIGN KEY (parameterid) REFERENCES featureparameter(parameterid);


--
-- TOC entry 4239 (class 2606 OID 21354)
-- Name: featparamxmlvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY xmlfeatparamvalue
    ADD CONSTRAINT featparamxmlvaluefk FOREIGN KEY (parameterid) REFERENCES featureparameter(parameterid);


--
-- TOC entry 4177 (class 2606 OID 21044)
-- Name: featurecodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featurecodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4176 (class 2606 OID 21049)
-- Name: featurecodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featurecodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4178 (class 2606 OID 21039)
-- Name: featurefeaturetypefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureofinterest
    ADD CONSTRAINT featurefeaturetypefk FOREIGN KEY (featureofinteresttypeid) REFERENCES featureofinteresttype(featureofinteresttypeid);


--
-- TOC entry 4181 (class 2606 OID 21059)
-- Name: featureofinterestchildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featurerelation
    ADD CONSTRAINT featureofinterestchildfk FOREIGN KEY (childfeatureid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4180 (class 2606 OID 21064)
-- Name: featureofinterestparentfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featurerelation
    ADD CONSTRAINT featureofinterestparentfk FOREIGN KEY (parentfeatureid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4210 (class 2606 OID 21209)
-- Name: fk_3v5iovcndi9w0hgh827hcvivw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parameter
    ADD CONSTRAINT fk_3v5iovcndi9w0hgh827hcvivw FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4179 (class 2606 OID 21054)
-- Name: fk_4ps6yv41rwnbu3q0let2v7772; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featureparameter
    ADD CONSTRAINT fk_4ps6yv41rwnbu3q0let2v7772 FOREIGN KEY (featureofinterestid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4216 (class 2606 OID 21244)
-- Name: fk_5fd921q6mnbkc57mgm5g4uyyn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturehasrole
    ADD CONSTRAINT fk_5fd921q6mnbkc57mgm5g4uyyn FOREIGN KEY (relatedfeatureid) REFERENCES relatedfeature(relatedfeatureid);


--
-- TOC entry 4202 (class 2606 OID 21174)
-- Name: fk_cu8nfsf9q5vsn070o2d3u6chg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedfeaturetype
    ADD CONSTRAINT fk_cu8nfsf9q5vsn070o2d3u6chg FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4219 (class 2606 OID 21249)
-- Name: fk_g0f0mpuxn3co65uwud4pwxh4q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedobservation
    ADD CONSTRAINT fk_g0f0mpuxn3co65uwud4pwxh4q FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4204 (class 2606 OID 21184)
-- Name: fk_jehw0637hllvta9ao1tqdhrtm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedobservationtype
    ADD CONSTRAINT fk_jehw0637hllvta9ao1tqdhrtm FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4218 (class 2606 OID 21254)
-- Name: fk_m4nuof4x6w253biuu1r6ttnqc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedobservation
    ADD CONSTRAINT fk_m4nuof4x6w253biuu1r6ttnqc FOREIGN KEY (relatedobservation) REFERENCES observation(observationid);


--
-- TOC entry 4198 (class 2606 OID 21154)
-- Name: fk_s19siow5aetbwb8ppww4kb96n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationhasoffering
    ADD CONSTRAINT fk_s19siow5aetbwb8ppww4kb96n FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4192 (class 2606 OID 21114)
-- Name: obscodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT obscodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4191 (class 2606 OID 21119)
-- Name: obscodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT obscodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4195 (class 2606 OID 21139)
-- Name: obsconstobservationiypefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsconstobservationiypefk FOREIGN KEY (observationtypeid) REFERENCES observationtype(observationtypeid);


--
-- TOC entry 4197 (class 2606 OID 21129)
-- Name: obsconstobspropfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsconstobspropfk FOREIGN KEY (observablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4194 (class 2606 OID 21144)
-- Name: obsconstofferingfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsconstofferingfk FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4172 (class 2606 OID 21014)
-- Name: observablepropertychildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositephenomenon
    ADD CONSTRAINT observablepropertychildfk FOREIGN KEY (childobservablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4171 (class 2606 OID 21019)
-- Name: observablepropertyparentfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositephenomenon
    ADD CONSTRAINT observablepropertyparentfk FOREIGN KEY (parentobservablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4159 (class 2606 OID 20954)
-- Name: observationblobvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blobvalue
    ADD CONSTRAINT observationblobvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4162 (class 2606 OID 20969)
-- Name: observationbooleanvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booleanvalue
    ADD CONSTRAINT observationbooleanvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4167 (class 2606 OID 20994)
-- Name: observationcategoryvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryvalue
    ADD CONSTRAINT observationcategoryvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4170 (class 2606 OID 21004)
-- Name: observationchildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositeobservation
    ADD CONSTRAINT observationchildfk FOREIGN KEY (childobservationid) REFERENCES observation(observationid);


--
-- TOC entry 4168 (class 2606 OID 20999)
-- Name: observationcomplexvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY complexvalue
    ADD CONSTRAINT observationcomplexvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4175 (class 2606 OID 21034)
-- Name: observationcountvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countvalue
    ADD CONSTRAINT observationcountvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4182 (class 2606 OID 21069)
-- Name: observationgeometryvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geometryvalue
    ADD CONSTRAINT observationgeometryvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4187 (class 2606 OID 21094)
-- Name: observationnumericvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericvalue
    ADD CONSTRAINT observationnumericvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4199 (class 2606 OID 21149)
-- Name: observationofferingfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationhasoffering
    ADD CONSTRAINT observationofferingfk FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4169 (class 2606 OID 21009)
-- Name: observationparentfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compositeobservation
    ADD CONSTRAINT observationparentfk FOREIGN KEY (observationid) REFERENCES complexvalue(observationid);


--
-- TOC entry 4214 (class 2606 OID 21224)
-- Name: observationprofilevaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profilevalue
    ADD CONSTRAINT observationprofilevaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4193 (class 2606 OID 21109)
-- Name: observationseriesfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT observationseriesfk FOREIGN KEY (seriesid) REFERENCES series(seriesid);


--
-- TOC entry 4233 (class 2606 OID 21324)
-- Name: observationswedataarrayvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY swedataarrayvalue
    ADD CONSTRAINT observationswedataarrayvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4236 (class 2606 OID 21339)
-- Name: observationtextvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY textvalue
    ADD CONSTRAINT observationtextvaluefk FOREIGN KEY (observationid) REFERENCES observation(observationid);


--
-- TOC entry 4190 (class 2606 OID 21124)
-- Name: observationunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observation
    ADD CONSTRAINT observationunitfk FOREIGN KEY (unitid) REFERENCES unit(unitid);


--
-- TOC entry 4196 (class 2606 OID 21134)
-- Name: obsnconstprocedurefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observationconstellation
    ADD CONSTRAINT obsnconstprocedurefk FOREIGN KEY (procedureid) REFERENCES procedure(procedureid);


--
-- TOC entry 4189 (class 2606 OID 21099)
-- Name: obspropcodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observableproperty
    ADD CONSTRAINT obspropcodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4188 (class 2606 OID 21104)
-- Name: obspropcodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY observableproperty
    ADD CONSTRAINT obspropcodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4201 (class 2606 OID 21159)
-- Name: offcodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offering
    ADD CONSTRAINT offcodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4200 (class 2606 OID 21164)
-- Name: offcodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offering
    ADD CONSTRAINT offcodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4209 (class 2606 OID 21199)
-- Name: offeringchildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringrelation
    ADD CONSTRAINT offeringchildfk FOREIGN KEY (childofferingid) REFERENCES offering(offeringid);


--
-- TOC entry 4203 (class 2606 OID 21169)
-- Name: offeringfeaturetypefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedfeaturetype
    ADD CONSTRAINT offeringfeaturetypefk FOREIGN KEY (featureofinteresttypeid) REFERENCES featureofinteresttype(featureofinteresttypeid);


--
-- TOC entry 4205 (class 2606 OID 21179)
-- Name: offeringobservationtypefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringallowedobservationtype
    ADD CONSTRAINT offeringobservationtypefk FOREIGN KEY (observationtypeid) REFERENCES observationtype(observationtypeid);


--
-- TOC entry 4208 (class 2606 OID 21204)
-- Name: offeringparenffk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringrelation
    ADD CONSTRAINT offeringparenffk FOREIGN KEY (parentofferingid) REFERENCES offering(offeringid);


--
-- TOC entry 4206 (class 2606 OID 21194)
-- Name: offeringrelatedfeaturefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringhasrelatedfeature
    ADD CONSTRAINT offeringrelatedfeaturefk FOREIGN KEY (relatedfeatureid) REFERENCES relatedfeature(relatedfeatureid);


--
-- TOC entry 4212 (class 2606 OID 21214)
-- Name: oprofileobschildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profileobservation
    ADD CONSTRAINT oprofileobschildfk FOREIGN KEY (childobservationid) REFERENCES observation(observationid);


--
-- TOC entry 4161 (class 2606 OID 20964)
-- Name: parameterbooleanvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booleanparametervalue
    ADD CONSTRAINT parameterbooleanvaluefk FOREIGN KEY (parameterid) REFERENCES parameter(parameterid);


--
-- TOC entry 4166 (class 2606 OID 20984)
-- Name: parametercategoryvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoryparametervalue
    ADD CONSTRAINT parametercategoryvaluefk FOREIGN KEY (parameterid) REFERENCES parameter(parameterid);


--
-- TOC entry 4174 (class 2606 OID 21029)
-- Name: parametercountvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countparametervalue
    ADD CONSTRAINT parametercountvaluefk FOREIGN KEY (parameterid) REFERENCES parameter(parameterid);


--
-- TOC entry 4186 (class 2606 OID 21084)
-- Name: parameternumericvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericparametervalue
    ADD CONSTRAINT parameternumericvaluefk FOREIGN KEY (parameterid) REFERENCES parameter(parameterid);


--
-- TOC entry 4235 (class 2606 OID 21334)
-- Name: parametertextvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY textparametervalue
    ADD CONSTRAINT parametertextvaluefk FOREIGN KEY (parameterid) REFERENCES parameter(parameterid);


--
-- TOC entry 4240 (class 2606 OID 21359)
-- Name: parameterxmlvaluefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY xmlparametervalue
    ADD CONSTRAINT parameterxmlvaluefk FOREIGN KEY (parameterid) REFERENCES parameter(parameterid);


--
-- TOC entry 4156 (class 2606 OID 20939)
-- Name: proccodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT proccodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4157 (class 2606 OID 20944)
-- Name: proccodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT proccodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4225 (class 2606 OID 21279)
-- Name: procedurechildfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sensorsystem
    ADD CONSTRAINT procedurechildfk FOREIGN KEY (childsensorid) REFERENCES procedure(procedureid);


--
-- TOC entry 4224 (class 2606 OID 21284)
-- Name: procedureparenffk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sensorsystem
    ADD CONSTRAINT procedureparenffk FOREIGN KEY (parentsensorid) REFERENCES procedure(procedureid);


--
-- TOC entry 4155 (class 2606 OID 20934)
-- Name: procprocdescformatfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT procprocdescformatfk FOREIGN KEY (proceduredescriptionformatid) REFERENCES proceduredescriptionformat(proceduredescriptionformatid);


--
-- TOC entry 4211 (class 2606 OID 21219)
-- Name: profileobsparentfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profileobservation
    ADD CONSTRAINT profileobsparentfk FOREIGN KEY (observationid) REFERENCES profilevalue(observationid);


--
-- TOC entry 4213 (class 2606 OID 21229)
-- Name: profileunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profilevalue
    ADD CONSTRAINT profileunitfk FOREIGN KEY (levelunitid) REFERENCES unit(unitid);


--
-- TOC entry 4183 (class 2606 OID 21079)
-- Name: quanfeatparamvalueunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericfeatparamvalue
    ADD CONSTRAINT quanfeatparamvalueunitfk FOREIGN KEY (unitid) REFERENCES unit(unitid);


--
-- TOC entry 4185 (class 2606 OID 21089)
-- Name: quanparamvalueunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY numericparametervalue
    ADD CONSTRAINT quanparamvalueunitfk FOREIGN KEY (unitid) REFERENCES unit(unitid);


--
-- TOC entry 4217 (class 2606 OID 21239)
-- Name: relatedfeatrelatedfeatrolefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeaturehasrole
    ADD CONSTRAINT relatedfeatrelatedfeatrolefk FOREIGN KEY (relatedfeatureroleid) REFERENCES relatedfeaturerole(relatedfeatureroleid);


--
-- TOC entry 4215 (class 2606 OID 21234)
-- Name: relatedfeaturefeaturefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY relatedfeature
    ADD CONSTRAINT relatedfeaturefeaturefk FOREIGN KEY (featureofinterestid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4207 (class 2606 OID 21189)
-- Name: relatedfeatureofferingfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY offeringhasrelatedfeature
    ADD CONSTRAINT relatedfeatureofferingfk FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4220 (class 2606 OID 21274)
-- Name: resulttemplatefeatureidx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplatefeatureidx FOREIGN KEY (featureofinterestid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4222 (class 2606 OID 21264)
-- Name: resulttemplateobspropfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplateobspropfk FOREIGN KEY (observablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4223 (class 2606 OID 21259)
-- Name: resulttemplateofferingidx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplateofferingidx FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4221 (class 2606 OID 21269)
-- Name: resulttemplateprocedurefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resulttemplate
    ADD CONSTRAINT resulttemplateprocedurefk FOREIGN KEY (procedureid) REFERENCES procedure(procedureid);


--
-- TOC entry 4231 (class 2606 OID 21314)
-- Name: seriescodespaceidentifierfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriescodespaceidentifierfk FOREIGN KEY (codespace) REFERENCES codespace(codespaceid);


--
-- TOC entry 4232 (class 2606 OID 21319)
-- Name: seriescodespacenamefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriescodespacenamefk FOREIGN KEY (codespacename) REFERENCES codespace(codespaceid);


--
-- TOC entry 4226 (class 2606 OID 21289)
-- Name: seriesfeaturefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesfeaturefk FOREIGN KEY (featureofinterestid) REFERENCES featureofinterest(featureofinterestid);


--
-- TOC entry 4227 (class 2606 OID 21294)
-- Name: seriesobpropfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesobpropfk FOREIGN KEY (observablepropertyid) REFERENCES observableproperty(observablepropertyid);


--
-- TOC entry 4229 (class 2606 OID 21304)
-- Name: seriesofferingfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesofferingfk FOREIGN KEY (offeringid) REFERENCES offering(offeringid);


--
-- TOC entry 4228 (class 2606 OID 21299)
-- Name: seriesprocedurefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesprocedurefk FOREIGN KEY (procedureid) REFERENCES procedure(procedureid);


--
-- TOC entry 4230 (class 2606 OID 21309)
-- Name: seriesunitfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY series
    ADD CONSTRAINT seriesunitfk FOREIGN KEY (unitid) REFERENCES unit(unitid);


--
-- TOC entry 4158 (class 2606 OID 20949)
-- Name: typeoffk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedure
    ADD CONSTRAINT typeoffk FOREIGN KEY (typeof) REFERENCES procedure(procedureid);


--
-- TOC entry 4238 (class 2606 OID 21344)
-- Name: validproceduretimeprocedurefk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY validproceduretime
    ADD CONSTRAINT validproceduretimeprocedurefk FOREIGN KEY (procedureid) REFERENCES procedure(procedureid);


--
-- TOC entry 4237 (class 2606 OID 21349)
-- Name: validprocprocdescformatfk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY validproceduretime
    ADD CONSTRAINT validprocprocdescformatfk FOREIGN KEY (proceduredescriptionformatid) REFERENCES proceduredescriptionformat(proceduredescriptionformatid);


--
-- TOC entry 4437 (class 0 OID 0)
-- Dependencies: 10
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-07-28 15:28:51 CEST

--
-- PostgreSQL database dump complete
--
