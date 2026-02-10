Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKUJDSIHi2kdPQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:23:30 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6841199BE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:23:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1B953F9B3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 10:23:28 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 7646C3F7E6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 10:22:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=NfZXF0FK;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so79259075e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 02:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770718957; x=1771323757; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwf5esqwJ7SXvd71B3FH8QhlX5Jghb+eJSgGSpTt+Dc=;
        b=NfZXF0FKFQjKtEeqZnTCbbbVFRN8o/MOkpEO8MWIxHTJB74pc/dwP+8O+jXxNhzTuj
         PY7aH68srmhJKYG3YDuSlaT6JtiZogbh0nR1l/Tes5ALViFoi8JRuICI+NoLQXyz6AhR
         eLTFAG+bAXrV1JufdOCk+aIb3jT4afTw5r9PodjVvtkY1OjSzlvsuVbXC8ApH+wx+cua
         3lWYt9FzEZcghwv1kJ+SbFdZQTtV+X89Q7MMG/HLAHtdrpa72bQg4eyNWlG/GooyVfH4
         Cw7WV+hMvUsfBTgY690MwsWXQ95KDkh2DlcDMftPM6V1sbdulPsSqRqPs3kVC9flpSaj
         1X0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718957; x=1771323757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kwf5esqwJ7SXvd71B3FH8QhlX5Jghb+eJSgGSpTt+Dc=;
        b=ORdVJ7h6antCZZKquf4mLNdlhWGhzuRsdz4ynKeiAuyEgJT4g6rPOaOQXFWCNWq6DB
         DeR2yn3jhyFP6RxRhO9/dzw+kbw7ufy/4FR73O/nUO83Ks0dfXvV8LVJxWsHhF6hv1Gp
         PHA/4nWXLX6A+9DSHPp4PVGrTNrsy5oUfw2Xh+ZYw3+4CsMaLC7C5PlmzOiQZ1t7tulr
         hKgbpV9w1ZRjjRDUOMVjTccqpQr+zIGrxKTd/xgqyG5/gxUd3fRvjobip9gsG//djpQE
         ZVoFOSyILkpcGKXvrxQt1dgUMv2jErEZ2spObsZxPv/7oH7GdBP5Zia6SgQck9jNlfZ2
         rT/A==
X-Forwarded-Encrypted: i=1; AJvYcCXpo28FJ1BeaBHlJoLrDyQzgXDdSG8xTteRJPPf5GTQpQgArXBtml0jrxcwse7yl/GNtxbpJ0wTo1T516LH@lists.linaro.org
X-Gm-Message-State: AOJu0YyTG0fm8kY1xTf4QNfXNjNF01a3RABC3SEP11NkNnJ+zuIi1Szh
	CdzPgfdS0FA3Hy8dLsi1q8X4VCeIumrHaYa9tVUoAsmJZEQOPzu93EU0
X-Gm-Gg: AZuq6aLx0bY3tp74/rJsUC8hbZ9o6jQso7NwsMEHxI2iGhNpkK+3miirMH5MaoA15s4
	L9a661QivY1iVV/5eurJIlYTXzjphTNSubQMPE52x9Kk0VXF50Oc6so8MZg4NsQ8mlZg6SnV8g0
	LH+DAdibZiG1a2CUYMdtLePZdocbt/XQgvP3JMbLz9yVrvb8x7Ov3j110buEsVQYmqXNZssP7DW
	yHLUi5kLb6Rk0sK3UL6GTBhpq4yh2BVout2mfHPaqZCzJwfp5oBqpRlE0kfrxSyc1MbH9iNJuP9
	SvBTXzWftynbmjVzDvzJweDClAARKjzjXmCUV1yorAw0Mt/+8nXci0Zs4SZCvuGW0aGbC1UCw58
	5SpxCudgSRShTJz/uLmuQyujxwDFtHLjfI8D5oxtbXYSAwou9o1DTeFf41KLI35qTq14RGWle3K
	pOZXVzc1PvcWnHb0SEu40QyK3vsdrLCqm0EZfq
X-Received: by 2002:a05:600c:6092:b0:482:eec4:758 with SMTP id 5b1f17b1804b1-4835082d0c7mr24634415e9.26.1770718957407;
        Tue, 10 Feb 2026 02:22:37 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:6000:83ca:11f0:7e35:a75d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8ebfsm81549605e9.2.2026.02.10.02.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:22:37 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 10 Feb 2026 11:01:57 +0100
Message-ID: <20260210102232.1642-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210102232.1642-1-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: HYNDV2P7M3VXXO6H74G5FM637VS77EAA
X-Message-ID-Hash: HYNDV2P7M3VXXO6H74G5FM637VS77EAA
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/8] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HYNDV2P7M3VXXO6H74G5FM637VS77EAA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid,amd.com:email,linaro.org:email,igalia.com:email]
X-Rspamd-Queue-Id: DE6841199BE
X-Rspamd-Action: no action

