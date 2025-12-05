Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A78DCA7AF0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 05 Dec 2025 14:06:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7ECC40137
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Dec 2025 13:06:39 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id 389A53F953
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 13:06:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ZNxDZepd;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b47f662a0so1632435f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Dec 2025 05:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764939966; x=1765544766; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=DVfNsN7bh3iXgq3RxSUScjij5i+aMl+hRz9FbAuxQEw=;
        b=ZNxDZepdCoYeegltve9K1swBLF8kA1d3pE+XtmPGsIg9t9iLd4vjczpBA2Jls0wQKL
         VOgar7bm7QnH/t5biUyVqhzBMwS3coWLTr3XizHrVBtraTOG9PifLVpUus0izzNJ+Mq5
         Rim+VGsPur5V+dgoDgh1H1QuFlhejx1euLVp6dtPPp7eq53JEyRUj2xlPRWoWYY3x4dq
         Eyf+OHdJ9aAXOqCXG9iJMULTkU9PYshc5ohUPoQEkejvXuQrOdUf9eXuPR2oPiJ9FefX
         J557IkKDpeFFO0DgOJwG+FhbZ/iB03cGFlcRwsfDTwg09irK+7QN2vagCrvTk1I2wqXH
         6zhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764939966; x=1765544766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DVfNsN7bh3iXgq3RxSUScjij5i+aMl+hRz9FbAuxQEw=;
        b=jAlEdyny/huTlHhWFYBw0q98vkcjzdMnjsEVphE8AUjvgBRmXzhndGNsPyRxJccDdZ
         DtXHw1yepZNrxgicjX2sab39YRByrh1CvbsLppMBQRiCTUXBouLH+3pjaXPEF3BZEsvv
         q2qSTZKFxmRWBe+Ymv1nw1j2J96K48buixREmV3c/ur06lnIjK6R4ZmVM3aUROcaBLVJ
         IqUzwRC9ZpAuGBh0IGz3QiBCpqpaM3thotJ8v5ot+q102ROUpauH/E4sKTSLAl9RgqQQ
         JO/7hg3IUQUzI9w6HnyldeeNi7N7/FPYD5rQcNfL2z5+NUIR8KroSNFD2mJ+j0hzwxwE
         Ucbg==
X-Forwarded-Encrypted: i=1; AJvYcCWeq4kA8biSV4AfPXb8erXMrjzuqOC0kiu1e6ROreoaUCrvoh9nClX05dEpVnZbY75pxBBWWGr6P1EVPjAZ@lists.linaro.org
X-Gm-Message-State: AOJu0Yz+iQMo0q9Mk8Fgzjx//LmHP64bLCqbBA9lZVnUkF/DNRJsXFxa
	wLyfE3fmTe9Gdc8m2CRMmg4KOl61+tp3h2R48g7Ef3U8yV6HmWh4AV1Iw93pwySC
X-Gm-Gg: ASbGnctVWjZjbPPy/xR7go3draJUBU0mBQQIckyCKTqRqNaQOpzz0mvtMN3N8a0+uLw
	PE3uCpAL9SR6w7TM73Sv1RR4ma3Pm9aFQUUL2WSvUMRS8qvy9UNtfmqsmlMAU2ZRjiGbO3/uGPa
	oAGGYe33QQe5pqdjc6+6r+3P8jeq7YmmHlU6710uCOJTgEQo9pRvHSSUwueYCv0Qs8P/6AZF8Wi
	JNT/AD0bOpeIODXl9OmXcdSBD1TP2EIbFgquBWjozQLbQESBtzxtQIIsPEXxp5HwVlZh/nIFGcU
	yBUcJW7Z5Uvv0bP7wu4HJ5iGxUZV13ZRTXaLYNH/ERf8InmHO+L6tSQlh0ZK6Br0m+hHPf2FVIk
	hisds1OAzTDNE3m3wC3tshJ6AanSqW833W5osWMz2PxPcRPi02XezHrGZAvEiAKEDJ+M+59ybUN
	2sbrCYwjXFzEOWRk4mXanY92NC
