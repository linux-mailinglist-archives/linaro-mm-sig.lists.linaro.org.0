Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EAEA78491
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Apr 2025 00:17:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AC4844756
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 22:17:04 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id 34F914461B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 22:16:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TS0OsNpH;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.179 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2295d78b45cso31449955ad.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Apr 2025 15:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743545808; x=1744150608; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6pjJFrDt3l5lA2Y5cy0IcLmKsiR6lTrZ7yPV2lCZbZg=;
        b=TS0OsNpHfkuxHW5yPXn2Dau55h7LQkJE1j9jwC+EezhoBYQJxU66kMCQO9Oy5y3yx+
         UlQn6lSqakOrMYjnDttX1rC3VrU3elQFx4vZUGI+xsa//hw+FZekNQhxJZuFMJ0rizoE
         PuXC69DpI377crYbeu4Bnvwqm9JQZ7yaDVnzB5N/OUkBFNVqIhwrIR26Jnf342dvKhBA
         tE4WDnRMI325HA9Jcup6k1iEUvB7LF0X2dxtrfPBgSwR2GD2+GdU7hfnC3523NFiu112
         Z2V7O8GlOJG2ANBigF4G7Uh8QtvRYCQH0ahRCLUKtOMJb3lmUK+Hi0guo2Oi4GGW3u20
         CuZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743545808; x=1744150608;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6pjJFrDt3l5lA2Y5cy0IcLmKsiR6lTrZ7yPV2lCZbZg=;
        b=ewlkQxxvgdTwfIuXjU2g2aKpiBLWw2HYSONiZdWoKjRViT5YQdMFd39rD5mlqqQ4oZ
         Q2IFccgjbfQwwmj8SdMsGZCSXGXm7BVW8/AC/FY/H1oQqjEBmB5/Rpb5KuY40R/gH5X8
         yiAynNfJHNkRJ86BwPnCZJ+WRI8bjSqQp7kmXFp8LivnXwyMIllnd+i1ByszAIRtI9ME
         z6+ATdeYYVpHnqOacoNFUU5K+IqQLrAjo2lZa5qCnIskDL9P/B+ONrnW+SYtGzq1QSEI
         7r2b76HV54lUnQOaZVo5vjUuTpYvpdqeOLkWfgIFtsgQq7ayCI61JQsGy6lxd6r9DqLw
         7I2w==
X-Forwarded-Encrypted: i=1; AJvYcCWd+WesY4rlTynSyKGJ24OuYf3hj82idgL1BNx4fRZ5NQxfvIrRRCtxWgsLm2jiYgC7jJ3+nBZ9PRFnnGko@lists.linaro.org
X-Gm-Message-State: AOJu0Yyzl10fAYVrOrF8tNbbsSW4BAUxKIOcTAMdo05bS92EaV83x+RO
	7W5ZM5BZHPfECRCMycCR1gal9QsxVM9uZv7t+Ydz1izPyCA/zGeU
X-Gm-Gg: ASbGnctWydW2DsEufsl616T/yBNBZ0MP93eH0dMOXfZX6an2pgM/YyVDhILvhe52e79
	85NbIOiJe50BXTYsWaKoaWGvFIBfhridRjmHi40j3UzP8Ph8VndOU3OpXBkW+B7hYpQS5cFnRzY
	tEeICPzVfOSsV36aerngP/6xOko5gR+HaUwCMcm9RY0CB74Dy0vsTTdtuDPJ2ep5UAeE/3LIGeJ
	S5vILMcfJ+hkEXWirIKO8LGJbvkROAmK/6Ka7jxXZOJzRTKLWjn9izjODqUzISBFtD47XFsRxf3
	6HfDy0fqUwdNjUhLoiwyYw4tDU1KnC0OrcYavxLbapoT9Z1TsL0vL+PFtDL7vqdXSVOb+5JvaUm
	ABgykbsetSsuxGHSN1AU=
X-Google-Smtp-Source: AGHT+IFWsM/vg8gTEwV01NxefY3BYdtce+TTnANxhcuLyKtYcd30tGt/Vxio0MWSb+uhR603BU132w==
X-Received: by 2002:a17:903:11d2:b0:220:c86d:d7eb with SMTP id d9443c01a7336-2292f9e529dmr241352415ad.36.1743545808126;
        Tue, 01 Apr 2025 15:16:48 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1cf14csm94451805ad.137.2025.04.01.15.16.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 15:16:47 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  1 Apr 2025 15:16:43 -0700
