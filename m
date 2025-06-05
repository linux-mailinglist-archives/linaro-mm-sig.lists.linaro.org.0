Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1FCACEC61
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Jun 2025 10:53:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2457444716
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Jun 2025 08:53:54 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by lists.linaro.org (Postfix) with ESMTPS id 6207B44010
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Jun 2025 08:53:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=AtdxQ46A;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.222.182 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7d0a2220fb0so88009585a.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Jun 2025 01:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749113623; x=1749718423; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lDEWl38WFpFNnd8GWTrKKFIYCiy6Z5fzCEGVZofpXpw=;
        b=AtdxQ46ATbxaDJC7Txu37u/3QVH/nLxgEELa7FpLRSNwztkzchEK+Q1VnhElVlPiSG
         YsAYmVr5GMI9ozOfk2yj8OHuTmYm6j74sag5atrId1BqAmybQ6/Uo08Bf5D1r6v6N72R
         t+dr8C3buezP1piL74qghKFjhruPm4oqjrB0i1cIXsqRpOes2zDJegwnf8YjNFz5B2ro
         apkZ7n6bffpRJG0gQVi4bP3DO2I027BoA/GaspqoJJ8MefYnHkMUZuxZs8tdxaGrX5kT
         JNpzVUgtBPnQDZuIkhuICbWSAa+1VdxoTcarh5/ahyQadAWO6ohOd7qlrhL3xK/QL8LK
         1MBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749113623; x=1749718423;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lDEWl38WFpFNnd8GWTrKKFIYCiy6Z5fzCEGVZofpXpw=;
        b=v4MlasaObSgJsmHjclAX7I83Jnx2ro5Wts+TwW7xcbjVlrYwssqXsbe0H+gNiRZqdW
         2hvjPpzCd8XbKxubSWQpts5j8KOGB2OF7ixQp0F21LqQ5VWs7z9QsQRx1JdZPODJq7pI
         oRjndsRIjgGHFS79ZFxAg3T2GbKQlM4pQYLYCrcXQpnmoor2DwZjeJzAkNyHEe9UbQ7n
         mHWOvfhcDxl5BlVz7sh/Cx4pLub9GUUMozIT/CP7PuOtjJTYjPddXxmn+0NajwJkWJko
         YMzZluym1mC6ysiCs31pMrg1zQ3dzu9PZ2l7ZJmxbCNPGwspQxyJ4IGfeLYIX8WRcvbq
         UtXg==
X-Forwarded-Encrypted: i=1; AJvYcCWW4KqiOw1TRQZzNJE/MbaGe3/QexTeNzSXU+QT8nHgUELDXuuWSA08ykp8vHToKYMDotUD2H5Hd1wVZQt6@lists.linaro.org
X-Gm-Message-State: AOJu0YyxRwDTdCaIS9MRd06o2yACg7SeuuoAZ5zCLX/1cs9xaNptYQ7z
	+bRPQs2JjQ6g1SQUfLVL1xtIB/Qpq51LxsGfCYLO2upPFgUkg7igoNLE
X-Gm-Gg: ASbGncumdgMSqJzFFE06a8mQP11MRVPd94dPBGoUv4lVsHLmAk6LZrE40GKq5YMkRq3
	i27IbiTuN3ta+ch0T9GzeFSJ4OfEG/rBWua8bv1X1Sm7nn0PfvhdmJxhwYVbNvBZIjLWcwaWOuY
	jexnOZkrVjHxsBjMh8g2/WyJGsMLjpNvVkZUw6ldEGq5tTK4sVXqaK1MiKvp0tsEL3Dp+eduSo7
	+cAKbfctsj++8yctY2ap73P0MVijLLDaG5JeI+IYm75Cq2nJCOEjxQbBSxx+H8vLzXuMF5E12bt
	K4nlz3HMwHIvYFn9PHWLUxYzR7yHOH8VWdqhS1sW+1cNliI/HkKRLonlHKIWD8fSCuk+2TE=
X-Google-Smtp-Source: AGHT+IGLH8m16XkE87l1eFPbxjX4AhOlhPsBOMe99DdtYfdVzZAuDktVgyg981QS3ANLMdJctEgnRQ==
X-Received: by 2002:a05:620a:4109:b0:7d2:1404:ac52 with SMTP id af79cd13be357-7d2198ef8e0mr991962485a.27.1749113622868;
        Thu, 05 Jun 2025 01:53:42 -0700 (PDT)