V2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IGJhY2tlbmQgb3BzIGlzIHNwZWNpZmll
ZCBpdCBpcyBwb3NzaWJsZQ0KdG8gbGV0IHRoZSBkbWFfZmVuY2UgbGl2ZSBvbiBpbmRlcGVuZGVu
dGx5IG9mIHRoZSBtb2R1bGUgd2hvIGlzc3VlZCBpdC4NCg0KVGhpcyBtYWtlcyBpdCBwb3NzaWJs
ZSB0byB1bmxvYWQgZHJpdmVycyBhbmQgb25seSB3YWl0IGZvciBhbGwgdGhlaXINCmZlbmNlcyB0
byBzaWduYWwuDQoNCnYyOiBmaXggdHlwbyBpbiBjb21tZW50DQoNClNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NClJldmlld2VkLWJ5OiBQ
aGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KLS0tDQogZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIHwgMTYgKysrKysrKysrKysrLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggICB8ICA0ICsrLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4IGRlOWJmMThiZTNkNC4uYmEwMjMy
MWJlZjBiIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorKysgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCkBAIC0zNzEsNiArMzcxLDE0IEBAIHZvaWQgZG1h
X2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0K
IAkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkpDQogCQlyZXR1cm47DQogDQorCS8qDQorCSAqIFdo
ZW4gbmVpdGhlciBhIHJlbGVhc2Ugbm9yIGEgd2FpdCBvcGVyYXRpb24gaXMgc3BlY2lmaWVkIHNl
dCB0aGUgb3BzDQorCSAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0
dXJlIHRvIGJlY29tZSBpbmRlcGVuZGVudA0KKwkgKiBmcm9tIHdobyBvcmlnaW5hbGx5IGlzc3Vl
ZCBpdC4NCisJICovDQorCWlmICghZmVuY2UtPm9wcy0+cmVsZWFzZSAmJiAhZmVuY2UtPm9wcy0+
d2FpdCkNCisJCVJDVV9JTklUX1BPSU5URVIoZmVuY2UtPm9wcywgTlVMTCk7DQorDQogCS8qIFN0
YXNoIHRoZSBjYl9saXN0IGJlZm9yZSByZXBsYWNpbmcgaXQgd2l0aCB0aGUgdGltZXN0YW1wICov
DQogCWxpc3RfcmVwbGFjZSgmZmVuY2UtPmNiX2xpc3QsICZjYl9saXN0KTsNCiANCkBAIC01Mzcs
NyArNTQ1LDcgQEAgZG1hX2ZlbmNlX3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwgYm9vbCBpbnRyLCBzaWduZWQgbG9uZyB0aW1lb3V0KQ0KIAlyY3VfcmVhZF9sb2NrKCk7DQog
CW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCiAJdHJhY2VfZG1hX2ZlbmNlX3dh
aXRfc3RhcnQoZmVuY2UpOw0KLQlpZiAob3BzLT53YWl0KSB7DQorCWlmIChvcHMgJiYgb3BzLT53
YWl0KSB7DQogCQkvKg0KIAkJICogSW1wbGVtZW50aW5nIHRoZSB3YWl0IG9wcyBpcyBkZXByZWNh
dGVkIGFuZCBub3Qgc3VwcG9ydGVkIGZvcg0KIAkJICogaXNzdWVyIGluZGVwZW5kZW50IGZlbmNl
cywgc28gaXQgaXMgb2sgdG8gdXNlIHRoZSBvcHMgb3V0c2lkZQ0KQEAgLTYwMiw3ICs2MTAsNyBA
QCB2b2lkIGRtYV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKQ0KIAl9DQogDQogCW9w
cyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9wcy0+cmVsZWFzZSkNCisJ
aWYgKG9wcyAmJiBvcHMtPnJlbGVhc2UpDQogCQlvcHMtPnJlbGVhc2UoZmVuY2UpOw0KIAllbHNl
DQogCQlkbWFfZmVuY2VfZnJlZShmZW5jZSk7DQpAQCAtNjM4LDcgKzY0Niw3IEBAIHN0YXRpYyBi
b29sIF9fZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Up
DQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5v
cHMpOw0KLQlpZiAoIXdhc19zZXQgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQorCWlmICgh
d2FzX3NldCAmJiBvcHMgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQogCQl0cmFjZV9kbWFf
ZmVuY2VfZW5hYmxlX3NpZ25hbChmZW5jZSk7DQogDQogCQlpZiAoIW9wcy0+ZW5hYmxlX3NpZ25h
bGluZyhmZW5jZSkpIHsNCkBAIC0xMDI0LDcgKzEwMzIsNyBAQCB2b2lkIGRtYV9mZW5jZV9zZXRf
ZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpDQogDQog
CXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0K
LQlpZiAob3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkp
DQorCWlmIChvcHMgJiYgb3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxl
ZChmZW5jZSkpDQogCQlvcHMtPnNldF9kZWFkbGluZShmZW5jZSwgZGVhZGxpbmUpOw0KIAlyY3Vf
cmVhZF91bmxvY2soKTsNCiB9DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IDZiZjRmZWIwZTAxZi4uZTFhZmJi
NTkwOWY5IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysrIGIvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTQ3Miw3ICs0NzIsNyBAQCBkbWFfZmVuY2VfaXNf
c2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIA0KIAlyY3VfcmVhZF9s
b2NrKCk7DQogCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9wcy0+
c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCisJaWYgKG9wcyAmJiBvcHMtPnNp
Z25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQogCQlyY3VfcmVhZF91bmxvY2soKTsN
CiAJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsNCiAJCXJldHVybiB0cnVlOw0KQEAg
LTUwOCw3ICs1MDgsNyBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpDQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZl
bmNlLT5vcHMpOw0KLQlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNlKSkg
ew0KKwlpZiAob3BzICYmIG9wcy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsN
CiAJCXJjdV9yZWFkX3VubG9jaygpOw0KIAkJZG1hX2ZlbmNlX3NpZ25hbChmZW5jZSk7DQogCQly
ZXR1cm4gdHJ1ZTsNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
