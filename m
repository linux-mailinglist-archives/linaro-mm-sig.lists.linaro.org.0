Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 604DACB5D8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:28:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B2FB3F99F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:28:44 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id AE9DF3F99F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=aJzKpP8N;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so469345e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455862; x=1766060662; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QTSC+Vtw1VpyYro/I3MkkSq7dUYkK2G2AnrdgEbY1hs=;
        b=aJzKpP8NU+bxj5pyuR4ZFMvYIYDMLjMQnnmBGgs1vxZwXZNhVIOvb8zVV+mX3Rzyhq
         vtDUN0xlA+y/ZNutqEHorawVsRhmAOxoOrvHH/wxU+dSA2ysGozIv6lls5zDY+elE2pO
         YwtbWSopNlGG2tzcloptPcmLiCWN3NfFfsq+8pz/bqAEzVzRdVAj2i3nQQ3bIF+0Ts7b
         l7jum9SEyEeNJsJffhui2or+cPVmdWAzwVY92JvI7K9JMLhxHVUu+ypZs4aEAL9GMZSA
         mfpYtD/8g+o3U2qpuPB1z/SQdlycMbUbcxQ3rDQBqRMtHT6asBy74tj3zhQMrStZDN1O
         Ccxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455862; x=1766060662;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QTSC+Vtw1VpyYro/I3MkkSq7dUYkK2G2AnrdgEbY1hs=;
        b=DUGqQ4mx96+hAOXS0xhYeIwEP+mjaMlH49QXpuapvE2+cpIkR4vR7PnSnrvT3fR3XP
         okKLW5aOEmvdhWOfPPmL+dg5FNJd2U8AamM/G18H20P5CHKXdP7drGITrUVo0/4cqn9J
         I6o5lCTVLpBSFhCfFooAversrxuPcqfiO0/2d/KIJE5OFli6FqDuWajJKpQrBSMF2tsz
         3dXgAfcJFaC8TdE78zOcwJf7GzaUYPaKhpnWwqVdsNoEm2BlU0VXGCpOLAGR5tsfpa0C
         lfDyofA3Qc4K+TM73ucx8vit8Z1lvq10MSBCKWmA6QrVHdXXqgFw4vvpybL1j97KgN/h
         rM+w==
X-Forwarded-Encrypted: i=1; AJvYcCVTQvGgcb7EwpcyP/uklcpz8rImA1zq+MIEhpKRmWrvgey43fdtgyYZw0feJsNiZ88fIv0VVNcGW2MISu/E@lists.linaro.org
X-Gm-Message-State: AOJu0Yyhfo0tmTM3ouxob8djuoba3cVKQklxXx6V8OjwFhMN5jJknBOi
	dw0Z3GsxXv8ouKUYu9gHm/N5YZ1bAFamVN6qRRLUbdhxa9JrTF64H63V
X-Gm-Gg: AY/fxX69YShg/p7MzoYq5NNPQf1BqyOMNuL/B6JI6FGq6aivNdKyw6kUe3taHISmR8m
	il7rWuVsDzkTrXmdzYejCm8vu8WrjzlDM8DyU2qVfeUcMDc2K+gekZf3pDuWgT3G+reVT8jua9l
	6AX/A1TT5kbznHZmrXBhA6xkfDWcdcMqHOzARgmgwPMaPlOpLIeIzD4MmD74U26KSpDDq/iFLUR
	JIoQdalFnalKEe8x6xt47g1ccptSCd3MaQZ+kjfCll53R+bo9ZiSZFlq/BuVZdrhM2pQ9eIcNJN
	e9I9+OYFg8mEXH/3iL7t+rIl2VNrdEh4w1zVGTBXBiSmUH/zP9nnWX6ex1Lf/8fKw/5bHeoY59K
	U0ERTKmCZBJq90qBuZ9Njo9EpvQQHleMuAhWAf0dhYUwfcK9W6G2tvIS2+UL5oRQa23qhEGWhCd
	MFvIzuYntL5u/SCDwKzQyLGPYc67sOdbUd3Bg=
