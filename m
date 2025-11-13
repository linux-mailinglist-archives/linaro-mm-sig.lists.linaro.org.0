Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D3AC58126
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:54:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB0B53F880
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:54:29 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id 2C0943F811
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=LuqbLNCR;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64198771a9bso1667486a12.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045617; x=1763650417; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TKX9weevS+NcJ407xi5DYySlL9DlXey2iX34pOiJQdM=;
        b=LuqbLNCREsRgfirvAT/MHOYAdLZ2RmWoBfHTFcBaSnBIg+zw9mMLaJoU3um1eJ4xdH
         eguTJTPZGcPj0Z5mx6CZCxmNmUeOTRRvaG2yJIw8d9lnA3ijXf5UmLMOet6I+T8gCdiJ
         47N5Z6ibx2GO0PLD5ZhvSOYyJN+3aQL7r2nBtUYaQRif9Lb693UP02GilqAZ5NUNWOv9
         imlXbWF5a/uQUKk8P2UDMn0MXrcsGt+2OOkfpxXc+m1a7k/aEPnbZMLIwmEKNRz8Xd2w
         VNqMgNGgLbiYVlqMcnY1+bnV7VTBCI3IJo13CbEMxRNdAfLKENnnGer4kqnL5sz2xsKr
         V6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045617; x=1763650417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TKX9weevS+NcJ407xi5DYySlL9DlXey2iX34pOiJQdM=;
        b=eEHkfAIw8kRs5KO60eLuSByBS5aAyTFE7/vTOySBAGzVAqx9Fr3IrLLU9Pm8Cgx4T9
         lGkqzXK0MDVCC0YV3wTbnQwP1wVzqQ7XlQ2ubwunjM6l1g4lhOT1quv7hBP4gRiAgLSN
         jlR2G6LjDH1Ng5fvPdeZdYDEF6JXZc3B+FXDaGTV0ImUGbZMMNeMuZwtflCYdSWw/fFe
         KMNwv96+gsUz8kRfzRrN7WMLNr30VUr7Det0p2H68OwOReMB13FuZBrx7mRTYLc/YbJ/
         vNWPcwHx8OJSMQxQyApvhqn+tn1+VzQ2CSjrVog/c3GIY7al2uFkX1VB2Q9pW5HQjsnK
         f9FA==
X-Forwarded-Encrypted: i=1; AJvYcCXdEtrWSL0q//52L9WTbk+AHShhpHubPTfmpxQgFjYxalpGYba0XdTAECDOI5MX2VdPQRLGgq/26fnjDUSh@lists.linaro.org
X-Gm-Message-State: AOJu0YzsNFx6xgnnWXTbr5IOhRoyylEJYCzub3xozlI5Rp8mN+DI15Nh
	oRM7POAzPw9rIiBiZXQOuoshCApQTm16kLDEhIm/PLmeQUUTgPkWnGyN
X-Gm-Gg: ASbGncvHhEtqnUzTS7DxYBEyotiD8UV2s8bDQrLGDwkNIuUChgXAjwqL072nMT5hxg1
	LC3x8jAITVOaMDBVfpYDuQRZPw6W1CYAu7xTONbbvHEryuKutRmRWl13I2KGsnF0ySuQ94Mw0B2
	XgY8FlJ3xgDHIf8VfNMSAnp8W58I8TjDpSouRxMMH63W4dvgIqbV08ubz9XKcU7/nE46J++SGbC
	nTTOYqbowkPDsagnrOXck9hbfFmj2ddlKDv6tnXmDAnSeyGCQ2sR+XZzvq69JT63+0JrzuzI1xv
	lXmgXcCzW6amEJ0xrT5dc+jVF/xvQlkINS4j6iMDA8udekYcGiR5iryk8L0VRgWyb3TNO4Apwhr
	Eri9S1MbZ0Wi2uVF1ca/bn+6PiC8LHqcdluyDpD7ABgvUvpkep6+ZRo2wcTcfP6sKuC/IsCQj3T
	CTeI/pw8q1uDkoByyRGGVfvA==