Message-ID: <20250401221643.87504-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 34F914461B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.179:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.214.179:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: DLHET6MUSBSIAXWXYHRWPDTM25EF3Y2S
X-Message-ID-Hash: DLHET6MUSBSIAXWXYHRWPDTM25EF3Y2S
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DLHET6MUSBSIAXWXYHRWPDTM25EF3Y2S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpBZGQgc3VwcG9ydCBm
b3IgZXhwb3J0aW5nIGEgZG1hX2ZlbmNlIGZkIGZvciBhIHNwZWNpZmljIHBvaW50IG9uIGENCnRp
bWVsaW5lLiAgVGhpcyBpcyBuZWVkZWQgZm9yIHZ0ZXN0L3ZwaXBlWzFdWzJdIHRvIGltcGxlbWVu
dCB0aW1lbGluZQ0Kc3luY29iaiBzdXBwb3J0LCBhcyBpdCBuZWVkcyBhIHdheSB0byB0dXJuIGEg
cG9pbnQgb24gYSB0aW1lbGluZSBiYWNrDQppbnRvIGEgZG1hX2ZlbmNlIGZkLiAgSXQgYWxzbyBj
bG9zZXMgYW4gb2RkIG9taXNzaW9uIGZyb20gdGhlIHN5bmNvYmoNClVBUEkuDQoNClsxXSBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMvMzM0
MzMNClsyXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdmlyZ2wvdmlyZ2xyZW5kZXJl
ci8tL21lcmdlX3JlcXVlc3RzLzgwNQ0KDQp2MjogQWRkIERSTV9TWU5DT0JKX0hBTkRMRV9UT19G
RF9GTEFHU19USU1FTElORQ0KdjM6IEFkZCB1bnN0YWdlZCB1YWJpIGhlYWRlciBodW5rDQp2NDog
QWxzbyBoYW5kbGUgSU1QT1JUX1NZTkNfRklMRSBjYXNlDQp2NTogQWRkcmVzcyBjb21tZW50cyBm
cm9tIERtaXRyeQ0KdjY6IGNoZWNrcGF0Y2gucGwgbml0cw0Kdjc6IEFkZCBjaGVjayBmb3IgRFJJ
VkVSX1NZTkNPQkpfVElNRUxJTkUNCg0KU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xh
cmtAY2hyb21pdW0ub3JnPg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5v
c2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2Jq
LmMgfCA1MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQ0KIGluY2x1ZGUvdWFw
aS9kcm0vZHJtLmggICAgICAgIHwgIDQgKysrDQogMiBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRp
b25zKCspLCAxMCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fc3luY29iai5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCmluZGV4IDRmMmFi
OGE3YjUwZi4uM2U0MTQ2MWViOWQ2IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9z
eW5jb2JqLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQpAQCAtNzQxLDcg
Kzc0MSw3IEBAIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfZmRfdG9faGFuZGxlKHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZV9wcml2YXRlLA0KIH0NCiANCiBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2ltcG9y
dF9zeW5jX2ZpbGVfZmVuY2Uoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQotCQkJCQkg
ICAgICBpbnQgZmQsIGludCBoYW5kbGUpDQorCQkJCQkgICAgICBpbnQgZmQsIGludCBoYW5kbGUs
IHU2NCBwb2ludCkNCiB7DQogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gc3luY19maWxlX2dl
dF9mZW5jZShmZCk7DQogCXN0cnVjdCBkcm1fc3luY29iaiAqc3luY29iajsNCkBAIC03NTUsMTQg
Kzc1NSwyNCBAQCBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2ltcG9ydF9zeW5jX2ZpbGVfZmVuY2Uo
c3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQogCQlyZXR1cm4gLUVOT0VOVDsNCiAJfQ0K
IA0KLQlkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZlbmNlKTsNCisJaWYgKHBv
aW50KSB7DQorCQlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IGRtYV9mZW5jZV9jaGFp
bl9hbGxvYygpOw0KKw0KKwkJaWYgKCFjaGFpbikNCisJCQlyZXR1cm4gLUVOT01FTTsNCisNCisJ
CWRybV9zeW5jb2JqX2FkZF9wb2ludChzeW5jb2JqLCBjaGFpbiwgZmVuY2UsIHBvaW50KTsNCisJ
fSBlbHNlIHsNCisJCWRybV9zeW5jb2JqX3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVuY2UpOw0K
Kwl9DQorDQogCWRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KIAlkcm1fc3luY29ial9wdXQoc3luY29i
aik7DQogCXJldHVybiAwOw0KIH0NCiANCiBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2V4cG9ydF9z
eW5jX2ZpbGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQotCQkJCQlpbnQgaGFuZGxl
LCBpbnQgKnBfZmQpDQorCQkJCQlpbnQgaGFuZGxlLCB1NjQgcG9pbnQsIGludCAqcF9mZCkNCiB7
DQogCWludCByZXQ7DQogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KQEAgLTc3Miw3ICs3ODIs
NyBAQCBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoc3RydWN0IGRybV9m
aWxlICpmaWxlX3ByaXZhdGUsDQogCWlmIChmZCA8IDApDQogCQlyZXR1cm4gZmQ7DQogDQotCXJl
dCA9IGRybV9zeW5jb2JqX2ZpbmRfZmVuY2UoZmlsZV9wcml2YXRlLCBoYW5kbGUsIDAsIDAsICZm
ZW5jZSk7DQorCXJldCA9IGRybV9zeW5jb2JqX2ZpbmRfZmVuY2UoZmlsZV9wcml2YXRlLCBoYW5k
bGUsIHBvaW50LCAwLCAmZmVuY2UpOw0KIAlpZiAocmV0KQ0KIAkJZ290byBlcnJfcHV0X2ZkOw0K
IA0KQEAgLTg2OSw2ICs4NzksOSBAQCBkcm1fc3luY29ial9oYW5kbGVfdG9fZmRfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCiAJCQkJICAgc3RydWN0IGRybV9maWxl
ICpmaWxlX3ByaXZhdGUpDQogew0KIAlzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFuZGxlICphcmdzID0g
ZGF0YTsNCisJdW5zaWduZWQgaW50IHZhbGlkX2ZsYWdzID0gRFJNX1NZTkNPQkpfSEFORExFX1RP
X0ZEX0ZMQUdTX1RJTUVMSU5FIHwNCisJCQkJICAgRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZM
QUdTX0VYUE9SVF9TWU5DX0ZJTEU7DQorCXU2NCBwb2ludCA9IDA7DQogDQogCWlmICghZHJtX2Nv
cmVfY2hlY2tfZmVhdHVyZShkZXYsIERSSVZFUl9TWU5DT0JKKSkNCiAJCXJldHVybiAtRU9QTk9U
U1VQUDsNCkBAIC04NzYsMTMgKzg4OSwyMSBAQCBkcm1fc3luY29ial9oYW5kbGVfdG9fZmRfaW9j
dGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCiAJaWYgKGFyZ3MtPnBhZCkN
CiAJCXJldHVybiAtRUlOVkFMOw0KIA0KLQlpZiAoYXJncy0+ZmxhZ3MgIT0gMCAmJg0KLQkgICAg
YXJncy0+ZmxhZ3MgIT0gRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX0VYUE9SVF9TWU5D
X0ZJTEUpDQorCWlmIChhcmdzLT5mbGFncyAmIH52YWxpZF9mbGFncykNCiAJCXJldHVybiAtRUlO
VkFMOw0KIA0KKwlpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxB
R1NfVElNRUxJTkUpIHsNCisJCWlmICghZHJtX2NvcmVfY2hlY2tfZmVhdHVyZShkZXYsIERSSVZF
Ul9TWU5DT0JKX1RJTUVMSU5FKSkNCisJCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQorCQlwb2ludCA9
IGFyZ3MtPnBvaW50Ow0KKwl9DQorDQogCWlmIChhcmdzLT5mbGFncyAmIERSTV9TWU5DT0JKX0hB
TkRMRV9UT19GRF9GTEFHU19FWFBPUlRfU1lOQ19GSUxFKQ0KIAkJcmV0dXJuIGRybV9zeW5jb2Jq
X2V4cG9ydF9zeW5jX2ZpbGUoZmlsZV9wcml2YXRlLCBhcmdzLT5oYW5kbGUsDQotCQkJCQkJICAg
ICZhcmdzLT5mZCk7DQorCQkJCQkJICAgIHBvaW50LCAmYXJncy0+ZmQpOw0KKw0KKwlpZiAoYXJn
cy0+cG9pbnQpDQorCQlyZXR1cm4gLUVJTlZBTDsNCiANCiAJcmV0dXJuIGRybV9zeW5jb2JqX2hh
bmRsZV90b19mZChmaWxlX3ByaXZhdGUsIGFyZ3MtPmhhbmRsZSwNCiAJCQkJCSZhcmdzLT5mZCk7
DQpAQCAtODkzLDYgKzkxNCw5IEBAIGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZV9pb2N0bChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KIAkJCQkgICBzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbGVfcHJpdmF0ZSkNCiB7DQogCXN0cnVjdCBkcm1fc3luY29ial9oYW5kbGUgKmFyZ3MgPSBk
YXRhOw0KKwl1bnNpZ25lZCBpbnQgdmFsaWRfZmxhZ3MgPSBEUk1fU1lOQ09CSl9GRF9UT19IQU5E
TEVfRkxBR1NfVElNRUxJTkUgfA0KKwkJCQkgICBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxB
R1NfSU1QT1JUX1NZTkNfRklMRTsNCisJdTY0IHBvaW50ID0gMDsNCiANCiAJaWYgKCFkcm1fY29y
ZV9jaGVja19mZWF0dXJlKGRldiwgRFJJVkVSX1NZTkNPQkopKQ0KIAkJcmV0dXJuIC1FT1BOT1RT
VVBQOw0KQEAgLTkwMCwxNCArOTI0LDIzIEBAIGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZV9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KIAlpZiAoYXJncy0+cGFkKQ0K
IAkJcmV0dXJuIC1FSU5WQUw7DQogDQotCWlmIChhcmdzLT5mbGFncyAhPSAwICYmDQotCSAgICBh
cmdzLT5mbGFncyAhPSBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxBR1NfSU1QT1JUX1NZTkNf
RklMRSkNCisJaWYgKGFyZ3MtPmZsYWdzICYgfnZhbGlkX2ZsYWdzKQ0KIAkJcmV0dXJuIC1FSU5W
QUw7DQogDQorCWlmIChhcmdzLT5mbGFncyAmIERSTV9TWU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFH
U19USU1FTElORSkgew0KKwkJaWYgKCFkcm1fY29yZV9jaGVja19mZWF0dXJlKGRldiwgRFJJVkVS
X1NZTkNPQkpfVElNRUxJTkUpKQ0KKwkJCXJldHVybiAtRU9QTk9UU1VQUDsNCisJCXBvaW50ID0g
YXJncy0+cG9pbnQ7DQorCX0NCisNCiAJaWYgKGFyZ3MtPmZsYWdzICYgRFJNX1NZTkNPQkpfRkRf
VE9fSEFORExFX0ZMQUdTX0lNUE9SVF9TWU5DX0ZJTEUpDQogCQlyZXR1cm4gZHJtX3N5bmNvYmpf
aW1wb3J0X3N5bmNfZmlsZV9mZW5jZShmaWxlX3ByaXZhdGUsDQogCQkJCQkJCSAgYXJncy0+ZmQs
DQotCQkJCQkJCSAgYXJncy0+aGFuZGxlKTsNCisJCQkJCQkJICBhcmdzLT5oYW5kbGUsDQorCQkJ
CQkJCSAgcG9pbnQpOw0KKw0KKwlpZiAoYXJncy0+cG9pbnQpDQorCQlyZXR1cm4gLUVJTlZBTDsN
CiANCiAJcmV0dXJuIGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZShmaWxlX3ByaXZhdGUsIGFyZ3Mt
PmZkLA0KIAkJCQkJJmFyZ3MtPmhhbmRsZSk7DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2Ry
bS9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtLmgNCmluZGV4IDdmYmEzN2I5NDQwMS4uZTYz
YTcxZDNjNjA3IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm0uaA0KKysrIGIvaW5j
bHVkZS91YXBpL2RybS9kcm0uaA0KQEAgLTkwNSwxMyArOTA1LDE3IEBAIHN0cnVjdCBkcm1fc3lu
Y29ial9kZXN0cm95IHsNCiB9Ow0KIA0KICNkZWZpbmUgRFJNX1NZTkNPQkpfRkRfVE9fSEFORExF
X0ZMQUdTX0lNUE9SVF9TWU5DX0ZJTEUgKDEgPDwgMCkNCisjZGVmaW5lIERSTV9TWU5DT0JKX0ZE
X1RPX0hBTkRMRV9GTEFHU19USU1FTElORSAgICAgICAgICgxIDw8IDEpDQogI2RlZmluZSBEUk1f
U1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRSAoMSA8PCAwKQ0KKyNk
ZWZpbmUgRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX1RJTUVMSU5FICAgICAgICAgKDEg
PDwgMSkNCiBzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFuZGxlIHsNCiAJX191MzIgaGFuZGxlOw0KIAlf
X3UzMiBmbGFnczsNCiANCiAJX19zMzIgZmQ7DQogCV9fdTMyIHBhZDsNCisNCisJX191NjQgcG9p
bnQ7DQogfTsNCiANCiBzdHJ1Y3QgZHJtX3N5bmNvYmpfdHJhbnNmZXIgew0KLS0gDQoyLjQ5LjAN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
