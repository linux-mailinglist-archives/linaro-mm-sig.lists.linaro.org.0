Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9786FD19D8C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 16:23:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0CFD3F61F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 15:23:05 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 3584D3F776
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 15:21:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ndOHdKrk;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47a95efd2ceso65657745e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 07:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317693; x=1768922493; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kh4R4NoxTN6O8ZSVOnnoGZ4WFA/y/AkSF1Pah5nfBcw=;
        b=ndOHdKrkvlaCrJXdKa83Q/d9Ah0v5oU6lEvrBMghcG2h5GpPX8t7VgnhOQKiJvvKDa
         cZsXylV1yqJ2Om8dg3Ql+BEy02YAMgP/6bcnI8XZyCsq+5dtkOLDErVfLieauxvDKNJe
         6X2wa3Dp4BgcJUQPaV0to66z0ZXfo7xq4K+9opWX6C8uNAAifpsV9DTcSxLhxktHHEik
         2ulmC4PmSWyNWjWOGyEH/PKNlHrRkxJ+ICARWwaiXdSA0duvg2qh9w4lYkNFPij5nv/K
         35pvdsYeQBQgNSvj4Uv4nl+bnZObw0MADLuoefNlYqiCKPDWFGDysGbCQld83FNgFDqG
         MTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317693; x=1768922493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kh4R4NoxTN6O8ZSVOnnoGZ4WFA/y/AkSF1Pah5nfBcw=;
        b=bMXmcl1GOyvtYFoyKYNBj6VxOPbteITXI9Gq0PFthuYsfRH0KsrRWgc2kB5eB6QCd7
         k9TDvFtRh9QTVg/NDWZAfegUP8vRv3A68mVVph80V4NxwbfPmU/pOytXnQMe1qpkrA7i
         f73qoxntWjtlIBL/vruJl2/UH4wkC+6K+hyXaWbsbPbj678vM1Cy7Zn3SMGGwYY3VSF0
         iVghisiBL5aL+WAKG0JfCOlyycF1eo2JE8wshoXCkS3Z/pHp8DjpxO2u9le3LthDTvVG
         eg8UpPwKJQkfEjKvRh1W9TfM0WPSs0QZYY7JzH+HXTupmSeQ1Gj9Lj7s/2NOCrqRVHB0
         /9bA==
X-Forwarded-Encrypted: i=1; AJvYcCWj1HxqCDsm6WS3a54/bGauW4vmn7q5eoJjJHxhUfi3vIS4Zf75WqPGN7Cjo9UJvjsY40KLh5N3q/6liXiK@lists.linaro.org
X-Gm-Message-State: AOJu0YxQpfvvRDFajBje2tfPlRsWl7gH5X//9nxYDBhEiM7Vf5LzbDNw
	siOixLRbxwMoDukzmXdw2T/8bsv+ujcuDmanimtbi8EVAdAUk2PKw5H7
X-Gm-Gg: AY/fxX6tlnFEVJK84FbtZGjQVC296DDt1GILG1BgZQaO81YhEd5U/DgDoCuHVHDofyU
	/gT/lyjNrY4BGgYEvdHFejRXDlncmns5b3nkyhelza1uG9DCjSnfBThf22EQVXRBWVJUdc5c+SK
	XBUdsDDglYHEDsBxSMQH00IMCiFmd21J1cWgWopo95tlz9TxNN7sc3cBDox3yLyoFjZU/5yRxJ6
	C7yLq9cBlz1AQb5yH6OQRd8kOfwX+8ZJ/E9/tmInLioB+5/+KERT1/Qqbv38M7gslMLyMDBkcr1
	Ryy4r0CogA6cv5FlMnEQkU5NsTwvT6nXdC1ODVK/qeRsdmeglpcsylOu18y+BSiEkZ3ELtmbyMv
	e2++zMyTAqG+dImRgaWIWsPnos4I6yLPDRa3B68hZkz11toU5tRUYV26AhTuC+YQchAhChaiLB3
	0+CDXliWS2n1HKY66Cx0/G3Rc=
X-Google-Smtp-Source: AGHT+IG26RRKK9tLOnfr1P5UGjcJasahHwhydtAyRSG76VM1hC4wKiopoeuRNUmlAj7q228fzPB29g==
X-Received: by 2002:a05:600c:4ed3:b0:47d:6140:3284 with SMTP id 5b1f17b1804b1-47d88fc1df4mr232085885e9.37.1768317693073;
        Tue, 13 Jan 2026 07:21:33 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:141c:9800:1651:dfa:9e48:25d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm129518405e9.11.2026.01.13.07.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:21:32 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 16:16:13 +0100
Message-ID: <20260113152125.47380-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113152125.47380-1-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 3584D3F776
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	DNSWL_BLOCKED(0.00)[2a00:e180:141c:9800:1651:dfa:9e48:25d5:received,209.85.128.52:from];
	NEURAL_HAM(-0.00)[-0.999];
	URIBL_BLOCKED(0.00)[amd.com:email,amd.com:mid];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UM4DFYVZSRT7LHV5U3NNLYR6N4ACK7GU
