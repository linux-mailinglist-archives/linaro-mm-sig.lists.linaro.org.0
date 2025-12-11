Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D5FCB5D57
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:27:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83AB33F7F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:27:15 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id A604E3F9BC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Tnf2pgrn;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so93485e9.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455860; x=1766060660; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qX70Q0zfB3jKNj6LjxUD9riq7dAsRvS5ADCd21ud4vM=;
        b=Tnf2pgrnWxqyCwIiBb1Qpic/H4HimB4MPqOMArz/u72ni1ALfcJ042wX2kVpNX9FsZ
         qwVmJp3xwGdYyDSaIUeNThVSdJq2Za9fWe6x4AOHsLt6Gfy+4iUjVKdjtRZ8ot/YCj8T
         Eq40Z0dZNvQa8VwHA5kehS34Pg0W6KpYJm8nhjG9/8FQi/x/QTIVfLu6T70C8h9eHh7Q
         Eks9l+F8SH+5EzeK4MsWLXfAY5phdo/zl0i468GoTGtA1KXhDlxHdMIJxjrsFsdxHNlz
         bpoYhtfyBl4gPwfq/BbqVSvsoVsPlsdB6Y8X1SsLXNSbT67VSdKU2sGLvatMQzBZT1Z4
         IShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455860; x=1766060660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qX70Q0zfB3jKNj6LjxUD9riq7dAsRvS5ADCd21ud4vM=;
        b=WRDjpr2kfmeSaxLlmPzfEfin2pNSkmDXWFeZk8ADK105zGOQ1nL9PVkNJ3D7VGXqIq
         g7jDJnuBRp9Hh5V7CkoEwsrvvkYemJgY1yDss+eOTpFa3TbJc4zd1kZZAIYS59PTthJ6
         F9Ehndk4P6/R+P7XxwsxmcDV9oXG7/vsgEr+x2vixLsmwNhUzD0hsALcSuK0x3bH2uZB
         kwJfKoIQNoN2dK3engDujMI+nT3wuTTcoltQVP9hky/LOG2fhNU7Mmgt31EHP/VNV80z
         TxXdaQQ68iCam2YtUz5BkfwMqRybJAAjd+F5LCrt7nHfClmq2/Mrtz2PVOM0lfUmmD0K
         ouqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtWXCtiR8JIqps6OuV4/vd4neO0GdxkOEck6NJ/Y03foi656c1zF4A8nQpvCqfCPQIrirkKvsDUF95mTyq@lists.linaro.org
X-Gm-Message-State: AOJu0YyqHyr2cWhkBiGjEZz2oGRdxh5gaeMWw1g9UA4u6hDSW5TNE2BG
	NZI6/FLIMuZ2ukjddhSRyKGmhBvgs5X+19o0Dz4HafpeFKuxleuOVq40
X-Gm-Gg: AY/fxX5Hv4q88Ei4miwJtJZWtGv8SI5KES0hmDGreLlCdsE4vbM02EyxRLtUjm6CCRz
	FSPT8DHw8YryMPTqBMrZfvTOGBqVX0B0dVEK/TkmS/PVn8T/XLjAEhwmseKa4gw3JltLRPyqyGk
	pHnCklhmggMurgiv2QngNzca6+bseRZELo89YXfWxAETqCjKDIZg4qzM3WG2zT/M8AK5pfMG/Un
	RmPTjGQcTSWfqwqshT/+magpTPlj/CrGX6eqmDdcvW3RteRbqqptPOi9QUZ+B46Dkf/ts2/i2nW
	DkU+KX3QvUXh6MxVNk2LdiFb0hzDsOIdIsknHNbjo2xX6pLDiNchAKvaGREcafGlfUNA/5E41NY
	L/uqEr9ygXKOtfq1QHzyYQ3o6Tan/u8wvt5fqztL2tEsjohBT7SP0aJxvHME0jG5qrrGeAxAvGf
	l6ML1NVY7mBTO65FmeM9ZGzds0
X-Google-Smtp-Source: AGHT+IGJ+bTeSnsSzPmD9Clj/y778RW0ms/meqAZ09tQT2iYOxFdHyJ06AXIpDpi6o507traLW9rxg==
X-Received: by 2002:a05:600c:a42:b0:46e:32dd:1b1a with SMTP id 5b1f17b1804b1-47a8379484amr55500685e9.7.1765455859489;
        Thu, 11 Dec 2025 04:24:19 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:19 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:42 +0100
