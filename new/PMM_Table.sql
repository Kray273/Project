/* Ŀ�´�Ƽ */
CREATE TABLE community (
	cm_bdno VARCHAR2(50) NOT NULL, /* �Խù���ȣ */
	um_no VARCHAR2(50), /* ȸ����ȣ */
	cm_title VARCHAR2(50), /* ���� */
	cm_desc VARCHAR2(500), /* ���� */
	cm_cnt NUMBER(3), /* ��ȸ�� */
	cm_del VARCHAR2(5), /* �������� */
	cm_regdate DATE, /* ����Ͻ� */
	cm_update DATE /* �����Ͻ� */
);

COMMENT ON TABLE community IS 'Ŀ�´�Ƽ';

COMMENT ON COLUMN community.cm_bdno IS '�Խù���ȣ';

COMMENT ON COLUMN community.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN community.cm_title IS '����';

COMMENT ON COLUMN community.cm_desc IS '����';

COMMENT ON COLUMN community.cm_cnt IS '��ȸ��';

COMMENT ON COLUMN community.cm_del IS '��������';

COMMENT ON COLUMN community.cm_regdate IS '����Ͻ�';

COMMENT ON COLUMN community.cm_update IS '�����Ͻ�';

CREATE UNIQUE INDEX PK_community
	ON community (
		cm_bdno ASC
	);

ALTER TABLE community
	ADD
		CONSTRAINT PK_community
		PRIMARY KEY (
			cm_bdno
		);

/* ��� */
CREATE TABLE reply (
	r_no VARCHAR2(50) NOT NULL, /* �ϷĹ�ȣ */
	cm_bdno VARCHAR2(50), /* �Խù���ȣ */
	um_no VARCHAR2(50), /* ȸ����ȣ */
	r_content VARCHAR2(500), /* ��ۺ��� */
	r_del VARCHAR2(10), /* �������� */
	r_date DATE /* ����Ͻ� */
);

COMMENT ON TABLE reply IS '���';

COMMENT ON COLUMN reply.r_no IS '�ϷĹ�ȣ';

COMMENT ON COLUMN reply.cm_bdno IS '�Խù���ȣ';

COMMENT ON COLUMN reply.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN reply.r_content IS '��ۺ���';

COMMENT ON COLUMN reply.r_del IS '��������';

COMMENT ON COLUMN reply.r_date IS '����Ͻ�';

CREATE UNIQUE INDEX PK_reply
	ON reply (
		r_no ASC
	);

ALTER TABLE reply
	ADD
		CONSTRAINT PK_reply
		PRIMARY KEY (
			r_no
		);

/* ��ǰ */
CREATE TABLE PRODUCT (
	p_pno VARCHAR2(50) NOT NULL, /* ��ǰ�ڵ��ȣ */
	bm_no VARCHAR2(20), /* �귣���ȣ */
	p_name VARCHAR2(200), /* ��ǰ�� */
	p_detail VARCHAR2(1000), /* ��ǰ������ */
	p_price NUMBER(7), /* ���� */
	p_disprice NUMBER(7), /* �ǸŰ� */
	p_start DATE, /* �ǸŽ����� */
	p_end DATE, /* �Ǹ������� */
	p_delivery VARCHAR2(200), /* ���������� */
	p_as VARCHAR2(10), /* A/S���ɿ��� */
	p_ox VARCHAR2(10), /* ��ǰ���ɿ��� */
	p_pimg VARCHAR2(200), /* ��ǰ�̹��� */
	p_dimg VARCHAR2(200), /* ���̹��� */
	p_deldis NUMBER(2), /* ������� */
	p_count NUMBER(4), /* ���� */
	p_regdate DATE /* ����Ͻ� */
);

COMMENT ON TABLE PRODUCT IS '��ǰ';

COMMENT ON COLUMN PRODUCT.p_pno IS '��ǰ�ڵ��ȣ';

COMMENT ON COLUMN PRODUCT.bm_no IS '�귣���ȣ';

COMMENT ON COLUMN PRODUCT.p_name IS '��ǰ��';

COMMENT ON COLUMN PRODUCT.p_detail IS '��ǰ������';

COMMENT ON COLUMN PRODUCT.p_price IS '����';

COMMENT ON COLUMN PRODUCT.p_disprice IS '�ǸŰ�';

COMMENT ON COLUMN PRODUCT.p_start IS '�ǸŽ�����';

COMMENT ON COLUMN PRODUCT.p_end IS '�Ǹ�������';

COMMENT ON COLUMN PRODUCT.p_delivery IS '����������';

COMMENT ON COLUMN PRODUCT.p_as IS 'A/S���ɿ���';

COMMENT ON COLUMN PRODUCT.p_ox IS '��ǰ���ɿ���';

COMMENT ON COLUMN PRODUCT.p_pimg IS '��ǰ�̹���';

