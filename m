Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C05A3118D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Feb 2025 17:33:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A48F42501
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Feb 2025 16:33:09 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id B6AE944A21
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Feb 2025 16:31:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=LAecuPhr;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5de5a853090so7395008a12.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Feb 2025 08:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739291478; x=1739896278; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MxattA3QjQC0bUvmIjtYp3+w3vcxByTR3qghr1+qO3E=;
        b=LAecuPhrrLh7QobHzGklmnwXLyxEjveX0WysRdL6CTJGS1pe97jpqUvfpwf2xYfPv/
         F81z2ipxvEwWKIh6LT3SJHZ25rkrH7PSkSjYX/PTDwawvdRqMuBWW4RQIE8aZlja0Q4c
         w+HaBM5Dos+o6BIl/QSeUboWSE2Yd0ORBjBfkheQvcE41x96P4/lc6q7RaLofhp/PIOg
         Hw6GLnjqWMt25gzatP6bKQf0ZWa7PQ9rYmaURuEf1aaoEp7vN/M+9NNYrbI4bTuWjHHI
         NWUsMlqqJx2imhVe9ILDGL614pdPjeXAMHf2qd2BHe435z3fTUvN0BXJ/PSlz6/BaTmQ
         yGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739291478; x=1739896278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MxattA3QjQC0bUvmIjtYp3+w3vcxByTR3qghr1+qO3E=;
        b=TPvyhrnyzE0twsiHKT/mx8Ta6VUiO/7S1tr8m74hH92Do7dGIZ1kd7fjs/iP31EsFI
         kNXzapZBZBcR0vWnG3ymv+rE+tK8Ut2vLnLdmJ3QW3HPGiJcVfQDKpcEowUZ8w66WsZQ
         33v/zZMbTTAPS1+Z8LDiByqLNE82KMa2CVu/UT/X+dATxwd0E006uwy4NPhz83LcG0nZ
         N54GcceqPg98YbtDVPBh6m7FX8Ta1ZRRwInUUSdYSaJza2fJdnWDaukBSvnmKmNfZMDo
         80gyDIGv94FsEXKpIwCRIYBrUWDXcc+JSmZghLKWYDh9DNDZrOwqLjdNLiuWcaODPSP1
         wGQQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+O6l6pJlntvnH1jXKHxQWsxxNcLF31uJtK8f+6YD8nJLmn4gdhFO8Mrvf1pP4cN71ipmFGCy2gatS9bnK@lists.linaro.org
X-Gm-Message-State: AOJu0Yzmi3+AeWiUOmMX0vTEZSnpK6qln3fPGEMre073vLP4ZpwTr9B9
	PjawKHD3JltBStl53eIFzEEL6zexbWKnY6wiapfxO6xx8xx1Xrtc
X-Gm-Gg: ASbGncuYiX7891o/yz9KOgRnZBuA6v+aybC6qiNKfbmvY0ahs2dOLC2UraoFYdMWxS8
	8VoGHRG6ohq7vx8vHA1fw4NHhH8ms1JSkaUaATdDVRtlDnGc5RVTOrwCE9xnnVBJFtZrWvIgOBh
	CwwhuV+AR6Mka9ktKbwAk/g8Vboj/thFydK+FpEoBai2KZgQhz6c0K1haSge9IePRMyr8wTbh6J
	usXXczcnMaQFIbXuqTECn7aP/j0wQndMp8622t50PyGBWcgSINTSY5TJXdCmQ6DPmU1OdJWJbmH
	NMgg3yiBgAbHZqD5Y+HM+U2Ny6x5
X-Google-Smtp-Source: AGHT+IE7lLBJbOd+ug9udhKeOc+JeGKaTO/5yCW136COcWGhRp26YaAZtFv890iY2cxKgMfZCaakVA==
X-Received: by 2002:a05:6402:42c8:b0:5dc:1289:7f1c with SMTP id 4fb4d7f45d1cf-5de450d6951mr20693170a12.29.1739291477157;
        Tue, 11 Feb 2025 08:31:17 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:154a:1300:5b91:7670:e404:c65a])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b7ade9sm9838748a12.25.2025.02.11.08.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 08:31:16 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	tzimmermann@suse.de,
	simona@ffwll.ch,
	dmitry.osipenko@collabora.com,
	tvrtko.ursulin@igalia.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Tue, 11 Feb 2025 17:31:09 +0100
