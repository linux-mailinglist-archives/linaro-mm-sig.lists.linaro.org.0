Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C2097BBC8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Sep 2024 13:55:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94A084482D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Sep 2024 11:55:19 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 9A3243F49E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Sep 2024 11:55:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=KS04BjHE;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a8b155b5e9eso940270866b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Sep 2024 04:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726660515; x=1727265315; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=9Z7RJn/OX3EE3dFLS31Zgm+/e3Z34XMTjZ23ojfB1qo=;
        b=KS04BjHE/CJrMIOuZl6FirXVLrFkoHIsp9hici97CQN8hoed+l1SARQUmSkTipebCd
         erZOPlwxwCXWnyy+cad+i7gbcKFrlQ8b/lEzKgcCyAW3a2fR5hZ4FHEPQY00LWT6YYi6
         +0ion69nIbccRlgC8i604Bx/fURtzu+cy1YBtplloxv3RapTC9kC8hdi8NilsFRk61Gm
         EBCgi1XGwlzBV0YVMNHgnNk2qyKloN8FhSEFbWXhParXecgEsQD+NHTOpnenl1EowN1L
         skiVgJQ2qaV3LsCTEElGNy12LftQGd3Lr7X2MaQmr+pObauruuuZJAmMmznas3ojvehK
         sHNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726660515; x=1727265315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Z7RJn/OX3EE3dFLS31Zgm+/e3Z34XMTjZ23ojfB1qo=;
        b=QqSFMfaWQPrAojCjInw/wztYcrcdoe1/+FhWwHgZjCi3t8qlxMJ/eV5NblDgueP1fh
         awPyEWS3KtA1xXIDG08jHkswItRpOAnrwppMN1PstHfG87NfxmMaRIJB/XBgJJBpPpov
         Y0GeenAcI3nbGKCXODf8uHLhZ25sYY47rbI+p78whjN+dYVppEvwghhIhTpjEfZaHeXj
         2Rzl4X8I1hsSHf7SkIH4aKbiwC6rnaaG/AZUJFUl0elEKdBXEdelgthFipKP1hRaVHAP
         GV4ydOq/xjkJ7eS00RQ+7Ad3ZYwh28m+jWQx6uFYQujzXvaQpBers9LeHXj7lreqie1G
         4tVg==
X-Forwarded-Encrypted: i=1; AJvYcCU4qr6IAM2Z2ecfX/Zl4lreBnHihhhlhkc0DGZ/MeaJuDkd8I9C6j2xDOluvIjdf0FCmRlNu+c0vSI4RhTP@lists.linaro.org
X-Gm-Message-State: AOJu0YwyWO0LNPaICRN0kNXe6y6Oj+NUDrz75DqMtGnVpx0U334If9xj
	m7JcJ1oZ4LfcOY4Kwu1rIGymq7Z4ZdwOwSxK7gX+jViZPhREiIQ/
X-Google-Smtp-Source: AGHT+IG4wFN94Yv0d+PnVl2amsN4Hf6nb3weUX0u/t36QbB7MLTU/OpMM61Hp0PIh0fhSX7L080PuQ==
X-Received: by 2002:a17:907:26c3:b0:a72:50f7:3c6f with SMTP id a640c23a62f3a-a9029432757mr2260981866b.14.1726660515060;
        Wed, 18 Sep 2024 04:55:15 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:155d:1400:17ae:e091:3b52:93d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90612df563sm575281966b.151.2024.09.18.04.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2024 04:55:14 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch,
	tursulin@ursulin.net,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 18 Sep 2024 13:55:12 +0200