COMMENT ON COLUMN PRODUCT.p_dimg IS '���̹���';

COMMENT ON COLUMN PRODUCT.p_deldis IS '�������';

COMMENT ON COLUMN PRODUCT.p_count IS '����';

COMMENT ON COLUMN PRODUCT.p_regdate IS '����Ͻ�';

CREATE UNIQUE INDEX PK_PRODUCT
	ON PRODUCT (
		p_pno ASC
	);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT PK_PRODUCT
		PRIMARY KEY (
			p_pno
		);

/* �ֹ� */
CREATE TABLE buy (
	po_no VARCHAR2(20) NOT NULL, /* �ֹ���ȣ */
	o_odno VARCHAR2(20), /* �ֹ���ǰ��ȣ */
	po_total NUMBER(7), /* �Ѱ��� */
	pa_no VARCHAR2(10), /* ����Ʈ���� */
	cpa_no VARCHAR2(10), /* ���������ȣ */
	d_dno VARCHAR2(30), /* ��۾�ó��ȣ */
	po_drequest VARCHAR2(500), /* ��ۿ�û���� */
	po_price NUMBER(7), /* �����ݾ� */
	po_ptype VARCHAR2(100), /* ���������ڵ� */
	po_name VARCHAR2(50), /* �����ڸ� */
	po_number VARCHAR2(50), /* ��������ȭ��ȣ */
	po_addr VARCHAR2(200), /* ������ �ּ� */
	po_status VARCHAR2(20), /* �ֹ����� */
	po_regdate DATE /* �ֹ��Ͻ� */
);

COMMENT ON TABLE buy IS '�ֹ�';

COMMENT ON COLUMN buy.po_no IS '�ֹ���ȣ';

COMMENT ON COLUMN buy.o_odno IS '�ֹ���ǰ��ȣ';

COMMENT ON COLUMN buy.po_total IS '�Ѱ���';

COMMENT ON COLUMN buy.pa_no IS '����Ʈ����';

COMMENT ON COLUMN buy.cpa_no IS '���������ȣ';

COMMENT ON COLUMN buy.d_dno IS '��۾�ó��ȣ';

COMMENT ON COLUMN buy.po_drequest IS '��ۿ�û����';

COMMENT ON COLUMN buy.po_price IS '�����ݾ�';

COMMENT ON COLUMN buy.po_ptype IS '���������ڵ�';

COMMENT ON COLUMN buy.po_name IS '�����ڸ�';

COMMENT ON COLUMN buy.po_number IS '��������ȭ��ȣ';

COMMENT ON COLUMN buy.po_addr IS '������ �ּ�';

COMMENT ON COLUMN buy.po_status IS '�ֹ�����';

COMMENT ON COLUMN buy.po_regdate IS '�ֹ��Ͻ�';

CREATE UNIQUE INDEX PK_buy
	ON buy (
		po_no ASC
	);

ALTER TABLE buy
	ADD
		CONSTRAINT PK_buy
		PRIMARY KEY (
			po_no
		);

/* ��۾�ü */
CREATE TABLE delivery (
	d_dno VARCHAR2(30) NOT NULL, /* ��۾�ó��ȣ */
	d_cpname VARCHAR2(200), /* ��ü�� */
	d_odno VARCHAR2(50), /* ����ڵ�Ϲ�ȣ */
	d_rpnname VARCHAR2(50), /* ��ǥ�ڸ� */
	d_tel VARCHAR2(50), /* ��ǥ��ȭ��ȣ */
	d_addr VARCHAR2(100), /* �ּ� */
	d_register VARCHAR2(50), /* ����� */
	d_regdate DATE, /* ����Ͻ� */
	d_price NUMBER(30) /* ��۰��� */
);

COMMENT ON TABLE delivery IS '��۾�ü';

COMMENT ON COLUMN delivery.d_dno IS '��۾�ó��ȣ';

COMMENT ON COLUMN delivery.d_cpname IS '��ü��';

COMMENT ON COLUMN delivery.d_odno IS '����ڵ�Ϲ�ȣ';

COMMENT ON COLUMN delivery.d_rpnname IS '��ǥ�ڸ�';

COMMENT ON COLUMN delivery.d_tel IS '��ǥ��ȭ��ȣ';

COMMENT ON COLUMN delivery.d_addr IS '�ּ�';

COMMENT ON COLUMN delivery.d_register IS '�����';

COMMENT ON COLUMN delivery.d_regdate IS '����Ͻ�';

COMMENT ON COLUMN delivery.d_price IS '��۰���';

CREATE UNIQUE INDEX PK_delivery
	ON delivery (
		d_dno ASC
	);

ALTER TABLE delivery
	ADD
		CONSTRAINT PK_delivery
		PRIMARY KEY (
			d_dno
		);