Message-Id: <20250211163109.12200-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211163109.12200-1-christian.koenig@amd.com>
References: <20250211163109.12200-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B6AE944A21
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.51:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.947];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
Message-ID-Hash: ZQ65YRPGKYABSSWEK6ARCJEAZXVMUG2E
X-Message-ID-Hash: ZQ65YRPGKYABSSWEK6ARCJEAZXVMUG2E
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/4] dma-buf: drop caching of sg_tables
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQ65YRPGKYABSSWEK6ARCJEAZXVMUG2E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCB3YXMgcHVyZWx5IGZvciB0aGUgdHJhbnNpdGlvbiBmcm9tIHN0YXRpYyB0byBkeW5hbWlj
IGRtYS1idWYNCmhhbmRsaW5nIGFuZCBjYW4gYmUgcmVtb3ZlZCBhZ2FpbiBub3cuDQoNClNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0t
LQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgIHwgMzQgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCiBkcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jICAgICAgICAgICAg
ICB8ICAxIC0NCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAgICAgICAgICB8ICAxIC0N
CiBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfcHJpbWUuYyB8ICAxIC0NCiBpbmNsdWRl
L2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgICB8IDEzIC0tLS0tLS0tLS0NCiA1IGZpbGVz
IGNoYW5nZWQsIDUwIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCmluZGV4IDM1N2I5NGEzZGJh
YS4uMzUyMjFjNGRkYmY1IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTYzNiwxMCArNjM2LDYgQEAgc3Ry
dWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9p
bmZvICpleHBfaW5mbykNCiAJCSAgICB8fCAhZXhwX2luZm8tPm9wcy0+cmVsZWFzZSkpDQogCQly
ZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCiANCi0JaWYgKFdBUk5fT04oZXhwX2luZm8tPm9wcy0+
Y2FjaGVfc2d0X21hcHBpbmcgJiYNCi0JCSAgICAoZXhwX2luZm8tPm9wcy0+cGluIHx8IGV4cF9p
bmZvLT5vcHMtPnVucGluKSkpDQotCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCi0NCiAJaWYg
KFdBUk5fT04oIWV4cF9pbmZvLT5vcHMtPnBpbiAhPSAhZXhwX2luZm8tPm9wcy0+dW5waW4pKQ0K
IAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQogDQpAQCAtOTY0LDE3ICs5NjAsNyBAQCB2b2lk
IGRtYV9idWZfZGV0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaCkNCiAJCXJldHVybjsNCiANCiAJZG1hX3Jlc3ZfbG9jayhkbWFidWYt
PnJlc3YsIE5VTEwpOw0KLQ0KLQlpZiAoYXR0YWNoLT5zZ3QpIHsNCi0JCW1hbmdsZV9zZ190YWJs
ZShhdHRhY2gtPnNndCk7DQotCQlhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0
dGFjaCwgYXR0YWNoLT5zZ3QsDQotCQkJCQkJICAgYXR0YWNoLT5kaXIpOw0KLQ0KLQkJaWYgKGRt
YV9idWZfcGluX29uX21hcChhdHRhY2gpKQ0KLQkJCWRtYV9idWZfdW5waW4oYXR0YWNoKTsNCi0J
fQ0KIAlsaXN0X2RlbCgmYXR0YWNoLT5ub2RlKTsNCi0NCiAJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1
Zi0+cmVzdik7DQogDQogCWlmIChkbWFidWYtPm9wcy0+ZGV0YWNoKQ0KQEAgLTEwNjksMTggKzEw
NTUsNiBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIA0KIAlkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRh
Y2gtPmRtYWJ1Zi0+cmVzdik7DQogDQotCWlmIChhdHRhY2gtPnNndCkgew0KLQkJLyoNCi0JCSAq
IFR3byBtYXBwaW5ncyB3aXRoIGRpZmZlcmVudCBkaXJlY3Rpb25zIGZvciB0aGUgc2FtZQ0KLQkJ
ICogYXR0YWNobWVudCBhcmUgbm90IGFsbG93ZWQuDQotCQkgKi8NCi0JCWlmIChhdHRhY2gtPmRp
ciAhPSBkaXJlY3Rpb24gJiYNCi0JCSAgICBhdHRhY2gtPmRpciAhPSBETUFfQklESVJFQ1RJT05B
TCkNCi0JCQlyZXR1cm4gRVJSX1BUUigtRUJVU1kpOw0KLQ0KLQkJcmV0dXJuIGF0dGFjaC0+c2d0
Ow0KLQl9DQotDQogCWlmIChkbWFfYnVmX3Bpbl9vbl9tYXAoYXR0YWNoKSkgew0KIAkJcmV0ID0g
YXR0YWNoLT5kbWFidWYtPm9wcy0+cGluKGF0dGFjaCk7DQogCQlpZiAocmV0KQ0KQEAgLTExMDUs
MTEgKzEwNzksNiBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIAl9DQogCW1hbmdsZV9zZ190YWJsZShz
Z190YWJsZSk7DQogDQotCWlmIChhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5jYWNoZV9zZ3RfbWFwcGlu
Zykgew0KLQkJYXR0YWNoLT5zZ3QgPSBzZ190YWJsZTsNCi0JCWF0dGFjaC0+ZGlyID0gZGlyZWN0
aW9uOw0KLQl9DQotDQogI2lmZGVmIENPTkZJR19ETUFfQVBJX0RFQlVHDQogCXsNCiAJCXN0cnVj
dCBzY2F0dGVybGlzdCAqc2c7DQpAQCAtMTE5MCw5ICsxMTU5LDYgQEAgdm9pZCBkbWFfYnVmX3Vu
bWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KIA0KIAlk
bWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7DQogDQotCWlmIChhdHRh
Y2gtPnNndCA9PSBzZ190YWJsZSkNCi0JCXJldHVybjsNCi0NCiAJbWFuZ2xlX3NnX3RhYmxlKHNn
X3RhYmxlKTsNCiAJYXR0YWNoLT5kbWFidWYtPm9wcy0+dW5tYXBfZG1hX2J1ZihhdHRhY2gsIHNn
X3RhYmxlLCBkaXJlY3Rpb24pOw0KIA0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1h
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQppbmRleCBjYzczOThjYzE3ZDYuLjJm
YTJjOTEzNWVhYyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCisrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCkBAIC0yODUsNyArMjg1LDYgQEAgc3RhdGljIGlu
dCBlbmRfY3B1X3VkbWFidWYoc3RydWN0IGRtYV9idWYgKmJ1ZiwNCiB9DQogDQogc3RhdGljIGNv
bnN0IHN0cnVjdCBkbWFfYnVmX29wcyB1ZG1hYnVmX29wcyA9IHsNCi0JLmNhY2hlX3NndF9tYXBw
aW5nID0gdHJ1ZSwNCiAJLm1hcF9kbWFfYnVmCSAgID0gbWFwX3VkbWFidWYsDQogCS51bm1hcF9k
bWFfYnVmCSAgID0gdW5tYXBfdWRtYWJ1ZiwNCiAJLnJlbGVhc2UJICAgPSByZWxlYXNlX3VkbWFi
dWYsDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9wcmltZS5jDQppbmRleCAzMmE4NzgxY2ZkNjcuLmMyODRmMzA2ZDU5NyAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9wcmltZS5jDQpAQCAtODEwLDcgKzgxMCw2IEBAIGludCBkcm1fZ2VtX2RtYWJ1Zl9t
bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkN
CiBFWFBPUlRfU1lNQk9MKGRybV9nZW1fZG1hYnVmX21tYXApOw0KIA0KIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZG1hX2J1Zl9vcHMgZHJtX2dlbV9wcmltZV9kbWFidWZfb3BzID0gIHsNCi0JLmNhY2hl
X3NndF9tYXBwaW5nID0gdHJ1ZSwNCiAJLmF0dGFjaCA9IGRybV9nZW1fbWFwX2F0dGFjaCwNCiAJ
LmRldGFjaCA9IGRybV9nZW1fbWFwX2RldGFjaCwNCiAJLm1hcF9kbWFfYnVmID0gZHJtX2dlbV9t
YXBfZG1hX2J1ZiwNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVf
cHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jDQppbmRleCBm
ZTZhMGIwMTg1NzEuLmM2ZjNiZTNjYjkxNCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS92
aXJ0aW8vdmlydGdwdV9wcmltZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRn
cHVfcHJpbWUuYw0KQEAgLTc1LDcgKzc1LDYgQEAgc3RhdGljIHZvaWQgdmlydGdwdV9nZW1fdW5t
YXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQogDQogc3RhdGlj
IGNvbnN0IHN0cnVjdCB2aXJ0aW9fZG1hX2J1Zl9vcHMgdmlydGdwdV9kbWFidWZfb3BzID0gIHsN
CiAJLm9wcyA9IHsNCi0JCS5jYWNoZV9zZ3RfbWFwcGluZyA9IHRydWUsDQogCQkuYXR0YWNoID0g
dmlydGlvX2RtYV9idWZfYXR0YWNoLA0KIAkJLmRldGFjaCA9IGRybV9nZW1fbWFwX2RldGFjaCwN
CiAJCS5tYXBfZG1hX2J1ZiA9IHZpcnRncHVfZ2VtX21hcF9kbWFfYnVmLA0KZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCmluZGV4
IGM1NGZmMmRkYThjYi4uNTQ0ZjhmOGMzZjQ0IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQpAQCAtMzQsMTUgKzM0LDYg
QEAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudDsNCiAgKiBAdnVubWFwOiBbb3B0aW9uYWxdIHVu
bWFwcyBhIHZtYXAgZnJvbSB0aGUgYnVmZmVyDQogICovDQogc3RydWN0IGRtYV9idWZfb3BzIHsN
Ci0JLyoqDQotCSAgKiBAY2FjaGVfc2d0X21hcHBpbmc6DQotCSAgKg0KLQkgICogSWYgdHJ1ZSB0
aGUgZnJhbWV3b3JrIHdpbGwgY2FjaGUgdGhlIGZpcnN0IG1hcHBpbmcgbWFkZSBmb3IgZWFjaA0K
LQkgICogYXR0YWNobWVudC4gVGhpcyBhdm9pZHMgY3JlYXRpbmcgbWFwcGluZ3MgZm9yIGF0dGFj
aG1lbnRzIG11bHRpcGxlDQotCSAgKiB0aW1lcy4NCi0JICAqLw0KLQlib29sIGNhY2hlX3NndF9t
YXBwaW5nOw0KLQ0KIAkvKioNCiAJICogQGF0dGFjaDoNCiAJICoNCkBAIC00OTMsOCArNDg0LDYg
QEAgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB7DQogICogQGRtYWJ1ZjogYnVmZmVyIGZvciB0
aGlzIGF0dGFjaG1lbnQuDQogICogQGRldjogZGV2aWNlIGF0dGFjaGVkIHRvIHRoZSBidWZmZXIu
DQogICogQG5vZGU6IGxpc3Qgb2YgZG1hX2J1Zl9hdHRhY2htZW50LCBwcm90ZWN0ZWQgYnkgZG1h
X3Jlc3YgbG9jayBvZiB0aGUgZG1hYnVmLg0KLSAqIEBzZ3Q6IGNhY2hlZCBtYXBwaW5nLg0KLSAq
IEBkaXI6IGRpcmVjdGlvbiBvZiBjYWNoZWQgbWFwcGluZy4NCiAgKiBAcGVlcjJwZWVyOiB0cnVl
IGlmIHRoZSBpbXBvcnRlciBjYW4gaGFuZGxlIHBlZXIgcmVzb3VyY2VzIHdpdGhvdXQgcGFnZXMu
DQogICogQHByaXY6IGV4cG9ydGVyIHNwZWNpZmljIGF0dGFjaG1lbnQgZGF0YS4NCiAgKiBAaW1w
b3J0ZXJfb3BzOiBpbXBvcnRlciBvcGVyYXRpb25zIGZvciB0aGlzIGF0dGFjaG1lbnQsIGlmIHBy
b3ZpZGVkDQpAQCAtNTE0LDggKzUwMyw2IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgew0K
IAlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KIAlzdHJ1Y3QgZGV2aWNlICpkZXY7DQogCXN0cnVj
dCBsaXN0X2hlYWQgbm9kZTsNCi0Jc3RydWN0IHNnX3RhYmxlICpzZ3Q7DQotCWVudW0gZG1hX2Rh
dGFfZGlyZWN0aW9uIGRpcjsNCiAJYm9vbCBwZWVyMnBlZXI7DQogCWNvbnN0IHN0cnVjdCBkbWFf
YnVmX2F0dGFjaF9vcHMgKmltcG9ydGVyX29wczsNCiAJdm9pZCAqaW1wb3J0ZXJfcHJpdjsNCi0t
IA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