Message-Id: <20240918115513.2716-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Bar: ----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9A3243F49E
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
Message-ID-Hash: DRB2E2PBRQ5MI7UBOJ4IZS6UQAHV6BNV
X-Message-ID-Hash: DRB2E2PBRQ5MI7UBOJ4IZS6UQAHV6BNV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf/dma-fence: remove unnecessary callbacks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DRB2E2PBRQ5MI7UBOJ4IZS6UQAHV6BNV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGZlbmNlX3ZhbHVlX3N0ciBhbmQgdGltZWxpbmVfdmFsdWVfc3RyIGNhbGxiYWNrcyB3ZXJl
IGp1c3QgYW4NCnVubmVjZXNzYXJ5IGFic3RyYWN0aW9uIGluIHRoZSBTVyBzeW5jIGltcGxlbWVu
dGF0aW9uLg0KDQpUaGUgb25seSBjYWxsZXIgb2YgdGhvc2UgY2FsbGJhY2tzIGFscmVhZHkga25l
dyB0aGF0IHRoZSBmZW5jZSBpbg0KcXVlc3Rpb25zIGlzIGEgdGltZWxpbmVfZmVuY2UuIFNvIHBy
aW50IHRoZSB2YWx1ZXMgZGlyZWN0bHkgaW5zdGVhZA0Kb2YgdXNpbmcgYSByZWRpcmVjdGlvbi4N
Cg0KQWRkaXRpb25hbCB0byB0aGF0IHJlbW92ZSB0aGUgaW1wbGVtZW50YXRpb25zIGZyb20gdmly
dGdwdSBhbmQgdmdlbS4NCkFzIGZhciBhcyBJIGNhbiBzZWUgdGhvc2Ugd2VyZSBuZXZlciB1c2Vk
IGluIHRoZSBmaXJzdCBwbGFjZS4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMu
YyAgICAgICAgICAgICAgfCAxNiAtLS0tLS0tLS0tLS0tLS0tDQogZHJpdmVycy9kbWEtYnVmL3N5
bmNfZGVidWcuYyAgICAgICAgICAgfCAyMSArKy0tLS0tLS0tLS0tLS0tLS0tLS0NCiBkcml2ZXJz
L2dwdS9kcm0vdmdlbS92Z2VtX2ZlbmNlLmMgICAgICB8IDE1IC0tLS0tLS0tLS0tLS0tLQ0KIGRy
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9mZW5jZS5jIHwgMTYgLS0tLS0tLS0tLS0tLS0t
LQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggICAgICAgICAgICAgIHwgMjEgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tDQogNSBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDg3IGRlbGV0
aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9zd19zeW5jLmMNCmluZGV4IGMzNTMwMjk3ODljZi4uZjdjZTRjNmI4YjhlIDEw
MDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KKysrIGIvZHJpdmVycy9kbWEt
YnVmL3N3X3N5bmMuYw0KQEAgLTE3OCwyMCArMTc4LDYgQEAgc3RhdGljIGJvb2wgdGltZWxpbmVf
ZmVuY2VfZW5hYmxlX3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiAJcmV0dXJu
IHRydWU7DQogfQ0KIA0KLXN0YXRpYyB2b2lkIHRpbWVsaW5lX2ZlbmNlX3ZhbHVlX3N0cihzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCi0JCQkJICAgIGNoYXIgKnN0ciwgaW50IHNpemUpDQotew0K
LQlzbnByaW50ZihzdHIsIHNpemUsICIlbGxkIiwgZmVuY2UtPnNlcW5vKTsNCi19DQotDQotc3Rh
dGljIHZvaWQgdGltZWxpbmVfZmVuY2VfdGltZWxpbmVfdmFsdWVfc3RyKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLA0KLQkJCQkJICAgICBjaGFyICpzdHIsIGludCBzaXplKQ0KLXsNCi0Jc3RydWN0
IHN5bmNfdGltZWxpbmUgKnBhcmVudCA9IGRtYV9mZW5jZV9wYXJlbnQoZmVuY2UpOw0KLQ0KLQlz
bnByaW50ZihzdHIsIHNpemUsICIlZCIsIHBhcmVudC0+dmFsdWUpOw0KLX0NCi0NCiBzdGF0aWMg
dm9pZCB0aW1lbGluZV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Us
IGt0aW1lX3QgZGVhZGxpbmUpDQogew0KIAlzdHJ1Y3Qgc3luY19wdCAqcHQgPSBkbWFfZmVuY2Vf
dG9fc3luY19wdChmZW5jZSk7DQpAQCAtMjE0LDggKzIwMCw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGluZV9mZW5jZV9vcHMgPSB7DQogCS5lbmFibGVfc2lnbmFs
aW5nID0gdGltZWxpbmVfZmVuY2VfZW5hYmxlX3NpZ25hbGluZywNCiAJLnNpZ25hbGVkID0gdGlt
ZWxpbmVfZmVuY2Vfc2lnbmFsZWQsDQogCS5yZWxlYXNlID0gdGltZWxpbmVfZmVuY2VfcmVsZWFz
ZSwNCi0JLmZlbmNlX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3ZhbHVlX3N0ciwNCi0JLnRp
bWVsaW5lX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3RpbWVsaW5lX3ZhbHVlX3N0ciwNCiAJ
LnNldF9kZWFkbGluZSA9IHRpbWVsaW5lX2ZlbmNlX3NldF9kZWFkbGluZSwNCiB9Ow0KIA0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMgYi9kcml2ZXJzL2RtYS1idWYv
c3luY19kZWJ1Zy5jDQppbmRleCAyMzdiY2UyMWQxZTcuLjI3MGRhYWU3ZDg5YSAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9z
eW5jX2RlYnVnLmMNCkBAIC04MiwyNSArODIsOCBAQCBzdGF0aWMgdm9pZCBzeW5jX3ByaW50X2Zl
bmNlKHN0cnVjdCBzZXFfZmlsZSAqcywNCiAJCXNlcV9wcmludGYocywgIkAlbGxkLiUwOWxkIiwg
KHM2NCl0czY0LnR2X3NlYywgdHM2NC50dl9uc2VjKTsNCiAJfQ0KIA0KLQlpZiAoZmVuY2UtPm9w
cy0+dGltZWxpbmVfdmFsdWVfc3RyICYmDQotCQlmZW5jZS0+b3BzLT5mZW5jZV92YWx1ZV9zdHIp
IHsNCi0JCWNoYXIgdmFsdWVbNjRdOw0KLQkJYm9vbCBzdWNjZXNzOw0KLQ0KLQkJZmVuY2UtPm9w
cy0+ZmVuY2VfdmFsdWVfc3RyKGZlbmNlLCB2YWx1ZSwgc2l6ZW9mKHZhbHVlKSk7DQotCQlzdWNj
ZXNzID0gc3RybGVuKHZhbHVlKTsNCi0NCi0JCWlmIChzdWNjZXNzKSB7DQotCQkJc2VxX3ByaW50
ZihzLCAiOiAlcyIsIHZhbHVlKTsNCi0NCi0JCQlmZW5jZS0+b3BzLT50aW1lbGluZV92YWx1ZV9z
dHIoZmVuY2UsIHZhbHVlLA0KLQkJCQkJCSAgICAgICBzaXplb2YodmFsdWUpKTsNCi0NCi0JCQlp
ZiAoc3RybGVuKHZhbHVlKSkNCi0JCQkJc2VxX3ByaW50ZihzLCAiIC8gJXMiLCB2YWx1ZSk7DQot
CQl9DQotCX0NCi0NCisJc2VxX3ByaW50ZihzLCAiOiAlbGxkIiwgZmVuY2UtPnNlcW5vKTsNCisJ
c2VxX3ByaW50ZihzLCAiIC8gJWQiLCBwYXJlbnQtPnZhbHVlKTsNCiAJc2VxX3B1dGMocywgJ1xu
Jyk7DQogfQ0KIA0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZmVuY2Uu
YyBiL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZmVuY2UuYw0KaW5kZXggZTE1NzU0MTc4Mzk1
Li41Mjk4ZDk5NWZhYTcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Zl
bmNlLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZmVuY2UuYw0KQEAgLTUzLDI1
ICs1MywxMCBAQCBzdGF0aWMgdm9pZCB2Z2VtX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5j
ZSAqYmFzZSkNCiAJZG1hX2ZlbmNlX2ZyZWUoJmZlbmNlLT5iYXNlKTsNCiB9DQogDQotc3RhdGlj
IHZvaWQgdmdlbV9mZW5jZV92YWx1ZV9zdHIoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNoYXIg
KnN0ciwgaW50IHNpemUpDQotew0KLQlzbnByaW50ZihzdHIsIHNpemUsICIlbGx1IiwgZmVuY2Ut
PnNlcW5vKTsNCi19DQotDQotc3RhdGljIHZvaWQgdmdlbV9mZW5jZV90aW1lbGluZV92YWx1ZV9z
dHIoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNoYXIgKnN0ciwNCi0JCQkJCSAgaW50IHNpemUp
DQotew0KLQlzbnByaW50ZihzdHIsIHNpemUsICIlbGx1IiwNCi0JCSBkbWFfZmVuY2VfaXNfc2ln
bmFsZWQoZmVuY2UpID8gZmVuY2UtPnNlcW5vIDogMCk7DQotfQ0KLQ0KIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZG1hX2ZlbmNlX29wcyB2Z2VtX2ZlbmNlX29wcyA9IHsNCiAJLmdldF9kcml2ZXJfbmFt
ZSA9IHZnZW1fZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KIAkuZ2V0X3RpbWVsaW5lX25hbWUgPSB2
Z2VtX2ZlbmNlX2dldF90aW1lbGluZV9uYW1lLA0KIAkucmVsZWFzZSA9IHZnZW1fZmVuY2VfcmVs
ZWFzZSwNCi0NCi0JLmZlbmNlX3ZhbHVlX3N0ciA9IHZnZW1fZmVuY2VfdmFsdWVfc3RyLA0KLQku
dGltZWxpbmVfdmFsdWVfc3RyID0gdmdlbV9mZW5jZV90aW1lbGluZV92YWx1ZV9zdHIsDQogfTsN
CiANCiBzdGF0aWMgdm9pZCB2Z2VtX2ZlbmNlX3RpbWVvdXQoc3RydWN0IHRpbWVyX2xpc3QgKnQp
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2ZlbmNlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfZmVuY2UuYw0KaW5kZXggZjI4MzU3ZGJkZTM1
Li40NGMxZDhlZjNjNGQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRn
cHVfZmVuY2UuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2ZlbmNlLmMN
CkBAIC00OSwyNiArNDksMTAgQEAgc3RhdGljIGJvb2wgdmlydGlvX2dwdV9mZW5jZV9zaWduYWxl
ZChzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KIAlyZXR1cm4gZmFsc2U7DQogfQ0KIA0KLXN0YXRpYyB2
b2lkIHZpcnRpb19ncHVfZmVuY2VfdmFsdWVfc3RyKHN0cnVjdCBkbWFfZmVuY2UgKmYsIGNoYXIg
KnN0ciwgaW50IHNpemUpDQotew0KLQlzbnByaW50ZihzdHIsIHNpemUsICJbJWxsdSwgJWxsdV0i
LCBmLT5jb250ZXh0LCBmLT5zZXFubyk7DQotfQ0KLQ0KLXN0YXRpYyB2b2lkIHZpcnRpb19ncHVf
dGltZWxpbmVfdmFsdWVfc3RyKHN0cnVjdCBkbWFfZmVuY2UgKmYsIGNoYXIgKnN0ciwNCi0JCQkJ
CSAgaW50IHNpemUpDQotew0KLQlzdHJ1Y3QgdmlydGlvX2dwdV9mZW5jZSAqZmVuY2UgPSB0b192
aXJ0aW9fZ3B1X2ZlbmNlKGYpOw0KLQ0KLQlzbnByaW50ZihzdHIsIHNpemUsICIlbGx1IiwNCi0J
CSAodTY0KWF0b21pYzY0X3JlYWQoJmZlbmNlLT5kcnYtPmxhc3RfZmVuY2VfaWQpKTsNCi19DQot
DQogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHZpcnRpb19ncHVfZmVuY2Vfb3Bz
ID0gew0KIAkuZ2V0X2RyaXZlcl9uYW1lICAgICA9IHZpcnRpb19ncHVfZ2V0X2RyaXZlcl9uYW1l
LA0KIAkuZ2V0X3RpbWVsaW5lX25hbWUgICA9IHZpcnRpb19ncHVfZ2V0X3RpbWVsaW5lX25hbWUs
DQogCS5zaWduYWxlZCAgICAgICAgICAgID0gdmlydGlvX2dwdV9mZW5jZV9zaWduYWxlZCwNCi0J
LmZlbmNlX3ZhbHVlX3N0ciAgICAgPSB2aXJ0aW9fZ3B1X2ZlbmNlX3ZhbHVlX3N0ciwNCi0JLnRp
bWVsaW5lX3ZhbHVlX3N0ciAgPSB2aXJ0aW9fZ3B1X3RpbWVsaW5lX3ZhbHVlX3N0ciwNCiB9Ow0K
IA0KIHN0cnVjdCB2aXJ0aW9fZ3B1X2ZlbmNlICp2aXJ0aW9fZ3B1X2ZlbmNlX2FsbG9jKHN0cnVj
dCB2aXJ0aW9fZ3B1X2RldmljZSAqdmdkZXYsDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IGU3YWQ4MTk5NjJl
My4uY2Y5MWNhZTZlMzBmIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0K
KysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTIzOCwyNyArMjM4LDYgQEAgc3Ry
dWN0IGRtYV9mZW5jZV9vcHMgew0KIAkgKi8NCiAJdm9pZCAoKnJlbGVhc2UpKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlKTsNCiANCi0JLyoqDQotCSAqIEBmZW5jZV92YWx1ZV9zdHI6DQotCSAqDQot
CSAqIENhbGxiYWNrIHRvIGZpbGwgaW4gZnJlZS1mb3JtIGRlYnVnIGluZm8gc3BlY2lmaWMgdG8g
dGhpcyBmZW5jZSwgbGlrZQ0KLQkgKiB0aGUgc2VxdWVuY2UgbnVtYmVyLg0KLQkgKg0KLQkgKiBU
aGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLg0KLQkgKi8NCi0Jdm9pZCAoKmZlbmNlX3ZhbHVlX3N0
cikoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNoYXIgKnN0ciwgaW50IHNpemUpOw0KLQ0KLQkv
KioNCi0JICogQHRpbWVsaW5lX3ZhbHVlX3N0cjoNCi0JICoNCi0JICogRmlsbHMgaW4gdGhlIGN1
cnJlbnQgdmFsdWUgb2YgdGhlIHRpbWVsaW5lIGFzIGEgc3RyaW5nLCBsaWtlIHRoZQ0KLQkgKiBz
ZXF1ZW5jZSBudW1iZXIuIE5vdGUgdGhhdCB0aGUgc3BlY2lmaWMgZmVuY2UgcGFzc2VkIHRvIHRo
aXMgZnVuY3Rpb24NCi0JICogc2hvdWxkIG5vdCBtYXR0ZXIsIGRyaXZlcnMgc2hvdWxkIG9ubHkg
dXNlIGl0IHRvIGxvb2sgdXAgdGhlDQotCSAqIGNvcnJlc3BvbmRpbmcgdGltZWxpbmUgc3RydWN0
dXJlcy4NCi0JICovDQotCXZvaWQgKCp0aW1lbGluZV92YWx1ZV9zdHIpKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLA0KLQkJCQkgICBjaGFyICpzdHIsIGludCBzaXplKTsNCi0NCiAJLyoqDQogCSAq
IEBzZXRfZGVhZGxpbmU6DQogCSAqDQotLSANCjIuMzQuMQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