/* �ֹ���ǰ */
CREATE TABLE productbuy (
	o_odno VARCHAR2(20) NOT NULL, /* �ֹ���ǰ��ȣ */
	p_pno VARCHAR2(50), /* ��ǰ�ڵ��ȣ */
	o_pquantity NUMBER(3), /* �ֹ� ���� */
	s_no VARCHAR2(50), /* ��ٱ��Ϲ�ȣ */
	o_pno1 VARCHAR2(50), /* �ֹ���ǰ1 */
	o_pno2 VARCHAR2(50), /* �ֹ���ǰ2 */
	o_pno3 VARCHAR2(50), /* �ֹ���ǰ3 */
	o_pno1qu NUMBER(3), /* �ֹ���ǰ1 ���� */
	o_pno2qu NUMBER(3), /* �ֹ���ǰ2 ���� */
	o_pno3qu NUMBER(3), /* �ֹ���ǰ3 ���� */
	um_no VARCHAR2(50), /* ȸ����ȣ */
	o_date DATE /* ����Ͻ� */
);

COMMENT ON TABLE productbuy IS '�ֹ���ǰ';

COMMENT ON COLUMN productbuy.o_odno IS '�ֹ���ǰ��ȣ';

COMMENT ON COLUMN productbuy.p_pno IS '��ǰ�ڵ��ȣ';

COMMENT ON COLUMN productbuy.o_pquantity IS '�ֹ� ����';

COMMENT ON COLUMN productbuy.s_no IS '��ٱ��Ϲ�ȣ';

COMMENT ON COLUMN productbuy.o_pno1 IS '�ֹ���ǰ1';

COMMENT ON COLUMN productbuy.o_pno2 IS '�ֹ���ǰ2';

COMMENT ON COLUMN productbuy.o_pno3 IS '�ֹ���ǰ3';

COMMENT ON COLUMN productbuy.o_pno1qu IS '�ֹ���ǰ1 ����';

COMMENT ON COLUMN productbuy.o_pno2qu IS '�ֹ���ǰ2 ����';

COMMENT ON COLUMN productbuy.o_pno3qu IS '�ֹ���ǰ3 ����';

COMMENT ON COLUMN productbuy.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN productbuy.o_date IS '����Ͻ�';

CREATE UNIQUE INDEX PK_productbuy
	ON productbuy (
		o_odno ASC
	);

ALTER TABLE productbuy
	ADD
		CONSTRAINT PK_productbuy
		PRIMARY KEY (
			o_odno
		);

/* �ڵ� */
CREATE TABLE code (
	p_pno VARCHAR2(50) NOT NULL, /* ��ǰ�ڵ��ȣ */
	dc_pcno VARCHAR2(50), /* �ڵ�з���ȣ */
	c_name VARCHAR2(200), /* �ڵ�� */
	c_ex VARCHAR2(500) /* �ڵ弳�� */
);

COMMENT ON TABLE code IS '�ڵ�';

COMMENT ON COLUMN code.p_pno IS '��ǰ�ڵ��ȣ';

COMMENT ON COLUMN code.dc_pcno IS '�ڵ�з���ȣ';

COMMENT ON COLUMN code.c_name IS '�ڵ��';

COMMENT ON COLUMN code.c_ex IS '�ڵ弳��';

CREATE UNIQUE INDEX PK_code
	ON code (
		p_pno ASC
	);

ALTER TABLE code
	ADD
		CONSTRAINT PK_code
		PRIMARY KEY (
			p_pno
		);

/* �ڵ�з� */
CREATE TABLE divisionCode (
	dc_pcno VARCHAR2(50) NOT NULL, /* �ڵ�з���ȣ */
	dc_name VARCHAR2(100), /* �ڵ�з��� */
	dc_ex VARCHAR2(500) /* �ڵ�з����� */
);

COMMENT ON TABLE divisionCode IS '�ڵ�з�';

COMMENT ON COLUMN divisionCode.dc_pcno IS '�ڵ�з���ȣ';

COMMENT ON COLUMN divisionCode.dc_name IS '�ڵ�з���';

COMMENT ON COLUMN divisionCode.dc_ex IS '�ڵ�з�����';

CREATE UNIQUE INDEX PK_divisionCode
	ON divisionCode (
		dc_pcno ASC
	);

ALTER TABLE divisionCode
	ADD
		CONSTRAINT PK_divisionCode
		PRIMARY KEY (
			dc_pcno
		);

/* ��ٱ��� */
CREATE TABLE basket (
	s_no VARCHAR2(50) NOT NULL, /* ��ٱ��Ϲ�ȣ */
	um_no VARCHAR2(50), /* ȸ����ȣ */
	p_pno VARCHAR2(50), /* ��ǰ�ڵ��ȣ */
	s_quantity NUMBER(3), /* �ֹ� ���� */
	s_date DATE /* ����Ͻ� */
);

COMMENT ON TABLE basket IS '��ٱ���';