X-Google-Smtp-Source: AGHT+IHC/AJtDJLcDl2RuMuOpHobx8AeZ1UeJxTD7ZjepUYFdoN5sqM/gM8VuZkeHj7aBdx0nUryLQ==
X-Received: by 2002:a05:600c:8a0c:10b0:477:98f7:2aec with SMTP id 5b1f17b1804b1-47a856439e0mr39023285e9.3.1765455861604;
        Thu, 11 Dec 2025 04:24:21 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:21 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:45 +0100
Message-ID: <20251211122407.1709-15-christian.koenig@amd.com>
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.53:query timed out];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
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
X-Rspamd-Queue-Id: AE9DF3F99F
X-Spamd-Bar: ----
Message-ID-Hash: CXKZNR77SY7WN7CQE4W4GKEHYFTH5YHA
X-Message-ID-Hash: CXKZNR77SY7WN7CQE4W4GKEHYFTH5YHA
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 14/19] drm/amdgpu: independence for the amdkfd_fence! v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CXKZNR77SY7WN7CQE4W4GKEHYFTH5YHA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBhbGxvd3MgYW1ka2ZkX2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUgbW9kdWxlLg0K
DQp2MjogaW1wbGVtZW50IEZlbGl4IHN1Z2dlc3Rpb24gdG8gbG9jayB0aGUgZmVuY2Ugd2hpbGUg
c2lnbmFsaW5nIGl0Lg0KdjM6IGZpeCB0eXBvcw0KdjQ6IGZpeCByZXR1cm4gY29kZSBpbiBzaWdu
YWxfZXZpY3Rpb25fZmVuY2UNCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2FtZGtmZC5oICAgIHwgIDcgKysrDQogLi4uL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfYW1ka2ZkX2ZlbmNlLmMgIHwgNDQgKysrKysrKysrLS0tLS0tLS0tLQ0KIGRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMgICAgICB8ICAyICstDQogZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRrZmQva2ZkX3N2bS5jICAgICAgICAgIHwgIDQgKy0NCiA0IGZpbGVzIGNoYW5n
ZWQsIDMxIGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZC5oIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZC5oDQppbmRleCA4YmRmY2RlMjAyOWIuLjJmMmIyNzdj
ZmFlZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRr
ZmQuaA0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZC5oDQpA
QCAtMTk2LDYgKzE5Niw3IEBAIGludCBrZmRfZGVidWdmc19rZmRfbWVtX2xpbWl0cyhzdHJ1Y3Qg
c2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpOw0KICNlbmRpZg0KICNpZiBJU19FTkFCTEVEKENPTkZJ
R19IU0FfQU1EKQ0KIGJvb2wgYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKHN0cnVjdCBkbWFfZmVuY2Ug
KmYsIHN0cnVjdCBtbV9zdHJ1Y3QgKm1tKTsNCitib29sIGFtZGtmZF9mZW5jZV9zaWduYWwoc3Ry
dWN0IGRtYV9mZW5jZSAqZik7DQogc3RydWN0IGFtZGdwdV9hbWRrZmRfZmVuY2UgKnRvX2FtZGdw
dV9hbWRrZmRfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZik7DQogdm9pZCBhbWRncHVfYW1ka2Zk
X3JlbW92ZV9hbGxfZXZpY3Rpb25fZmVuY2VzKHN0cnVjdCBhbWRncHVfYm8gKmJvKTsNCiBpbnQg
YW1kZ3B1X2FtZGtmZF9ldmljdF91c2VycHRyKHN0cnVjdCBtbXVfaW50ZXJ2YWxfbm90aWZpZXIg
Km1uaSwNCkBAIC0yMTAsNiArMjExLDEyIEBAIGJvb2wgYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKHN0
cnVjdCBkbWFfZmVuY2UgKmYsIHN0cnVjdCBtbV9zdHJ1Y3QgKm1tKQ0KIAlyZXR1cm4gZmFsc2U7
DQogfQ0KIA0KK3N0YXRpYyBpbmxpbmUNCitib29sIGFtZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0
IGRtYV9mZW5jZSAqZikNCit7DQorCXJldHVybiBmYWxzZTsNCit9DQorDQogc3RhdGljIGlubGlu
ZQ0KIHN0cnVjdCBhbWRncHVfYW1ka2ZkX2ZlbmNlICp0b19hbWRncHVfYW1ka2ZkX2ZlbmNlKHN0
cnVjdCBkbWFfZmVuY2UgKmYpDQogew0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9hbWRrZmRfZmVuY2UuYw0KaW5kZXggMDljOTE5ZjcyYjZjLi45Y2Q0MTNlMzI1ZjAg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2Zl
bmNlLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVu
Y2UuYw0KQEAgLTEyNywyOSArMTI3LDkgQEAgc3RhdGljIGJvb2wgYW1ka2ZkX2ZlbmNlX2VuYWJs
ZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZikNCiAJCWlmICghc3ZtX3JhbmdlX3NjaGVk
dWxlX2V2aWN0X3N2bV9ibyhmZW5jZSkpDQogCQkJcmV0dXJuIHRydWU7DQogCX0NCi0JcmV0dXJu
IGZhbHNlOw0KLX0NCi0NCi0vKioNCi0gKiBhbWRrZmRfZmVuY2VfcmVsZWFzZSAtIGNhbGxiYWNr
IHRoYXQgZmVuY2UgY2FuIGJlIGZyZWVkDQotICoNCi0gKiBAZjogZG1hX2ZlbmNlDQotICoNCi0g
KiBUaGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCB3aGVuIHRoZSByZWZlcmVuY2UgY291bnQgYmVjb21l
cyB6ZXJvLg0KLSAqIERyb3BzIHRoZSBtbV9zdHJ1Y3QgcmVmZXJlbmNlIGFuZCBSQ1Ugc2NoZWR1
bGVzIGZyZWVpbmcgdXAgdGhlIGZlbmNlLg0KLSAqLw0KLXN0YXRpYyB2b2lkIGFtZGtmZF9mZW5j
ZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQotew0KLQlzdHJ1Y3QgYW1kZ3B1X2FtZGtm
ZF9mZW5jZSAqZmVuY2UgPSB0b19hbWRncHVfYW1ka2ZkX2ZlbmNlKGYpOw0KLQ0KLQkvKiBVbmNv
bmRpdGlvbmFsbHkgc2lnbmFsIHRoZSBmZW5jZS4gVGhlIHByb2Nlc3MgaXMgZ2V0dGluZw0KLQkg
KiB0ZXJtaW5hdGVkLg0KLQkgKi8NCi0JaWYgKFdBUk5fT04oIWZlbmNlKSkNCi0JCXJldHVybjsg
LyogTm90IGFuIGFtZGdwdV9hbWRrZmRfZmVuY2UgKi8NCi0NCiAJbW1kcm9wKGZlbmNlLT5tbSk7
DQotCWtmcmVlX3JjdShmLCByY3UpOw0KKwlmZW5jZS0+bW0gPSBOVUxMOw0KKwlyZXR1cm4gZmFs
c2U7DQogfQ0KIA0KIC8qKg0KQEAgLTE3NCw5ICsxNTQsMjcgQEAgYm9vbCBhbWRrZmRfZmVuY2Vf
Y2hlY2tfbW0oc3RydWN0IGRtYV9mZW5jZSAqZiwgc3RydWN0IG1tX3N0cnVjdCAqbW0pDQogCXJl
dHVybiBmYWxzZTsNCiB9DQogDQorYm9vbCBhbWRrZmRfZmVuY2Vfc2lnbmFsKHN0cnVjdCBkbWFf
ZmVuY2UgKmYpDQorew0KKwlzdHJ1Y3QgYW1kZ3B1X2FtZGtmZF9mZW5jZSAqZmVuY2UgPSB0b19h
bWRncHVfYW1ka2ZkX2ZlbmNlKGYpOw0KKwl1bnNpZ25lZCBsb25nIGZsYWdzOw0KKwlib29sIHdh
c19zaWduYWxlZDsNCisNCisJZG1hX2ZlbmNlX2xvY2tfaXJxc2F2ZShmLCBmbGFncyk7DQorCWlm
IChmZW5jZS0+bW0pIHsNCisJCW1tZHJvcChmZW5jZS0+bW0pOw0KKwkJZmVuY2UtPm1tID0gTlVM
TDsNCisJfQ0KKwl3YXNfc2lnbmFsZWQgPSBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKGYp
Ow0KKwlpZiAoIXdhc19zaWduYWxlZCkNCisJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGYpOw0K
KwlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZiwgZmxhZ3MpOw0KKw0KKwlyZXR1cm4gd2Fz
X3NpZ25hbGVkOw0KK30NCisNCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgYW1k
a2ZkX2ZlbmNlX29wcyA9IHsNCiAJLmdldF9kcml2ZXJfbmFtZSA9IGFtZGtmZF9mZW5jZV9nZXRf
ZHJpdmVyX25hbWUsDQogCS5nZXRfdGltZWxpbmVfbmFtZSA9IGFtZGtmZF9mZW5jZV9nZXRfdGlt
ZWxpbmVfbmFtZSwNCiAJLmVuYWJsZV9zaWduYWxpbmcgPSBhbWRrZmRfZmVuY2VfZW5hYmxlX3Np
Z25hbGluZywNCi0JLnJlbGVhc2UgPSBhbWRrZmRfZmVuY2VfcmVsZWFzZSwNCiB9Ow0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vzcy5jDQppbmRleCBiYjI1MmVjNDM3MzMuLjJj
ZjM5ZTNkM2ZhZSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9w
cm9jZXNzLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMN
CkBAIC0xMTczLDcgKzExNzMsNyBAQCBzdGF0aWMgdm9pZCBrZmRfcHJvY2Vzc193cV9yZWxlYXNl
KHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCiAJc3luY2hyb25pemVfcmN1KCk7DQogCWVmID0g
cmN1X2FjY2Vzc19wb2ludGVyKHAtPmVmKTsNCiAJaWYgKGVmKQ0KLQkJZG1hX2ZlbmNlX3NpZ25h
bChlZik7DQorCQlhbWRrZmRfZmVuY2Vfc2lnbmFsKGVmKTsNCiANCiAJa2ZkX3Byb2Nlc3NfcmVt
b3ZlX3N5c2ZzKHApOw0KIAlrZmRfZGVidWdmc19yZW1vdmVfcHJvY2VzcyhwKTsNCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCmluZGV4IDk3YzIyNzBmMjc4Zi4uMGU5NGYzYTk3NmIx
IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3N2bS5jDQorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCkBAIC00MjgsNyArNDI4LDcg
QEAgc3RhdGljIHZvaWQgc3ZtX3JhbmdlX2JvX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYpDQog
DQogCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNlLT5i
YXNlKSkNCiAJCS8qIFdlJ3JlIG5vdCBpbiB0aGUgZXZpY3Rpb24gd29ya2VyLiBTaWduYWwgdGhl
IGZlbmNlLiAqLw0KLQkJZG1hX2ZlbmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+
YmFzZSk7DQorCQlhbWRrZmRfZmVuY2Vfc2lnbmFsKCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNlLT5i
YXNlKTsNCiAJZG1hX2ZlbmNlX3B1dCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7DQog
CWFtZGdwdV9ib191bnJlZigmc3ZtX2JvLT5ibyk7DQogCWtmcmVlKHN2bV9ibyk7DQpAQCAtMzYy
OCw3ICszNjI4LDcgQEAgc3RhdGljIHZvaWQgc3ZtX3JhbmdlX2V2aWN0X3N2bV9ib193b3JrZXIo
c3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KIAltbWFwX3JlYWRfdW5sb2NrKG1tKTsNCiAJbW1w
dXQobW0pOw0KIA0KLQlkbWFfZmVuY2Vfc2lnbmFsKCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNlLT5i
YXNlKTsNCisJYW1ka2ZkX2ZlbmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+YmFz
ZSk7DQogDQogCS8qIFRoaXMgaXMgdGhlIGxhc3QgcmVmZXJlbmNlIHRvIHN2bV9ibywgYWZ0ZXIg
c3ZtX3JhbmdlX3ZyYW1fbm9kZV9mcmVlDQogCSAqIGhhcyBiZWVuIGNhbGxlZCBpbiBzdm1fbWln
cmF0ZV92cmFtX3RvX3JhbQ0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
