Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GJ+tAcjNO2qIdQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:30:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6556BE1B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:29:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="Ku+F/aWa";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2FB1401CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 12:29:58 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id E53233F91D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 12:29:23 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-490b8ac62baso19907315e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 05:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782304163; x=1782908963; darn=lists.linaro.org;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rK7BBYKp4olcSlX/FhhqJF/M5dPppXiXimriQNw/H+8=;
        b=Ku+F/aWa5jRyijxxyl2yNH26CbjbFKhCh3AKECVj86zKK9q5YPG5r1hzVzlx4N3uhL
         TaU/UD37OCJMPuZQ79Xp79uSPw4V0Zsy5kjkJznzvCzjObOBcirdcmEuzCxRwpjI1wrv
         mH4M4e0IvhxFENWXVJethpKeeHqc+cEPHBzQ2OZbX4JarE7n/Q/LhNOhx6EMXzu8DkmT
         qpra9w1rfj+4Ziq/VeGSeGp1nzZWHmLPbn6/OsJScU85YK2JR5rNMwrlosma6KA0fVq1
         YBxGrkOX60KlfV2lZOVgCX73X1ZD3JtrCU5hkh/V3xZJrHrsYKidemBtfXuKw2e5Ejyi
         bgug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782304163; x=1782908963;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rK7BBYKp4olcSlX/FhhqJF/M5dPppXiXimriQNw/H+8=;
        b=BZ4xU+gm99AR/gTC8enGK+4hih8rLIGrUKrDp72XtHsiTvFZUU796zpCwuo/iY5IP5
         //ePbqRiE6cQbDjIV1VVykaYBm+d3OREMJWPhC+pSbM3rLQ8L7wU25hIfybEVnc4aLdH
         CpaGIAy9VdF2GrcNhrj8HBXvvlAItV98qSs5iKdDYZI2kujCNe067RBnvjp24YC0UWx/
         JSI9ol5u+4jRHQ67sAUmziEZ6b6PrjYMp5AHd9pnnkBlaDV6hrqVYCwiHqiwmjOZg5ND
         lb+MFt2XtwH6PNxKXK5YUS4jbVix5PdmuWU7fTIgcNBrd6y0xKQkJCDl2kLXFQzgHyJh
         JC7A==
X-Forwarded-Encrypted: i=1; AFNElJ/ki04MxkqQKOhwgXFxsWzYImKdc+YIkBX7ZfhVp1C2Cs1pmE8TN4IH8CZa89lqCwAHY/v2R65Z6la8/Bgi@lists.linaro.org
X-Gm-Message-State: AOJu0YzPadwO7l3u16a/ZCD1fWVBJ99ZdNfVBsNWzqhCmySW0+D175oM
	X+xH71QCYxJEnyvzfppef/0DMn2sYVsZY2exKmD4yHC1cdDc8S1Qn5r9
X-Gm-Gg: AfdE7ckMyeXdMm0AFTDn7sUvK36vIbHcSry1mY88u9WNIERFZojxpHtaPgD0q1lw703
	mtO0X/2+HdQXEXeDe/AJQWoeaDEH4yhi3PNe1o1sQi/w7NBki+293SPlC+EVUijIr8y8y9yTlj5
	R32kNzgfPqGhLLaP16eUYqOZW4AAsznQcAkNQaAtBuVm3ZjwXSfpCSzBM0Hp3P5wP3Vt+vXUI1B
	FqsrLpjrKjFKBedVbeOqKEUB2dxiB+Xw/7qTPY66qX6snWukNk0eeDFC6vbPUfkqBXYHy1qQxvd
	NX+yH7i4CpY4n7ZiwT7SwcgjoYWp/0ivl7MNeA1vpt9MyqqsLUkkjlNHhi8eHCgtM9S9dKqrspJ
	qmKlRXbHbm5E6TYAe0LUVGauyVzC2IPr5r9ZKD3zyim7L58C/BAEUCOXkleUZTo+DA18fNVDx44
	tZKe3+YIvwmEHcv0trbDZctKk/vmsNx5dHlDu0
