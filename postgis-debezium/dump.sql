CREATE SEQUENCE public.inventory_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.inventory_id_seq
  OWNER TO postgres;


CREATE TABLE public.inventory
(
  firstname character varying,
  lastname character varying,
  id integer NOT NULL DEFAULT nextval('inventory_id_seq'::regclass),
  CONSTRAINT pk_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.inventory
  OWNER TO postgres;