X-Google-Smtp-Source: AGHT+IFtBVw4148B28ROMfiQyJ3if3zDxlmObifagEb/T3wEwB3hhJuIh0e0cx/amEPTzjkSpqoyJg==
X-Received: by 2002:a05:6000:2283:b0:42b:3455:e4a1 with SMTP id ffacd0b85a97d-42f78875c06mr8126338f8f.15.1764939965931;
        Fri, 05 Dec 2025 05:06:05 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15a5:6d00:a241:8e44:3926:5306])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d353f8bsm8914491f8f.43.2025.12.05.05.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 05:06:05 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: matthew.auld@intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	simona.vetter@ffwll.ch,
	michael.j.ruhl@intel.com
Date: Fri,  5 Dec 2025 14:06:03 +0100
Message-ID: <20251205130604.1582-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.42:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:15a5:6d00:a241:8e44:3926:5306:server fail,209.85.221.42:query timed out];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:mid,amd.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 389A53F953
X-Spamd-Bar: ----
Message-ID-Hash: 5NAC7RG73GXHXRU7M5KKGCITTQDOX456
X-Message-ID-Hash: 5NAC7RG73GXHXRU7M5KKGCITTQDOX456
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf: improve sg_table debugging hack v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5NAC7RG73GXHXRU7M5KKGCITTQDOX456/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBkZWJ1Z2dpbmcgaGFjayBpcyBpbXBvcnRhbnQgdG8gZW5mb3JjZSB0aGUgcnVsZSB0aGF0
IGltcG9ydGVycw0Kc2hvdWxkICpuZXZlciogdG91Y2ggdGhlIHVuZGVybHlpbmcgc3RydWN0IHBh
Z2Ugb2YgdGhlIGV4cG9ydGVyLg0KDQpJbnN0ZWFkIG9mIGp1c3QgbWFuZ2xpbmcgdGhlIHBhZ2Ug
bGluayBjcmVhdGUgYSBjb3B5IG9mIHRoZSBzZ190YWJsZQ0KYnV0IG9ubHkgY29weSBvdmVyIHRo
ZSBETUEgYWRkcmVzc2VzIGFuZCBub3QgdGhlIHBhZ2VzLg0KDQpUaGlzIHdpbGwgY2F1c2UgYSBO
VUxMIHBvaW50ZXIgZGUtcmVmZXJlbmNlIGlmIHRoZSBpbXBvcnRlciB0cmllcyB0bw0KdG91Y2gg
dGhlIHN0cnVjdCBwYWdlLiBTdGlsbCBxdWl0ZSBhIGhhY2sgYnV0IHRoaXMgYXQgbGVhc3QgYWxs
b3dzIHRoZQ0KZXhwb3J0ZXIgdG8gcHJvcGVybHkga2VlcHMgaXQncyBzZ190YWJsZSBpbnRhY3Qg
d2hpbGUgYWxsb3dpbmcgdGhlDQpETUEtYnVmIG1haW50YWluZXIgdG8gZmluZCBhbmQgZml4IG1p
c2JlaGF2aW5nIGltcG9ydGVycyBhbmQgZmluYWxseQ0Kc3dpdGNoIG92ZXIgdG8gdXNpbmcgYSBk
aWZmZXJlbnQgZGF0YSBzdHJ1Y3R1cmUgaW4gdGhlIGZ1dHVyZS4NCg0KdjI6IGltcHJvdmUgdGhl
IGhhY2sgZnVydGhlciBieSB1c2luZyBhIHdyYXBwZXIgc3RydWN0dXJlIGFuZCBleHBsYWluaW5n
DQp0aGUgYmFja2dyb3VuZCBhIGJpdCBtb3JlIGluIHRoZSBjb21taXQgbWVzc2FnZS4NCnYzOiBm
aXggc29tZSB3aGl0ZXNwYWNlIGlzc3VlcywgdXNlIHNnX2Fzc2lnbl9wYWdlKCkuDQoNClNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJl
dmlld2VkLWJ5OiBNaWNoYWVsIEouIFJ1aGwgPG1pY2hhZWwuai5ydWhsQGludGVsLmNvbT4gKHYx
KQ0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDc0ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCsp
LCAxNCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCAyMzA1YmIyY2MxZjEuLjk0NGY0
MTAzYjVjYyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC0zNSw2ICszNSwxMiBAQA0KIA0KICNpbmNsdWRl
ICJkbWEtYnVmLXN5c2ZzLXN0YXRzLmgiDQogDQorLyogV3JhcHBlciB0byBoaWRlIHRoZSBzZ190
YWJsZSBwYWdlIGxpbmsgZnJvbSB0aGUgaW1wb3J0ZXIgKi8NCitzdHJ1Y3QgZG1hX2J1Zl9zZ190
YWJsZV93cmFwcGVyIHsNCisJc3RydWN0IHNnX3RhYmxlICpvcmlnaW5hbDsNCisJc3RydWN0IHNn
X3RhYmxlIHdyYXBwZXI7DQorfTsNCisNCiBzdGF0aWMgaW5saW5lIGludCBpc19kbWFfYnVmX2Zp
bGUoc3RydWN0IGZpbGUgKik7DQogDQogc3RhdGljIERFRklORV9NVVRFWChkbWFidWZfbGlzdF9t
dXRleCk7DQpAQCAtODI4LDIxICs4MzQsNTkgQEAgdm9pZCBkbWFfYnVmX3B1dChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmKQ0KIH0NCiBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3B1dCwgIkRN
QV9CVUYiKTsNCiANCi1zdGF0aWMgdm9pZCBtYW5nbGVfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxl
ICpzZ190YWJsZSkNCitzdGF0aWMgaW50IGRtYV9idWZfbWFuZ2xlX3NnX3RhYmxlKHN0cnVjdCBz
Z190YWJsZSAqKnNnX3RhYmxlKQ0KIHsNCi0jaWZkZWYgQ09ORklHX0RNQUJVRl9ERUJVRw0KLQlp
bnQgaTsNCi0Jc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCi0NCi0JLyogVG8gY2F0Y2ggYWJ1c2Ug
b2YgdGhlIHVuZGVybHlpbmcgc3RydWN0IHBhZ2UgYnkgaW1wb3J0ZXJzIG1peA0KLQkgKiB1cCB0
aGUgYml0cywgYnV0IHRha2UgY2FyZSB0byBwcmVzZXJ2ZSB0aGUgbG93IFNHXyBiaXRzIHRvDQot
CSAqIG5vdCBjb3JydXB0IHRoZSBzZ3QuIFRoZSBtaXhpbmcgaXMgdW5kb25lIG9uIHVubWFwDQot
CSAqIGJlZm9yZSBwYXNzaW5nIHRoZSBzZ3QgYmFjayB0byB0aGUgZXhwb3J0ZXIuDQorCXN0cnVj
dCBzY2F0dGVybGlzdCAqdG9fc2csICpmcm9tX3NnOw0KKwlzdHJ1Y3Qgc2dfdGFibGUgKmZyb20g
PSAqc2dfdGFibGU7DQorCXN0cnVjdCBkbWFfYnVmX3NnX3RhYmxlX3dyYXBwZXIgKnRvOw0KKwlp
bnQgaSwgcmV0Ow0KKw0KKwlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9ERUJVRykpDQor
CQlyZXR1cm4gMDsNCisNCisJLyoNCisJICogVG8gY2F0Y2ggYWJ1c2Ugb2YgdGhlIHVuZGVybHlp
bmcgc3RydWN0IHBhZ2UgYnkgaW1wb3J0ZXJzIGNvcHkgdGhlDQorCSAqIHNnX3RhYmxlIHdpdGhv
dXQgY29weWluZyB0aGUgcGFnZV9saW5rIGFuZCBnaXZlIG9ubHkgdGhlIGNvcHkgYmFjayB0bw0K
KwkgKiB0aGUgaW1wb3J0ZXIuDQogCSAqLw0KLQlmb3JfZWFjaF9zZ3RhYmxlX3NnKHNnX3RhYmxl
LCBzZywgaSkNCi0JCXNnLT5wYWdlX2xpbmsgXj0gfjB4ZmZVTDsNCi0jZW5kaWYNCisJdG8gPSBr
emFsbG9jKHNpemVvZigqdG8pLCBHRlBfS0VSTkVMKTsNCisJaWYgKCF0bykNCisJCXJldHVybiAt
RU5PTUVNOw0KKw0KKwlyZXQgPSBzZ19hbGxvY190YWJsZSgmdG8tPndyYXBwZXIsIGZyb20tPm5l
bnRzLCBHRlBfS0VSTkVMKTsNCisJaWYgKHJldCkNCisJCWdvdG8gZnJlZV90bzsNCisNCisJdG9f
c2cgPSB0by0+d3JhcHBlci5zZ2w7DQorCWZvcl9lYWNoX3NndGFibGVfZG1hX3NnKGZyb20sIGZy
b21fc2csIGkpIHsNCisJCXRvX3NnLT5vZmZzZXQgPSAwOw0KKwkJdG9fc2ctPmxlbmd0aCA9IDA7
DQorCQlzZ19hc3NpZ25fcGFnZSh0b19zZywgTlVMTCk7DQorCQlzZ19kbWFfYWRkcmVzcyh0b19z
ZykgPSBzZ19kbWFfYWRkcmVzcyhmcm9tX3NnKTsNCisJCXNnX2RtYV9sZW4odG9fc2cpID0gc2df
ZG1hX2xlbihmcm9tX3NnKTsNCisJCXRvX3NnID0gc2dfbmV4dCh0b19zZyk7DQorCX0NCiANCisJ
dG8tPm9yaWdpbmFsID0gZnJvbTsNCisJKnNnX3RhYmxlID0gJnRvLT53cmFwcGVyOw0KKwlyZXR1
cm4gMDsNCisNCitmcmVlX3RvOg0KKwlrZnJlZSh0byk7DQorCXJldHVybiByZXQ7DQorfQ0KKw0K
K3N0YXRpYyB2b2lkIGRtYV9idWZfZGVtYW5nbGVfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxlICoq
c2dfdGFibGUpDQorew0KKwlzdHJ1Y3QgZG1hX2J1Zl9zZ190YWJsZV93cmFwcGVyICpjb3B5Ow0K
Kw0KKwlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9ERUJVRykpDQorCQlyZXR1cm47DQor
DQorCWNvcHkgPSBjb250YWluZXJfb2YoKnNnX3RhYmxlLCB0eXBlb2YoKmNvcHkpLCB3cmFwcGVy
KTsNCisJKnNnX3RhYmxlID0gY29weS0+b3JpZ2luYWw7DQorCXNnX2ZyZWVfdGFibGUoJmNvcHkt
PndyYXBwZXIpOw0KKwlrZnJlZShjb3B5KTsNCiB9DQogDQogc3RhdGljIGlubGluZSBib29sDQpA
QCAtMTEzOSw3ICsxMTgzLDkgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2ht
ZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCiAJCWlmIChyZXQgPCAwKQ0K
IAkJCWdvdG8gZXJyb3JfdW5tYXA7DQogCX0NCi0JbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsN
CisJcmV0ID0gZG1hX2J1Zl9tYW5nbGVfc2dfdGFibGUoJnNnX3RhYmxlKTsNCisJaWYgKHJldCkN
CisJCWdvdG8gZXJyb3JfdW5tYXA7DQogDQogCWlmIChJU19FTkFCTEVEKENPTkZJR19ETUFfQVBJ
X0RFQlVHKSkgew0KIAkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCkBAIC0xMjIwLDcgKzEyNjYs
NyBAQCB2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2gsDQogDQogCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5y
ZXN2KTsNCiANCi0JbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsNCisJZG1hX2J1Zl9kZW1hbmds
ZV9zZ190YWJsZSgmc2dfdGFibGUpOw0KIAlhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFf
YnVmKGF0dGFjaCwgc2dfdGFibGUsIGRpcmVjdGlvbik7DQogDQogCWlmIChkbWFfYnVmX3Bpbl9v
bl9tYXAoYXR0YWNoKSkNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