COMMENT ON COLUMN basket.s_no IS '��ٱ��Ϲ�ȣ';

COMMENT ON COLUMN basket.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN basket.p_pno IS '��ǰ�ڵ��ȣ';

COMMENT ON COLUMN basket.s_quantity IS '�ֹ� ����';

COMMENT ON COLUMN basket.s_date IS '����Ͻ�';

CREATE UNIQUE INDEX PK_basket
	ON basket (
		s_no ASC
	);

ALTER TABLE basket
	ADD
		CONSTRAINT PK_basket
		PRIMARY KEY (
			s_no
		);

/* �� */
CREATE TABLE keep (
	k_no VARCHAR2(50) NOT NULL, /* ���ȣ */
	um_no VARCHAR2(50), /* ȸ����ȣ */
	p_pno VARCHAR2(50), /* ��ǰ�ڵ��ȣ */
	bm_no VARCHAR2(20), /* �귣���ȣ */
	k_date DATE /* ���ѳ� */
);

COMMENT ON TABLE keep IS '��';

COMMENT ON COLUMN keep.k_no IS '���ȣ';

COMMENT ON COLUMN keep.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN keep.p_pno IS '��ǰ�ڵ��ȣ';

COMMENT ON COLUMN keep.bm_no IS '�귣���ȣ';

COMMENT ON COLUMN keep.k_date IS '���ѳ�';

CREATE UNIQUE INDEX PK_keep
	ON keep (
		k_no ASC
	);

ALTER TABLE keep
	ADD
		CONSTRAINT PK_keep
		PRIMARY KEY (
			k_no
		);

/* ����� */
CREATE TABLE membership (
	ms_grade VARCHAR2(10) NOT NULL, /* ����ʵ�� */
	ms_desc VARCHAR2(100), /* ���ü��� */
	ms_sale VARCHAR2(30) /* ���η� */
);

COMMENT ON TABLE membership IS '�����';

COMMENT ON COLUMN membership.ms_grade IS '����ʵ��';

COMMENT ON COLUMN membership.ms_desc IS '���ü���';

COMMENT ON COLUMN membership.ms_sale IS '���η�';

CREATE UNIQUE INDEX PK_membership
	ON membership (
		ms_grade ASC
	);

ALTER TABLE membership
	ADD
		CONSTRAINT PK_membership
		PRIMARY KEY (
			ms_grade
		);

/* ���� */
CREATE TABLE coupon (
	cp_cpno VARCHAR2(10) NOT NULL, /* ������ȣ */
	cp_name VARCHAR2( 50), /* ������ */
	cp_content NUMBER(2), /* �������� */
	cp_image VARCHAR2(500), /* �̹��� */
	cp_regdate DATE, /* ������� */
	cp_enddate DATE /* ������¥ */
);

COMMENT ON TABLE coupon IS '����';

COMMENT ON COLUMN coupon.cp_cpno IS '������ȣ';

COMMENT ON COLUMN coupon.cp_name IS '������';

COMMENT ON COLUMN coupon.cp_content IS '��������';

COMMENT ON COLUMN coupon.cp_image IS '�̹���';

COMMENT ON COLUMN coupon.cp_regdate IS '�������';

COMMENT ON COLUMN coupon.cp_enddate IS '������¥';

CREATE UNIQUE INDEX PK_coupon
	ON coupon (
		cp_cpno ASC
	);

ALTER TABLE coupon
	ADD
		CONSTRAINT PK_coupon
		PRIMARY KEY (
			cp_cpno
		);

/* ����Ʈ */
CREATE TABLE point (
	pp_payno VARCHAR2(20) NOT NULL, /* ����Ʈ��ȣ */
	pp_name VARCHAR2(50), /* ����Ʈ�� */
	pp_desc VARCHAR2(200), /* ����Ʈ���� */
	pp_date DATE /* ����Ͻ� */
);

COMMENT ON TABLE point IS '����Ʈ';

COMMENT ON COLUMN point.pp_payno IS '����Ʈ��ȣ';

COMMENT ON COLUMN point.pp_name IS '����Ʈ��';

COMMENT ON COLUMN point.pp_desc IS '����Ʈ����';

COMMENT ON COLUMN point.pp_date IS '����Ͻ�';

CREATE UNIQUE INDEX PK_point
	ON point (
		pp_payno ASC
	);

ALTER TABLE point
	ADD
		CONSTRAINT PK_point
		PRIMARY KEY (
			pp_payno
		);

/* ���� */
CREATE TABLE review (
	rv_no VARCHAR2(50) NOT NULL, /* �����ȣ */
	p_pno VARCHAR2(50), /* ��ǰ�ڵ��ȣ */
	um_no VARCHAR2(50), /* ȸ����ȣ */
	rv_content VARCHAR2(500), /* �ı⳻�� */
	rv_star NUMBER(2), /* ���� */
	rv_date DATE, /* ����� */
	cm_no VARCHAR2(50) /* ��۹�ȣ */
);