X-Message-ID-Hash: UM4DFYVZSRT7LHV5U3NNLYR6N4ACK7GU
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 06/10] dma-buf/selftests: test RCU ops and inline lock v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UM4DFYVZSRT7LHV5U3NNLYR6N4ACK7GU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHJvcCB0aGUgbW9ja19mZW5jZSBhbmQgdGhlIGttZW1fY2FjaGUsIGluc3RlYWQgdXNlIHRoZSBp
bmxpbmUgbG9jayBhbmQNCnRlc3QgaWYgdGhlIG9wcyBhcmUgcHJvcGVybHkgZHJvcHBlZCBhZnRl
ciBzaWduYWxpbmcuDQoNCnYyOiBtb3ZlIHRoZSBSQ1UgY2hlY2sgdG8gdGhlIGVuZCBvZiB0aGUg
dGVzdA0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgfCA0NCArKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQppbmRleCA1
ZDBkOWFiYzZlMjEuLjBkOWQ1MjRkNzliNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQpAQCAt
MTQsNDMgKzE0LDI2IEBADQogDQogI2luY2x1ZGUgInNlbGZ0ZXN0LmgiDQogDQotc3RhdGljIHN0
cnVjdCBrbWVtX2NhY2hlICpzbGFiX2ZlbmNlczsNCi0NCi1zdGF0aWMgc3RydWN0IG1vY2tfZmVu
Y2Ugew0KLQlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQotCXN0cnVjdCBzcGlubG9jayBsb2NrOw0K
LX0gKnRvX21vY2tfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikgew0KLQlyZXR1cm4gY29udGFp
bmVyX29mKGYsIHN0cnVjdCBtb2NrX2ZlbmNlLCBiYXNlKTsNCi19DQotDQogc3RhdGljIGNvbnN0
IGNoYXIgKm1vY2tfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KIHsNCiAJcmV0dXJuICJtb2Nr
IjsNCiB9DQogDQotc3RhdGljIHZvaWQgbW9ja19mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVu
Y2UgKmYpDQotew0KLQlrbWVtX2NhY2hlX2ZyZWUoc2xhYl9mZW5jZXMsIHRvX21vY2tfZmVuY2Uo
ZikpOw0KLX0NCi0NCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgbW9ja19vcHMg
PSB7DQogCS5nZXRfZHJpdmVyX25hbWUgPSBtb2NrX25hbWUsDQogCS5nZXRfdGltZWxpbmVfbmFt
ZSA9IG1vY2tfbmFtZSwNCi0JLnJlbGVhc2UgPSBtb2NrX2ZlbmNlX3JlbGVhc2UsDQogfTsNCiAN
CiBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqbW9ja19mZW5jZSh2b2lkKQ0KIHsNCi0Jc3RydWN0
IG1vY2tfZmVuY2UgKmY7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmY7DQogDQotCWYgPSBrbWVtX2Nh
Y2hlX2FsbG9jKHNsYWJfZmVuY2VzLCBHRlBfS0VSTkVMKTsNCisJZiA9IGttYWxsb2Moc2l6ZW9m
KCpmKSwgR0ZQX0tFUk5FTCk7DQogCWlmICghZikNCiAJCXJldHVybiBOVUxMOw0KIA0KLQlzcGlu
X2xvY2tfaW5pdCgmZi0+bG9jayk7DQotCWRtYV9mZW5jZV9pbml0KCZmLT5iYXNlLCAmbW9ja19v
cHMsICZmLT5sb2NrLCAwLCAwKTsNCi0NCi0JcmV0dXJuICZmLT5iYXNlOw0KKwlkbWFfZmVuY2Vf
aW5pdChmLCAmbW9ja19vcHMsIE5VTEwsIDAsIDApOw0KKwlyZXR1cm4gZjsNCiB9DQogDQogc3Rh
dGljIGludCBzYW5pdHljaGVjayh2b2lkICphcmcpDQpAQCAtMTAwLDYgKzgzLDExIEBAIHN0YXRp
YyBpbnQgdGVzdF9zaWduYWxpbmcodm9pZCAqYXJnKQ0KIAkJZ290byBlcnJfZnJlZTsNCiAJfQ0K
IA0KKwlpZiAocmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmLT5vcHMsIHRydWUpKSB7DQorCQlw
cl9lcnIoIkZlbmNlIG9wcyBub3QgY2xlYXJlZCBvbiBzaWduYWxcbiIpOw0KKwkJZ290byBlcnJf
ZnJlZTsNCisJfQ0KKw0KIAllcnIgPSAwOw0KIGVycl9mcmVlOg0KIAlkbWFfZmVuY2VfcHV0KGYp
Ow0KQEAgLTU0MCwxOSArNTI4LDcgQEAgaW50IGRtYV9mZW5jZSh2b2lkKQ0KIAkJU1VCVEVTVCh0
ZXN0X3N0dWIpLA0KIAkJU1VCVEVTVChyYWNlX3NpZ25hbF9jYWxsYmFjayksDQogCX07DQotCWlu
dCByZXQ7DQogDQogCXByX2luZm8oInNpemVvZihkbWFfZmVuY2UpPSV6dVxuIiwgc2l6ZW9mKHN0
cnVjdCBkbWFfZmVuY2UpKTsNCi0NCi0Jc2xhYl9mZW5jZXMgPSBLTUVNX0NBQ0hFKG1vY2tfZmVu
Y2UsDQotCQkJCSBTTEFCX1RZUEVTQUZFX0JZX1JDVSB8DQotCQkJCSBTTEFCX0hXQ0FDSEVfQUxJ
R04pOw0KLQlpZiAoIXNsYWJfZmVuY2VzKQ0KLQkJcmV0dXJuIC1FTk9NRU07DQotDQotCXJldCA9
IHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsNCi0NCi0Ja21lbV9jYWNoZV9kZXN0cm95KHNsYWJfZmVu
Y2VzKTsNCi0NCi0JcmV0dXJuIHJldDsNCisJcmV0dXJuIHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsN
CiB9DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