X-Google-Smtp-Source: AGHT+IGXKsqirjAlMp585gkAkiQJO7pFlXJ2rNvLaF2oiytnabvZYB83EV9YYgjEuGG19e6QmbGeaQ==
X-Received: by 2002:a17:906:a207:b0:b73:39c3:b4f with SMTP id a640c23a62f3a-b7339c30d46mr374756366b.50.1763045617052;
        Thu, 13 Nov 2025 06:53:37 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:36 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:40 +0100
Message-ID: <20251113145332.16805-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2C0943F811
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.50:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: JIIU7VTL5PHGJ7OEU4OWRFXAWB5YVY3B
X-Message-ID-Hash: JIIU7VTL5PHGJ7OEU4OWRFXAWB5YVY3B
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 03/18] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JIIU7VTL5PHGJ7OEU4OWRFXAWB5YVY3B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IGJhY2tlbmQgb3BzIGlzIHNwZWNpZmll
ZCBpdCBpcyBwb3NzaWJsZQ0KdG8gbGV0IHRoZSBkbWFfZmVuY2UgbGl2ZSBvbiBpbmRlcGVuZGVu
dGx5IG9mIHRoZSBtb2R1bGUgd2hvIGlzc3VlZCBpdC4NCg0KVGhpcyBtYWtlcyBpdCBwb3NzaWJs
ZSB0byB1bmxvYWQgZHJpdmVycyBhbmQgb25seSB3YWl0IGZvciBhbGwgdGhlaXINCmZlbmNlcyB0
byBzaWduYWwuDQoNCnYyOiBmaXggdHlwbyBpbiBjb21tZW50DQoNClNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDE2ICsrKysrKysrKysrKy0tLS0NCiBpbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oICAgfCAgNCArKy0tDQogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCBlYzIxYmU5YjA4OWEu
LjcwNzQzNDdmNTA2ZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAtMzc0LDYgKzM3NCwxNCBAQCBp
bnQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlLA0KIAkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiAN
CisJLyoNCisJICogV2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IG9wZXJhdGlvbiBp
cyBzcGVjaWZpZWQgc2V0IHRoZSBvcHMNCisJICogcG9pbnRlciB0byBOVUxMIHRvIGFsbG93IHRo
ZSBmZW5jZSBzdHJ1Y3R1cmUgdG8gYmVjb21lIGluZGVwZW5kZW50DQorCSAqIGZyb20gd2hvIG9y
aWdpbmFsbHkgaXNzdWVkIGl0Lg0KKwkgKi8NCisJaWYgKCFmZW5jZS0+b3BzLT5yZWxlYXNlICYm
ICFmZW5jZS0+b3BzLT53YWl0KQ0KKwkJUkNVX0lOSVRfUE9JTlRFUihmZW5jZS0+b3BzLCBOVUxM
KTsNCisNCiAJLyogU3Rhc2ggdGhlIGNiX2xpc3QgYmVmb3JlIHJlcGxhY2luZyBpdCB3aXRoIHRo
ZSB0aW1lc3RhbXAgKi8NCiAJbGlzdF9yZXBsYWNlKCZmZW5jZS0+Y2JfbGlzdCwgJmNiX2xpc3Qp
Ow0KIA0KQEAgLTUxMyw3ICs1MjEsNyBAQCBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIsIHNpZ25lZCBsb25nIHRpbWVvdXQpDQogCXJjdV9y
ZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KIAl0cmFj
ZV9kbWFfZmVuY2Vfd2FpdF9zdGFydChmZW5jZSk7DQotCWlmIChvcHMtPndhaXQpIHsNCisJaWYg
KG9wcyAmJiBvcHMtPndhaXQpIHsNCiAJCS8qDQogCQkgKiBJbXBsZW1lbnRpbmcgdGhlIHdhaXQg
b3BzIGlzIGRlcHJlY2F0ZWQgYW5kIG5vdCBzdXBwb3J0ZWQgZm9yDQogCQkgKiBpc3N1ZXIgaW5k
ZXBlbmRlbnQgZmVuY2VzLCBzbyBpdCBpcyBvayB0byB1c2UgdGhlIG9wcyBvdXRzaWRlDQpAQCAt
NTc4LDcgKzU4Niw3IEBAIHZvaWQgZG1hX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYp
DQogCX0NCiANCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KLQlpZiAob3Bz
LT5yZWxlYXNlKQ0KKwlpZiAob3BzICYmIG9wcy0+cmVsZWFzZSkNCiAJCW9wcy0+cmVsZWFzZShm
ZW5jZSk7DQogCWVsc2UNCiAJCWRtYV9mZW5jZV9mcmVlKGZlbmNlKTsNCkBAIC02MTQsNyArNjIy
LDcgQEAgc3RhdGljIGJvb2wgX19kbWFfZmVuY2VfZW5hYmxlX3NpZ25hbGluZyhzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSkNCiANCiAJcmN1X3JlYWRfbG9jaygpOw0KIAlvcHMgPSByY3VfZGVyZWZl
cmVuY2UoZmVuY2UtPm9wcyk7DQotCWlmICghd2FzX3NldCAmJiBvcHMtPmVuYWJsZV9zaWduYWxp
bmcpIHsNCisJaWYgKCF3YXNfc2V0ICYmIG9wcyAmJiBvcHMtPmVuYWJsZV9zaWduYWxpbmcpIHsN
CiAJCXRyYWNlX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsKGZlbmNlKTsNCiANCiAJCWlmICghb3Bz
LT5lbmFibGVfc2lnbmFsaW5nKGZlbmNlKSkgew0KQEAgLTEwMDAsNyArMTAwOCw3IEBAIHZvaWQg
ZG1hX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBk
ZWFkbGluZSkNCiANCiAJcmN1X3JlYWRfbG9jaygpOw0KIAlvcHMgPSByY3VfZGVyZWZlcmVuY2Uo
ZmVuY2UtPm9wcyk7DQotCWlmIChvcHMtPnNldF9kZWFkbGluZSAmJiAhZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkKGZlbmNlKSkNCisJaWYgKG9wcyAmJiBvcHMtPnNldF9kZWFkbGluZSAmJiAhZG1hX2Zl
bmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkNCiAJCW9wcy0+c2V0X2RlYWRsaW5lKGZlbmNlLCBkZWFk
bGluZSk7DQogCXJjdV9yZWFkX3VubG9jaygpOw0KIH0NCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KaW5kZXggNzdmMDc3
MzVmNTU2Li5lYjU3YmNjODcxMmYgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQpAQCAtNDM2LDcgKzQzNiw3IEBA
IGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQog
DQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMp
Ow0KLQlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNlKSkgew0KKwlpZiAo
b3BzICYmIG9wcy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCiAJCXJjdV9y
ZWFkX3VubG9jaygpOw0KIAkJZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoZmVuY2UpOw0KIAkJcmV0
dXJuIHRydWU7DQpAQCAtNDcyLDcgKzQ3Miw3IEBAIGRtYV9mZW5jZV9pc19zaWduYWxlZChzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiANCiAJcmN1X3JlYWRfbG9jaygpOw0KIAlvcHMgPSByY3Vf
ZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQotCWlmIChvcHMtPnNpZ25hbGVkICYmIG9wcy0+c2ln
bmFsZWQoZmVuY2UpKSB7DQorCWlmIChvcHMgJiYgb3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25h
bGVkKGZlbmNlKSkgew0KIAkJcmN1X3JlYWRfdW5sb2NrKCk7DQogCQlkbWFfZmVuY2Vfc2lnbmFs
KGZlbmNlKTsNCiAJCXJldHVybiB0cnVlOw0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