COMMENT ON TABLE review IS '����';

COMMENT ON COLUMN review.rv_no IS '�����ȣ';

COMMENT ON COLUMN review.p_pno IS '��ǰ�ڵ��ȣ';

COMMENT ON COLUMN review.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN review.rv_content IS '�ı⳻��';

COMMENT ON COLUMN review.rv_star IS '����';

COMMENT ON COLUMN review.rv_date IS '�����';

COMMENT ON COLUMN review.cm_no IS '��۹�ȣ';

CREATE UNIQUE INDEX PK_review
	ON review (
		rv_no ASC
	);

ALTER TABLE review
	ADD
		CONSTRAINT PK_review
		PRIMARY KEY (
			rv_no
		);

/* MD */
CREATE TABLE md (
	md_no VARCHAR2(50) NOT NULL, /* MD��ȣ */
	bm_no VARCHAR2(20), /* �귣���ȣ */
	p_pno VARCHAR2(50), /* ��ǰ�ڵ��ȣ */
	md_date DATE /* ����� */
);

COMMENT ON TABLE md IS 'MD';

COMMENT ON COLUMN md.md_no IS 'MD��ȣ';

COMMENT ON COLUMN md.bm_no IS '�귣���ȣ';

COMMENT ON COLUMN md.p_pno IS '��ǰ�ڵ��ȣ';

COMMENT ON COLUMN md.md_date IS '�����';

CREATE UNIQUE INDEX PK_md
	ON md (
		md_no ASC
	);

ALTER TABLE md
	ADD
		CONSTRAINT PK_md
		PRIMARY KEY (
			md_no
		);

/* �귣�幮�� */
CREATE TABLE ask (
	a_no VARCHAR2(50) NOT NULL, /* ���ǹ�ȣ */
	a_title VARCHAR2(200), /* ���Ǹ� */
	a_content VARCHAR2(1000), /* ���ǳ��� */
	um_no VARCHAR2(50), /* ȸ����ȣ */
	bm_no VARCHAR2(20), /* �귣���ȣ */
	a_pmm VARCHAR2(20), /* PMM */
	a_date DATE, /* ���ǳ�¥ */
	a_status VARCHAR2(10), /* ���ǻ��� */
	ar_no VARCHAR2(50) /* �亯��ȣ */
);

COMMENT ON TABLE ask IS '�귣�幮��';

COMMENT ON COLUMN ask.a_no IS '���ǹ�ȣ';

COMMENT ON COLUMN ask.a_title IS '���Ǹ�';

COMMENT ON COLUMN ask.a_content IS '���ǳ���';

COMMENT ON COLUMN ask.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN ask.bm_no IS '�귣���ȣ';

COMMENT ON COLUMN ask.a_pmm IS 'PMM';

COMMENT ON COLUMN ask.a_date IS '���ǳ�¥';

COMMENT ON COLUMN ask.a_status IS '���ǻ���';

COMMENT ON COLUMN ask.ar_no IS '�亯��ȣ';

CREATE UNIQUE INDEX PK_ask
	ON ask (
		a_no ASC
	);

ALTER TABLE ask
	ADD
		CONSTRAINT PK_ask
		PRIMARY KEY (
			a_no
		);

/* �귣�� */
CREATE TABLE brandMember (
	bm_no VARCHAR2(20) NOT NULL, /* �귣���ȣ */
	bm_id VARCHAR2(20) NOT NULL, /* ���̵� */
	bm_password VARCHAR2(20) NOT NULL, /* ��� */
	bm_manager VARCHAR2(20), /* ����� */
	bm_email VARCHAR2(50), /* ����� �̸��� */
	bm_tel VARCHAR2(50), /* ����� ��ȣ */
	bm_ars VARCHAR2(20), /* ȣĪ */
	bm_agree VARCHAR2(5) /* ���ο��� */
);

COMMENT ON TABLE brandMember IS '�귣��';

COMMENT ON COLUMN brandMember.bm_no IS '�귣���ȣ';

COMMENT ON COLUMN brandMember.bm_id IS '���̵�';

COMMENT ON COLUMN brandMember.bm_password IS '���';

COMMENT ON COLUMN brandMember.bm_manager IS '�����';

COMMENT ON COLUMN brandMember.bm_email IS '����� �̸���';

COMMENT ON COLUMN brandMember.bm_tel IS '����� ��ȣ';

COMMENT ON COLUMN brandMember.bm_ars IS 'ȣĪ';

COMMENT ON COLUMN brandMember.bm_agree IS '���ο���';

CREATE UNIQUE INDEX PK_brandMember
	ON brandMember (
		bm_no ASC
	);

CREATE UNIQUE INDEX UIX_brandMember
	ON brandMember (
		bm_id ASC
	);

