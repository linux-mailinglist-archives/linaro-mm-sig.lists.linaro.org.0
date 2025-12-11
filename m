Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E9441CB5D1B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:25:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D7A93F998
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:25:01 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 38AB13F99B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=kQoTXtaZ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so314135e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455852; x=1766060652; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/dFvDzbD2b3JXCwApYjpV3Gcs9i8eX2HudtkcBLIiCA=;
        b=kQoTXtaZUmWCCCJzOIXoKqkMKuDrhwKyYYSlHBTYQ7sNwf73Zy+rxMqcWEGNrVjRf4
         +drVJY94JmEXjh2BgqFb+S6tBaXTZskvo+1ayMqzo2lp8dZAK40PiZO57S22rHn5fhxl
         udq3tGxpY1tY8axcgPqs2GKqimzpnyFr271QhpG/mJ1lsMpNY0C/JwwHcWrZdMPJFjON
         PQtN1QjUs80zrXUwtQsLSAP8wjiikTGLk//BAHfS0j9fmfPTZDLF7gWf1DOS5EvS1O4h
         y2IkisSli3hciUGYj3OedZwInRf/Sb9Gkw2NPiwx3osrxJTYWpf0/nvbcsxvPErsweRE
         c2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455852; x=1766060652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/dFvDzbD2b3JXCwApYjpV3Gcs9i8eX2HudtkcBLIiCA=;
        b=GXpUKxp5a5x1hPxKp2F8L0ey+mRDX6MqdYP0rVgblb3PykjkyeD+P2HZLkWk1Mj4OH
         4DDiQgbTjemEcsIxPQCh9rSHvPFcKQ9haYJLp6NR8S9zjdqwPUUAaK8HEewVCX/F0PV7
         uk4RMl/WENEQJkGhT67yHY0MXuWSTDMGl5Ad3RvIyvClU0uNVhVPvM/A5GKUGiKw/Kzo
         +JN92u5TIhdQ2dlq5M76sc1rPFKIbqA4e3pQurb0ta4lW/k3e4OEqlsHlJeCAM+tmwu+
         F0KIGkZ+yZ+0BMVr38edrrevGGYggmnMzdR7ok0wab7WYICYtGXVO1xejCofjrTGOnPF
         /tcg==
X-Forwarded-Encrypted: i=1; AJvYcCVD2fyIVdMOH0ELJutyHShdOEN72feXWNyIUpJCScZRa2ok5v39EH1+rQDZlLy66j/xqIshrpHnRsAcZAaI@lists.linaro.org
X-Gm-Message-State: AOJu0YyKZwDm+dOt71XZaDX7UazvcltFQOWYQvjSQk1dSUsAvFGrFpvF
	G7FHFJKCF5IcGlyxOzzrNKv8T8K7ELjxfHG7zfFphJdAvyAjklbgsa30
X-Gm-Gg: AY/fxX46a5+8zemy32HZ5G6HFy0lGpl4WHa893IsC3axWKy6AwOozox/D3FB9LE947X
	q+5YSDkY5SIbmsLjIJ6uPdHRE9L/394hwdxRp/+QJhlUHuq6sjqJ7b7gSnV/sk3MaF1JXqZ59iy
	h6jPQNgomZKHyUOz56AD3crzS/YIpRFTh1fWkCpVU6IHlrXG5044Yhz2AbquScMCzteBePhFmcM
	9Gpw6Dm7sc4jDoilt0RmE4J+1fFxqkdNeNmW0XC1urnmOAFY5z0j2fEDW4xB/BQMSI26cwj2bgp
	F6tMg8Tq4OK78V6Ejt6ShbLbhBeapoILEblHa6zKaIMtuK0lVcc4nUSL5/vA9RqtskODGkKmoUo
	iN41k+E1fMohgjt2uFEzWuFdYTse9K/6idCA8FCsHrXRWtudhZ1BR9LKhPU0XCx4Bgv0bGHWmIH
	wrbKRb+HUj+LpVExXRP5dXuo5h
X-Google-Smtp-Source: AGHT+IF3+f1wDfOdohMsFI8IZoy2rrOpo99dRv8CaHHMuZ2ElOsDSQx3UHP0PvEfpvMrfEoOmjcekw==
X-Received: by 2002:a05:600c:1910:b0:477:b734:8c22 with SMTP id 5b1f17b1804b1-47a8376e3d9mr59483755e9.8.1765455852128;
        Thu, 11 Dec 2025 04:24:12 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:11 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:33 +0100
Message-ID: <20251211122407.1709-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.44:query timed out];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 38AB13F99B
X-Spamd-Bar: ----
Message-ID-Hash: I3QAYZHUL2IIGV64GVMDUH26NSTIATEG
X-Message-ID-Hash: I3QAYZHUL2IIGV64GVMDUH26NSTIATEG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 02/19] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I3QAYZHUL2IIGV64GVMDUH26NSTIATEG/>
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
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NClJldmlld2VkLWJ5OiBQ
aGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KLS0tDQogZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIHwgMTYgKysrKysrKysrKysrLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggICB8ICA0ICsrLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4IGUzZTc0Zjk4ZjU4ZC4uNDgxZjFj
ZDlhYWUyIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorKysgYi9k
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
aCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IGVlYTY3NGFjZGZhNi4uZTZkNzUz
MTA3MTQzIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysrIGIvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTQ1Nyw3ICs0NTcsNyBAQCBkbWFfZmVuY2VfaXNf
c2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIA0KIAlyY3VfcmVhZF9s
b2NrKCk7DQogCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9wcy0+
c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCisJaWYgKG9wcyAmJiBvcHMtPnNp
Z25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQogCQlyY3VfcmVhZF91bmxvY2soKTsN
CiAJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsNCiAJCXJldHVybiB0cnVlOw0KQEAg
LTQ5Myw3ICs0OTMsNyBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpDQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZl
bmNlLT5vcHMpOw0KLQlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNlKSkg
ew0KKwlpZiAob3BzICYmIG9wcy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsN
CiAJCXJjdV9yZWFkX3VubG9jaygpOw0KIAkJZG1hX2ZlbmNlX3NpZ25hbChmZW5jZSk7DQogCQly
ZXR1cm4gdHJ1ZTsNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