X-Received: by 2002:a05:600c:c171:b0:490:e180:2e0 with SMTP id 5b1f17b1804b1-4926329a875mr3823145e9.3.1782304162768;
        Wed, 24 Jun 2026 05:29:22 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:157e:3500:2be7:1a89:41c5:9239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c9787dddbsm3896530f8f.3.2026.06.24.05.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 05:29:22 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	tvrtko.ursulin@igalia.com,
	dakr@kernel.org
Date: Wed, 24 Jun 2026 13:13:27 +0200
Message-ID: <20260624122917.2483-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624122917.2483-1-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: SKAZT67JKVNXHIG65HQMJOFYZKF74R4A
X-Message-ID-Hash: SKAZT67JKVNXHIG65HQMJOFYZKF74R4A
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 03/10] drm/amdgpu: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SKAZT67JKVNXHIG65HQMJOFYZKF74R4A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[christian.koenig@amd.com];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:replyto,amd.com:email,amd.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B6556BE1B5

SW5zdGVhZCBvZiBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKCkgdXNlDQpkbWFfZmVuY2Vf
dGVzdF9zaWduYWxlZF9mbGFnKCkuDQoNClRoZSBleHRyYSBwb2xsaW5nIGNoZWNrIHNlZW1zIHVu
ZWNlc3NhcnkgZm9yIHRob3NlIHVzZSBjYXNlcy4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMgICAgICAgfCA4ICsrKystLS0tDQogZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYyAgICAgICAgfCAyICstDQogZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2ZlbmNlLmMgfCAyICstDQogMyBmaWxlcyBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQppbmRleCBlYTY5YjFiYWM3YzYuLjExOTJiOTgw
MGZmMiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5j
ZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYw0KQEAg
LTY1Miw3ICs2NTIsNyBAQCB2b2lkIGFtZGdwdV9mZW5jZV9kcml2ZXJfc2V0X2Vycm9yKHN0cnVj
dCBhbWRncHVfcmluZyAqcmluZywgaW50IGVycm9yKQ0KIA0KIAkJZmVuY2UgPSByY3VfZGVyZWZl
cmVuY2VfcHJvdGVjdGVkKGRydi0+ZmVuY2VzW2ldLA0KIAkJCQkJCSAgbG9ja2RlcF9pc19oZWxk
KCZkcnYtPmxvY2spKTsNCi0JCWlmIChmZW5jZSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xv
Y2tlZChmZW5jZSkpDQorCQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2Zs
YWcoZmVuY2UpKQ0KIAkJCWRtYV9mZW5jZV9zZXRfZXJyb3IoZmVuY2UsIGVycm9yKTsNCiAJfQ0K
IAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkcnYtPmxvY2ssIGZsYWdzKTsNCkBAIC02NzcsNyAr
Njc3LDcgQEAgdm9pZCBhbWRncHVfZmVuY2VfZHJpdmVyX2ZvcmNlX2NvbXBsZXRpb24oc3RydWN0
IGFtZGdwdV9yaW5nICpyaW5nLA0KIA0KIAkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVj
dGVkKGRydi0+ZmVuY2VzW2ldLA0KIAkJCQkJCSAgbG9ja2RlcF9pc19oZWxkKCZkcnYtPmxvY2sp
KTsNCi0JCWlmIChmZW5jZSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChmZW5jZSkp
IHsNCisJCWlmIChmZW5jZSAmJiAhZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmZW5jZSkp
IHsNCiAJCQlpZiAoZmVuY2UgPT0gdGltZWRvdXRfZmVuY2UpDQogCQkJCWRtYV9mZW5jZV9zZXRf
ZXJyb3IoZmVuY2UsIC1FVElNRSk7DQogCQkJZWxzZQ0KQEAgLTczOCw3ICs3MzgsNyBAQCB2b2lk
IGFtZGdwdV9yaW5nX3NldF9mZW5jZV9lcnJvcnNfYW5kX3JlZW1pdChzdHJ1Y3QgYW1kZ3B1X3Jp
bmcgKnJpbmcsDQogCQlyY3VfcmVhZF9sb2NrKCk7DQogCQl1bnByb2Nlc3NlZCA9IHJjdV9kZXJl
ZmVyZW5jZSgqcHRyKTsNCiANCi0JCWlmICh1bnByb2Nlc3NlZCAmJiAhZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkX2xvY2tlZCh1bnByb2Nlc3NlZCkpIHsNCisJCWlmICh1bnByb2Nlc3NlZCAmJiAhZG1h
X2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyh1bnByb2Nlc3NlZCkpIHsNCiAJCQlmZW5jZSA9IGNv
bnRhaW5lcl9vZih1bnByb2Nlc3NlZCwgc3RydWN0IGFtZGdwdV9mZW5jZSwgYmFzZSk7DQogCQkJ
aXNfZ3VpbHR5X2ZlbmNlID0gZmVuY2UgPT0gZ3VpbHR5X2ZlbmNlOw0KIAkJCWlzX2d1aWx0eV9j
b250ZXh0ID0gZmVuY2UtPmNvbnRleHQgPT0gZ3VpbHR5X2ZlbmNlLT5jb250ZXh0Ow0KQEAgLTgw
Miw3ICs4MDIsNyBAQCB2b2lkIGFtZGdwdV9yaW5nX2JhY2t1cF91bnByb2Nlc3NlZF9jb21tYW5k
cyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsDQogCQlyY3VfcmVhZF9sb2NrKCk7DQogCQl1bnBy
b2Nlc3NlZCA9IHJjdV9kZXJlZmVyZW5jZSgqcHRyKTsNCiANCi0JCWlmICh1bnByb2Nlc3NlZCAm
JiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHVucHJvY2Vzc2VkKSkgew0KKwkJaWYgKHVucHJvY2Vz
c2VkICYmICFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKHVucHJvY2Vzc2VkKSkgew0KIAkJ
CWZlbmNlID0gY29udGFpbmVyX29mKHVucHJvY2Vzc2VkLCBzdHJ1Y3QgYW1kZ3B1X2ZlbmNlLCBi
YXNlKTsNCiANCiAJCQlhbWRncHVfcmluZ19iYWNrdXBfdW5wcm9jZXNzZWRfY29tbWFuZChyaW5n
LCBmZW5jZSk7DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3JpbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yaW5nLmMNCmluZGV4
IGQ2YmVlNWMzMDA3My4uYWU5ZDZhMmVlZmFiIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3JpbmcuYw0KQEAgLTQ2MCw3ICs0NjAsNyBAQCBib29sIGFtZGdwdV9yaW5nX3Nv
ZnRfcmVjb3Zlcnkoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCB1bnNpZ25lZCBpbnQgdm1pZCwN
CiAJCXJldHVybiBmYWxzZTsNCiANCiAJZG1hX2ZlbmNlX2xvY2tfaXJxc2F2ZShmZW5jZSwgZmxh
Z3MpOw0KLQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoZmVuY2UpKQ0KKwlpZiAo
IWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2UpKQ0KIAkJZG1hX2ZlbmNlX3NldF9l
cnJvcihmZW5jZSwgLUVOT0RBVEEpOw0KIAlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZmVu
Y2UsIGZsYWdzKTsNCiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfdXNlcnFfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91
c2VycV9mZW5jZS5jDQppbmRleCBhNDFmYjcyZGJhOTQuLjJjYzY1NTJhNjM5OSAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91c2VycV9mZW5jZS5jDQorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuYw0KQEAgLTQy
Niw3ICs0MjYsNyBAQCBhbWRncHVfdXNlcnFfZmVuY2VfZHJpdmVyX3NldF9lcnJvcihzdHJ1Y3Qg
YW1kZ3B1X3VzZXJxX2ZlbmNlICpmZW5jZSwNCiANCiAJZiA9IHJjdV9kZXJlZmVyZW5jZV9wcm90
ZWN0ZWQoJmZlbmNlLT5iYXNlLA0KIAkJCQkgICAgICBsb2NrZGVwX2lzX2hlbGQoJmZlbmNlX2Ry
di0+ZmVuY2VfbGlzdF9sb2NrKSk7DQotCWlmIChmICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWRf
bG9ja2VkKGYpKQ0KKwlpZiAoZiAmJiAhZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmKSkN
CiAJCWRtYV9mZW5jZV9zZXRfZXJyb3IoZiwgZXJyb3IpOw0KIAlzcGluX3VubG9ja19pcnFyZXN0
b3JlKCZmZW5jZV9kcnYtPmZlbmNlX2xpc3RfbG9jaywgZmxhZ3MpOw0KIH0NCi0tIA0KMi40My4w
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