ALTER TABLE brandMember
	ADD
		CONSTRAINT PK_brandMember
		PRIMARY KEY (
			bm_no
		);

ALTER TABLE brandMember
	ADD
		CONSTRAINT UK_brandMember
		UNIQUE (
			bm_id
		);

/* �귣�� �׸� */
CREATE TABLE brandTheme (
	bm_no VARCHAR2(20) NOT NULL, /* �귣���ȣ */
	bt_color VARCHAR2(20), /* �� */
	bt_logo VARCHAR2(200), /* �ΰ��̹��� */
	bt_font VARCHAR2(20), /* ��Ʈ */
	bt_date DATE /* ����� */
);

COMMENT ON TABLE brandTheme IS '�귣�� �׸�';

COMMENT ON COLUMN brandTheme.bm_no IS '�귣���ȣ';

COMMENT ON COLUMN brandTheme.bt_color IS '��';

COMMENT ON COLUMN brandTheme.bt_logo IS '�ΰ��̹���';

COMMENT ON COLUMN brandTheme.bt_font IS '��Ʈ';

COMMENT ON COLUMN brandTheme.bt_date IS '�����';

CREATE UNIQUE INDEX PK_brandTheme
	ON brandTheme (
		bm_no ASC
	);

ALTER TABLE brandTheme
	ADD
		CONSTRAINT PK_brandTheme
		PRIMARY KEY (
			bm_no
		);

/* �귣�� ���� */
CREATE TABLE brandInfo (
	bm_no VARCHAR2(20) NOT NULL, /* �귣���ȣ */
	bi_biznum VARCHAR2(50), /* ����ڹ�ȣ */
	bi_name VARCHAR2(50), /* ��ü�� */
	bi_tel VARCHAR2(50), /* ��ü����ó */
	bi_repr VARCHAR2(20), /* ��ǥ�� �̸� */
	bi_commnum VARCHAR2(50), /* ��Ÿ��Թ�ȣ */
	bi_addr VARCHAR2(100), /* ��ü�ּ� */
	bi_desc VARCHAR2(500), /* ����� */
	bi_bizlic VARCHAR2(100), /* ����ڵ���� */
	bi_shop VARCHAR2(100), /* ��߼��θ� */
	bi_insta VARCHAR2(100), /* SNS(�ν�) */
	bi_sns VARCHAR2(100), /* SNS(��Ÿ) */
	bi_fax VARCHAR2(50), /* �ѽ���ȣ */
	bi_date DATE /* ����� */
);

COMMENT ON TABLE brandInfo IS '�귣�� ����';

COMMENT ON COLUMN brandInfo.bm_no IS '�귣���ȣ';

COMMENT ON COLUMN brandInfo.bi_biznum IS '����ڹ�ȣ';

COMMENT ON COLUMN brandInfo.bi_name IS '��ü��';

COMMENT ON COLUMN brandInfo.bi_tel IS '��ü����ó';

COMMENT ON COLUMN brandInfo.bi_repr IS '��ǥ�� �̸�';

COMMENT ON COLUMN brandInfo.bi_commnum IS '��Ÿ��Թ�ȣ';

COMMENT ON COLUMN brandInfo.bi_addr IS '��ü�ּ�';

COMMENT ON COLUMN brandInfo.bi_desc IS '�����';

COMMENT ON COLUMN brandInfo.bi_bizlic IS '����ڵ����';

COMMENT ON COLUMN brandInfo.bi_shop IS '��߼��θ�';

COMMENT ON COLUMN brandInfo.bi_insta IS 'SNS(�ν�)';

COMMENT ON COLUMN brandInfo.bi_sns IS 'SNS(��Ÿ)';

COMMENT ON COLUMN brandInfo.bi_fax IS '�ѽ���ȣ';

COMMENT ON COLUMN brandInfo.bi_date IS '�����';

CREATE UNIQUE INDEX PK_brandInfo
	ON brandInfo (
		bm_no ASC
	);

ALTER TABLE brandInfo
	ADD
		CONSTRAINT PK_brandInfo
		PRIMARY KEY (
			bm_no
		);

/* ������ */
CREATE TABLE comments (
	cm_no VARCHAR2(50) NOT NULL, /* ��۹�ȣ */
	cm_content VARCHAR2(200), /* ��ϳ��� */
	cm_date DATE, /* ����� */
	cm_status VARCHAR2(5) /* ��� ���� */
);

COMMENT ON TABLE comments IS '������';

COMMENT ON COLUMN comments.cm_no IS '��۹�ȣ';

COMMENT ON COLUMN comments.cm_content IS '��ϳ���';

COMMENT ON COLUMN comments.cm_date IS '�����';

COMMENT ON COLUMN comments.cm_status IS '��� ����';

CREATE UNIQUE INDEX PK_comments
	ON comments (
		cm_no ASC
	);