Received: from laptop.fritz.box (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d09a1a768csm1222520585a.94.2025.06.05.01.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 01:53:42 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: dan.carpenter@linaro.org,
	sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu,  5 Jun 2025 10:53:35 +0200
Message-ID: <20250605085336.62156-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.182:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.222.182:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Queue-Id: 6207B44010
X-Spamd-Bar: ----
Message-ID-Hash: BSUR7EZO2DB56UWFTCNFAELBMMBJDGDE
X-Message-ID-Hash: BSUR7EZO2DB56UWFTCNFAELBMMBJDGDE
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix compare in WARN_ON_ONCE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BSUR7EZO2DB56UWFTCNFAELBMMBJDGDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U21hdGNoIHBvaW50ZWQgb3V0IHRoaXMgdHJpdmlhbCB0eXBvOg0KCWRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmM6MTEyMyBkbWFfYnVmX21hcF9hdHRhY2htZW50KCkNCgl3YXJuOiBwYXNzaW5nIHBv
c2l0aXZlIGVycm9yIGNvZGUgJzE2JyB0byAnRVJSX1BUUicNCg0KZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KICAgIDExMTMgICAgICAgICBkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRt
YWJ1Zi0+cmVzdik7DQogICAgMTExNA0KICAgIDExMTUgICAgICAgICBpZiAoZG1hX2J1Zl9waW5f
b25fbWFwKGF0dGFjaCkpIHsNCiAgICAxMTE2ICAgICAgICAgICAgICAgICByZXQgPSBhdHRhY2gt
PmRtYWJ1Zi0+b3BzLT5waW4oYXR0YWNoKTsNCiAgICAxMTE3ICAgICAgICAgICAgICAgICAvKg0K
ICAgIDExMTggICAgICAgICAgICAgICAgICAqIENhdGNoIGV4cG9ydGVycyBtYWtpbmcgYnVmZmVy
cyBpbmFjY2Vzc2libGUgZXZlbiB3aGVuDQogICAgMTExOSAgICAgICAgICAgICAgICAgICogYXR0
YWNobWVudHMgcHJldmVudGluZyB0aGF0IGV4aXN0Lg0KICAgIDExMjAgICAgICAgICAgICAgICAg
ICAqLw0KICAgIDExMjEgICAgICAgICAgICAgICAgIFdBUk5fT05fT05DRShyZXQgPT0gRUJVU1kp
Ow0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXl5eXl4NClRo
aXMgd2FzIHByb2JhYmx5IGludGVuZGVkIHRvIGJlIC1FQlVTWT8NCg0KICAgIDExMjIgICAgICAg
ICAgICAgICAgIGlmIChyZXQpDQotLT4gMTEyMyAgICAgICAgICAgICAgICAgICAgICAgICByZXR1
cm4gRVJSX1BUUihyZXQpOw0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXl5eDQpPdGhlcndpc2Ugd2Ugd2lsbCBldmVudHVhbGx5IGNyYXNoLg0KDQogICAg
MTEyNCAgICAgICAgIH0NCiAgICAxMTI1DQogICAgMTEyNiAgICAgICAgIHNnX3RhYmxlID0gYXR0
YWNoLT5kbWFidWYtPm9wcy0+bWFwX2RtYV9idWYoYXR0YWNoLCBkaXJlY3Rpb24pOw0KICAgIDEx
MjcgICAgICAgICBpZiAoIXNnX3RhYmxlKQ0KICAgIDExMjggICAgICAgICAgICAgICAgIHNnX3Rh
YmxlID0gRVJSX1BUUigtRU5PTUVNKTsNCiAgICAxMTI5ICAgICAgICAgaWYgKElTX0VSUihzZ190
YWJsZSkpDQogICAgMTEzMCAgICAgICAgICAgICAgICAgZ290byBlcnJvcl91bnBpbjsNCiAgICAx
MTMxDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAyICstDQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5k
ZXggMGM0OGQ0MWRkNWViLi40NTE3MTQwMDhlOGEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtMTA2MCw3
ICsxMDYwLDcgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCiAJCSAqIENhdGNoIGV4cG9ydGVycyBtYWtp
bmcgYnVmZmVycyBpbmFjY2Vzc2libGUgZXZlbiB3aGVuDQogCQkgKiBhdHRhY2htZW50cyBwcmV2
ZW50aW5nIHRoYXQgZXhpc3QuDQogCQkgKi8NCi0JCVdBUk5fT05fT05DRShyZXQgPT0gRUJVU1kp
Ow0KKwkJV0FSTl9PTl9PTkNFKHJldCA9PSAtRUJVU1kpOw0KIAkJaWYgKHJldCkNCiAJCQlyZXR1
cm4gRVJSX1BUUihyZXQpOw0KIAl9DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