Message-ID: <20251211122407.1709-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
X-Rspamd-Queue-Id: A604E3F9BC
X-Spamd-Bar: ----
Message-ID-Hash: 7E3VA5VUE6BLGGVJNBN2ZCZIQLCKMQ7R
X-Message-ID-Hash: 7E3VA5VUE6BLGGVJNBN2ZCZIQLCKMQ7R
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/19] drm/amdgpu: independence for the amdgpu_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7E3VA5VUE6BLGGVJNBN2ZCZIQLCKMQ7R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBhbGxvd3MgYW1kZ3B1X2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUgbW9kdWxlLg0K
DQp2MjogdXNlIGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUgdG8gYmUgTlVMTCBzYWZlIGhlcmUuDQoN
ClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jIHwgNjMg
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfcmluZy5oICB8ICAxIC0NCiAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDQ0
IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2Uu
Yw0KaW5kZXggYzc4NDNlMzM2MzEwLi5jNjM2MzQ3ODAxYzEgMTAwNjQ0DQotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMNCkBAIC0xMTIsOCArMTEyLDcgQEAgaW50IGFtZGdw
dV9mZW5jZV9lbWl0KHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgc3RydWN0IGFtZGdwdV9mZW5j
ZSAqYWYsDQogCWFmLT5yaW5nID0gcmluZzsNCiANCiAJc2VxID0gKytyaW5nLT5mZW5jZV9kcnYu
c3luY19zZXE7DQotCWRtYV9mZW5jZV9pbml0KGZlbmNlLCAmYW1kZ3B1X2ZlbmNlX29wcywNCi0J
CSAgICAgICAmcmluZy0+ZmVuY2VfZHJ2LmxvY2ssDQorCWRtYV9mZW5jZV9pbml0KGZlbmNlLCAm
YW1kZ3B1X2ZlbmNlX29wcywgTlVMTCwNCiAJCSAgICAgICBhZGV2LT5mZW5jZV9jb250ZXh0ICsg
cmluZy0+aWR4LCBzZXEpOw0KIA0KIAlhbWRncHVfcmluZ19lbWl0X2ZlbmNlKHJpbmcsIHJpbmct
PmZlbmNlX2Rydi5ncHVfYWRkciwNCkBAIC00NjcsNyArNDY2LDYgQEAgaW50IGFtZGdwdV9mZW5j
ZV9kcml2ZXJfaW5pdF9yaW5nKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZykNCiAJdGltZXJfc2V0
dXAoJnJpbmctPmZlbmNlX2Rydi5mYWxsYmFja190aW1lciwgYW1kZ3B1X2ZlbmNlX2ZhbGxiYWNr
LCAwKTsNCiANCiAJcmluZy0+ZmVuY2VfZHJ2Lm51bV9mZW5jZXNfbWFzayA9IHJpbmctPm51bV9o
d19zdWJtaXNzaW9uICogMiAtIDE7DQotCXNwaW5fbG9ja19pbml0KCZyaW5nLT5mZW5jZV9kcnYu
bG9jayk7DQogCXJpbmctPmZlbmNlX2Rydi5mZW5jZXMgPSBrY2FsbG9jKHJpbmctPm51bV9od19z
dWJtaXNzaW9uICogMiwgc2l6ZW9mKHZvaWQgKiksDQogCQkJCQkgR0ZQX0tFUk5FTCk7DQogDQpA
QCAtNjU0LDE2ICs2NTIsMjAgQEAgdm9pZCBhbWRncHVfZmVuY2VfZHJpdmVyX3NldF9lcnJvcihz
dHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIGludCBlcnJvcikNCiAJc3RydWN0IGFtZGdwdV9mZW5j
ZV9kcml2ZXIgKmRydiA9ICZyaW5nLT5mZW5jZV9kcnY7DQogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7
DQogDQotCXNwaW5fbG9ja19pcnFzYXZlKCZkcnYtPmxvY2ssIGZsYWdzKTsNCisJcmN1X3JlYWRf
bG9jaygpOw0KIAlmb3IgKHVuc2lnbmVkIGludCBpID0gMDsgaSA8PSBkcnYtPm51bV9mZW5jZXNf
bWFzazsgKytpKSB7DQogCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCiANCi0JCWZlbmNlID0g
cmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChkcnYtPmZlbmNlc1tpXSwNCi0JCQkJCQkgIGxvY2tk
ZXBfaXNfaGVsZCgmZHJ2LT5sb2NrKSk7DQotCQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV9pc19z
aWduYWxlZF9sb2NrZWQoZmVuY2UpKQ0KKwkJZmVuY2UgPSBkbWFfZmVuY2VfZ2V0X3JjdShkcnYt
PmZlbmNlc1tpXSk7DQorCQlpZiAoIWZlbmNlKQ0KKwkJCWNvbnRpbnVlOw0KKw0KKwkJZG1hX2Zl
bmNlX2xvY2tfaXJxc2F2ZShmZW5jZSwgZmxhZ3MpOw0KKwkJaWYgKCFkbWFfZmVuY2VfaXNfc2ln
bmFsZWRfbG9ja2VkKGZlbmNlKSkNCiAJCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKGZlbmNlLCBlcnJv
cik7DQorCQlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UsIGZsYWdzKTsNCiAJfQ0K
LQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkcnYtPmxvY2ssIGZsYWdzKTsNCisJcmN1X3JlYWRf
dW5sb2NrKCk7DQogfQ0KIA0KIC8qKg0KQEAgLTcxNCwxNiArNzE2LDE5IEBAIHZvaWQgYW1kZ3B1
X2ZlbmNlX2RyaXZlcl9ndWlsdHlfZm9yY2VfY29tcGxldGlvbihzdHJ1Y3QgYW1kZ3B1X2ZlbmNl
ICphZikNCiAJc2VxID0gcmluZy0+ZmVuY2VfZHJ2LnN5bmNfc2VxICYgcmluZy0+ZmVuY2VfZHJ2
Lm51bV9mZW5jZXNfbWFzazsNCiANCiAJLyogbWFyayBhbGwgZmVuY2VzIGZyb20gdGhlIGd1aWx0
eSBjb250ZXh0IHdpdGggYW4gZXJyb3IgKi8NCi0Jc3Bpbl9sb2NrX2lycXNhdmUoJnJpbmctPmZl
bmNlX2Rydi5sb2NrLCBmbGFncyk7DQorCXJjdV9yZWFkX2xvY2soKTsNCiAJZG8gew0KIAkJbGFz
dF9zZXErKzsNCiAJCWxhc3Rfc2VxICY9IHJpbmctPmZlbmNlX2Rydi5udW1fZmVuY2VzX21hc2s7
DQogDQogCQlwdHIgPSAmcmluZy0+ZmVuY2VfZHJ2LmZlbmNlc1tsYXN0X3NlcV07DQotCQlyY3Vf
cmVhZF9sb2NrKCk7DQotCQl1bnByb2Nlc3NlZCA9IHJjdV9kZXJlZmVyZW5jZSgqcHRyKTsNCisJ
CXVucHJvY2Vzc2VkID0gZG1hX2ZlbmNlX2dldF9yY3Vfc2FmZShwdHIpOw0KKw0KKwkJaWYgKCF1
bnByb2Nlc3NlZCkNCisJCQljb250aW51ZTsNCiANCi0JCWlmICh1bnByb2Nlc3NlZCAmJiAhZG1h
X2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZCh1bnByb2Nlc3NlZCkpIHsNCisJCWRtYV9mZW5jZV9s
b2NrX2lycXNhdmUodW5wcm9jZXNzZWQsIGZsYWdzKTsNCisJCWlmIChkbWFfZmVuY2VfaXNfc2ln
bmFsZWRfbG9ja2VkKHVucHJvY2Vzc2VkKSkgew0KIAkJCWZlbmNlID0gY29udGFpbmVyX29mKHVu
cHJvY2Vzc2VkLCBzdHJ1Y3QgYW1kZ3B1X2ZlbmNlLCBiYXNlKTsNCiANCiAJCQlpZiAoZmVuY2Ug
PT0gYWYpDQpAQCAtNzMxLDkgKzczNiwxMCBAQCB2b2lkIGFtZGdwdV9mZW5jZV9kcml2ZXJfZ3Vp
bHR5X2ZvcmNlX2NvbXBsZXRpb24oc3RydWN0IGFtZGdwdV9mZW5jZSAqYWYpDQogCQkJZWxzZSBp
ZiAoZmVuY2UtPmNvbnRleHQgPT0gYWYtPmNvbnRleHQpDQogCQkJCWRtYV9mZW5jZV9zZXRfZXJy
b3IoJmZlbmNlLT5iYXNlLCAtRUNBTkNFTEVEKTsNCiAJCX0NCi0JCXJjdV9yZWFkX3VubG9jaygp
Ow0KKwkJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKHVucHJvY2Vzc2VkLCBmbGFncyk7DQor
CQlkbWFfZmVuY2VfcHV0KHVucHJvY2Vzc2VkKTsNCiAJfSB3aGlsZSAobGFzdF9zZXEgIT0gc2Vx
KTsNCi0Jc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcmluZy0+ZmVuY2VfZHJ2LmxvY2ssIGZsYWdz
KTsNCisJcmN1X3JlYWRfdW5sb2NrKCk7DQogCS8qIHNpZ25hbCB0aGUgZ3VpbHR5IGZlbmNlICov
DQogCWFtZGdwdV9mZW5jZV93cml0ZShyaW5nLCAodTMyKWFmLT5iYXNlLnNlcW5vKTsNCiAJYW1k
Z3B1X2ZlbmNlX3Byb2Nlc3MocmluZyk7DQpAQCAtODIzLDM5ICs4MjksMTAgQEAgc3RhdGljIGJv
b2wgYW1kZ3B1X2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZikNCiAJ
cmV0dXJuIHRydWU7DQogfQ0KIA0KLS8qKg0KLSAqIGFtZGdwdV9mZW5jZV9mcmVlIC0gZnJlZSB1
cCB0aGUgZmVuY2UgbWVtb3J5DQotICoNCi0gKiBAcmN1OiBSQ1UgY2FsbGJhY2sgaGVhZA0KLSAq
DQotICogRnJlZSB1cCB0aGUgZmVuY2UgbWVtb3J5IGFmdGVyIHRoZSBSQ1UgZ3JhY2UgcGVyaW9k
Lg0KLSAqLw0KLXN0YXRpYyB2b2lkIGFtZGdwdV9mZW5jZV9mcmVlKHN0cnVjdCByY3VfaGVhZCAq
cmN1KQ0KLXsNCi0Jc3RydWN0IGRtYV9mZW5jZSAqZiA9IGNvbnRhaW5lcl9vZihyY3UsIHN0cnVj
dCBkbWFfZmVuY2UsIHJjdSk7DQotDQotCS8qIGZyZWUgZmVuY2Vfc2xhYiBpZiBpdCdzIHNlcGFy
YXRlZCBmZW5jZSovDQotCWtmcmVlKHRvX2FtZGdwdV9mZW5jZShmKSk7DQotfQ0KLQ0KLS8qKg0K
LSAqIGFtZGdwdV9mZW5jZV9yZWxlYXNlIC0gY2FsbGJhY2sgdGhhdCBmZW5jZSBjYW4gYmUgZnJl
ZWQNCi0gKg0KLSAqIEBmOiBmZW5jZQ0KLSAqDQotICogVGhpcyBmdW5jdGlvbiBpcyBjYWxsZWQg
d2hlbiB0aGUgcmVmZXJlbmNlIGNvdW50IGJlY29tZXMgemVyby4NCi0gKiBJdCBqdXN0IFJDVSBz
Y2hlZHVsZXMgZnJlZWluZyB1cCB0aGUgZmVuY2UuDQotICovDQotc3RhdGljIHZvaWQgYW1kZ3B1
X2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZikNCi17DQotCWNhbGxfcmN1KCZmLT5y
Y3UsIGFtZGdwdV9mZW5jZV9mcmVlKTsNCi19DQotDQogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFf
ZmVuY2Vfb3BzIGFtZGdwdV9mZW5jZV9vcHMgPSB7DQogCS5nZXRfZHJpdmVyX25hbWUgPSBhbWRn
cHVfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KIAkuZ2V0X3RpbWVsaW5lX25hbWUgPSBhbWRncHVf
ZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsDQogCS5lbmFibGVfc2lnbmFsaW5nID0gYW1kZ3B1X2Zl
bmNlX2VuYWJsZV9zaWduYWxpbmcsDQotCS5yZWxlYXNlID0gYW1kZ3B1X2ZlbmNlX3JlbGVhc2Us
DQogfTsNCiANCiAvKg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9yaW5nLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5oDQpp
bmRleCA3YTI3YzZjNGJiNDQuLjljYmY2MzQ1NDAwNCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yaW5nLmgNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9yaW5nLmgNCkBAIC0xMjUsNyArMTI1LDYgQEAgc3RydWN0IGFtZGdwdV9m
ZW5jZV9kcml2ZXIgew0KIAl1bnNpZ25lZAkJCWlycV90eXBlOw0KIAlzdHJ1Y3QgdGltZXJfbGlz
dAkJZmFsbGJhY2tfdGltZXI7DQogCXVuc2lnbmVkCQkJbnVtX2ZlbmNlc19tYXNrOw0KLQlzcGlu
bG9ja190CQkJbG9jazsNCiAJc3RydWN0IGRtYV9mZW5jZQkJKipmZW5jZXM7DQogfTsNCiANCi0t
IA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