ALTER TABLE comments
	ADD
		CONSTRAINT PK_comments
		PRIMARY KEY (
			cm_no
		);

/* ���� ��� */
CREATE TABLE askReview (
	ar_no VARCHAR2(50) NOT NULL, /* �亯��ȣ */
	ar_content VARCHAR2(200), /* ��۳��� */
	ar_date DATE, /* ����Ͻ� */
	ar_status VARCHAR2(5), /* ��� ���� */
	ar_id VARCHAR2(20) /* ����� */
);

COMMENT ON TABLE askReview IS '���� ���';

COMMENT ON COLUMN askReview.ar_no IS '�亯��ȣ';

COMMENT ON COLUMN askReview.ar_content IS '��۳���';

COMMENT ON COLUMN askReview.ar_date IS '����Ͻ�';

COMMENT ON COLUMN askReview.ar_status IS '��� ����';

COMMENT ON COLUMN askReview.ar_id IS '�����';

CREATE UNIQUE INDEX PK_askReview
	ON askReview (
		ar_no ASC
	);

ALTER TABLE askReview
	ADD
		CONSTRAINT PK_askReview
		PRIMARY KEY (
			ar_no
		);

/* ����Ʈ ���� */
CREATE TABLE pointAp (
	pa_no VARCHAR2(10) NOT NULL, /* ����Ʈ���� */
	pp_payno VARCHAR2(20) NOT NULL, /* ����Ʈ��ȣ */
	um_no VARCHAR2(50) NOT NULL, /* ȸ����ȣ */
	pa_point NUMBER(5), /* ����Ʈ */
	pa_date DATE /* ������ */
);

COMMENT ON TABLE pointAp IS '����Ʈ ����';

COMMENT ON COLUMN pointAp.pa_no IS '����Ʈ����';

COMMENT ON COLUMN pointAp.pp_payno IS '����Ʈ��ȣ';

COMMENT ON COLUMN pointAp.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN pointAp.pa_point IS '����Ʈ';

COMMENT ON COLUMN pointAp.pa_date IS '������';

CREATE UNIQUE INDEX PK_pointAp
	ON pointAp (
		pa_no ASC
	);

ALTER TABLE pointAp
	ADD
		CONSTRAINT PK_pointAp
		PRIMARY KEY (
			pa_no
		);

/* �������� */
CREATE TABLE couponAp (
	cpa_no VARCHAR2(10) NOT NULL, /* ���������ȣ */
	cp_cpno VARCHAR2(10), /* ������ȣ */
	um_no VARCHAR2(50), /* ȸ����ȣ */
	cpa_date DATE /* ������ */
);

COMMENT ON TABLE couponAp IS '��������';

COMMENT ON COLUMN couponAp.cpa_no IS '���������ȣ';

COMMENT ON COLUMN couponAp.cp_cpno IS '������ȣ';

COMMENT ON COLUMN couponAp.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN couponAp.cpa_date IS '������';

CREATE UNIQUE INDEX PK_couponAp
	ON couponAp (
		cpa_no ASC
	);

ALTER TABLE couponAp
	ADD
		CONSTRAINT PK_couponAp
		PRIMARY KEY (
			cpa_no
		);

/* User */
CREATE TABLE userMember (
	um_no VARCHAR2(50) NOT NULL, /* ȸ����ȣ */
	um_mid VARCHAR2(20), /* ȸ�����̵� */
	um_ars VARCHAR2(20) NOT NULL, /* �г��� */
	um_grade VARCHAR2(10), /* ȸ����� */
	um_password VARCHAR2(20) NOT NULL, /* ��й�ȣ */
	um_ymd VARCHAR2(20), /* ������� */
	um_gender VARCHAR2(10), /* ���� */
	um_addr VARCHAR2(100), /* �ּ� */
	um_email VARCHAR2(50), /* �̸��� */
	um_tel VARCHAR2(50), /* �޴���ȭ */
	um_snsch VARCHAR2(5), /* SNS���ſ��� */
	um_emailch VARCHAR2(5), /* �̸��ϼ��ſ��� */
	um_regdate DATE, /* ȸ�������Ͻ� */
	ms_grade VARCHAR2(10) /* ����ʵ�� */
);

COMMENT ON TABLE userMember IS 'User';

COMMENT ON COLUMN userMember.um_no IS 'ȸ����ȣ';

COMMENT ON COLUMN userMember.um_mid IS 'ȸ�����̵�';

COMMENT ON COLUMN userMember.um_ars IS '�г���';

COMMENT ON COLUMN userMember.um_grade IS 'ȸ�����';

COMMENT ON COLUMN userMember.um_password IS '��й�ȣ';

COMMENT ON COLUMN userMember.um_ymd IS '�������';

COMMENT ON COLUMN userMember.um_gender IS '����';

COMMENT ON COLUMN userMember.um_addr IS '�ּ�';

COMMENT ON COLUMN userMember.um_email IS '�̸���';

COMMENT ON COLUMN userMember.um_tel IS '�޴���ȭ';

COMMENT ON COLUMN userMember.um_snsch IS 'SNS���ſ���';

COMMENT ON COLUMN userMember.um_emailch IS '�̸��ϼ��ſ���';

COMMENT ON COLUMN userMember.um_regdate IS 'ȸ�������Ͻ�';

COMMENT ON COLUMN userMember.ms_grade IS '����ʵ��';

CREATE UNIQUE INDEX PK_userMember
	ON userMember (
		um_no ASC
	);

CREATE UNIQUE INDEX UIX_userMember
	ON userMember (
		um_mid ASC
	);

ALTER TABLE userMember
	ADD
		CONSTRAINT PK_userMember
		PRIMARY KEY (
			um_no
		);

ALTER TABLE userMember
	ADD
		CONSTRAINT UK_userMember
		UNIQUE (
			um_mid
		);

ALTER TABLE community
	ADD
		CONSTRAINT FK_userMember_TO_community
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE reply
	ADD
		CONSTRAINT FK_community_TO_reply
		FOREIGN KEY (
			cm_bdno
		)
		REFERENCES community (
			cm_bdno
		);

ALTER TABLE reply
	ADD
		CONSTRAINT FK_userMember_TO_reply
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_brandMember_TO_PRODUCT
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_productbuy_TO_buy
		FOREIGN KEY (
			o_odno
		)
		REFERENCES productbuy (
			o_odno
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_delivery_TO_buy
		FOREIGN KEY (
			d_dno
		)
		REFERENCES delivery (
			d_dno
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_pointAp_TO_buy
		FOREIGN KEY (
			pa_no
		)
		REFERENCES pointAp (
			pa_no
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_couponAp_TO_buy
		FOREIGN KEY (
			cpa_no
		)
		REFERENCES couponAp (
			cpa_no
		);

ALTER TABLE productbuy
	ADD
		CONSTRAINT FK_PRODUCT_TO_productbuy
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE productbuy
	ADD
		CONSTRAINT FK_userMember_TO_productbuy
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE productbuy
	ADD
		CONSTRAINT FK_basket_TO_productbuy
		FOREIGN KEY (
			s_no
		)
		REFERENCES basket (
			s_no
		);

ALTER TABLE code
	ADD
		CONSTRAINT FK_divisionCode_TO_code
		FOREIGN KEY (
			dc_pcno
		)
		REFERENCES divisionCode (
			dc_pcno
		);

ALTER TABLE code
	ADD
		CONSTRAINT FK_PRODUCT_TO_code
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE basket
	ADD
		CONSTRAINT FK_userMember_TO_basket
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE basket
	ADD
		CONSTRAINT FK_PRODUCT_TO_basket
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE keep
	ADD
		CONSTRAINT FK_userMember_TO_keep
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE keep
	ADD
		CONSTRAINT FK_PRODUCT_TO_keep
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE keep
	ADD
		CONSTRAINT FK_brandMember_TO_keep
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_PRODUCT_TO_review
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_userMember_TO_review
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_comments_TO_review
		FOREIGN KEY (
			cm_no
		)
		REFERENCES comments (
			cm_no
		);

ALTER TABLE md
	ADD
		CONSTRAINT FK_brandMember_TO_md
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE md
	ADD
		CONSTRAINT FK_PRODUCT_TO_md
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE ask
	ADD
		CONSTRAINT FK_userMember_TO_ask
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE ask
	ADD
		CONSTRAINT FK_askReview_TO_ask
		FOREIGN KEY (
			ar_no
		)
		REFERENCES askReview (
			ar_no
		);

ALTER TABLE ask
	ADD
		CONSTRAINT FK_brandMember_TO_ask
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE brandTheme
	ADD
		CONSTRAINT FK_brandMember_TO_brandTheme
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE brandInfo
	ADD
		CONSTRAINT FK_brandMember_TO_brandInfo
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE pointAp
	ADD
		CONSTRAINT FK_point_TO_pointAp
		FOREIGN KEY (
			pp_payno
		)
		REFERENCES point (
			pp_payno
		);

ALTER TABLE pointAp
	ADD
		CONSTRAINT FK_userMember_TO_pointAp
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE couponAp
	ADD
		CONSTRAINT FK_coupon_TO_couponAp
		FOREIGN KEY (
			cp_cpno
		)
		REFERENCES coupon (
			cp_cpno
		);

ALTER TABLE couponAp
	ADD
		CONSTRAINT FK_userMember_TO_couponAp
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE userMember
	ADD
		CONSTRAINT FK_membership_TO_userMember
		FOREIGN KEY (
			ms_grade
		)
		REFERENCES membership (
			ms_grade
		);