Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNSJJrU1l2lBvwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:09:25 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 204B616089D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:09:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CDD0401E8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 16:09:24 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 6F1AE401E3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 16:08:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=FYRKqVZJ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4837907f535so10525935e9.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 08:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771517310; x=1772122110; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqVToHPilGc3rB1IlznFCmAYG7fAdkPbx5gcjGdkNEw=;
        b=FYRKqVZJy2NNeVBIo1T8aQJb3Fiy2Y9ejIiP4HP2EanBX8evf0M3+Eep006493yGN5
         LXe+/LBVXeOT1j8W66m7SxQOdObqmO+CiLwe43bXlcCRMglEqudbTPzhk7/XrURh5wcV
         9Y2kobu0Ekzj7IjSbvs+40a4QM/zK676tKmm9ND3QO8Dq1fi0UYzZvf9e0Jo4N1iTX4f
         pKrftKHTV5NxcjZnXBliaQDhc2O6HyIUBopSClYdkBtaleJIiP7/n8CGVGJhi2bazLiq
         EaOHs/RFMbksEKlY97ocIWYuCxO7UqV5RNFegvxwTgH++NvA+YjjU2zgnrU0gJ5vKLic
         LI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771517310; x=1772122110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XqVToHPilGc3rB1IlznFCmAYG7fAdkPbx5gcjGdkNEw=;
        b=gX0xb7qZ3OlG6XOSyC7kNY+7aKzSf3Apn2y6Yv9tzS8x+AxD7dhUulyWyTgu0Kdwe6
         VJjhuNkikIf1zkT1RFJR8gPm/8ERVqnVZx+99GKzC63vgKij7TPgO/QKbkZR8An+OIPc
         aCt76qAQtXI579Y+ZzSfFjgIn6gu8lypiJZU3TUSxyFdeXDStry3vrhia6Ite1d/VPJ0
         TLAUkqfEYO2ksW2kwIN7nb/aQwVuu6tH1r3trYXUxF2ugx57KboyMYocMcKUaup0GuNm
         Wb0MjsG8bgtOYcwcombToVPqcWKVZ9nLLzJGfOslRcnyN9HnEszmk9b6ME6lKg/MdB4W
         6O3g==
X-Forwarded-Encrypted: i=1; AJvYcCXCCrETHFLW0tfqDNIUE8wCKBVpov1yuoaQT//v20MD749jSg4pQ4VUkMKME86AXNoI4m5g13qqSctFtLXQ@lists.linaro.org
X-Gm-Message-State: AOJu0YzUWdUdyJqo+o/EoZPU9n3Z+OkBNm4Uo9U6DqIEXlSiDdSx+1Au
	eVkO6kXzAI6j7dPACk2R+iuBJmm1TP37cD5b9B8IW9F48X+J1oDMmD4+
X-Gm-Gg: AZuq6aLxMS7oZtyA9aZZB/l8SfhdrQLCxSqZICQbQFzvKk4uJu11P2aI8abQjL9qc9z
	XPG0n0z3hM6d3kJMW2LuTRKgn//0bP1jtXgybsIa+fxxYHel+5nFsRI+BIjTU3EiEeN2zDfioAS
	Asa8brX1rdU8qYzKA72yc8dqs1Wk1qoCIxOBCBJDo8Mx2dhu7vdVx09L/tu3wb6QewkWKXbxrHO
	vKB/Ie5cIXJDTywpwCGjintz8/Kr5zzYtkJSTvmo4bYcBtBAaTmnRSrTPUX7fT7IiEcFir04vIT
	cCo2/h2PkfsD8gRcQELUwVL3GcxT4KFD+yx7QdNb/FV2PArkP5HFkumJKSdIwmuH0kYAVVqTPlC
	8Nl7spDylrlf5RFwA0b19E57N/mqTjA7xjXIB8OSwS2ZWVEkkEf+DSId98rsO9tWdU2jdx/njgc
	Z9qSkAEuc3OBQ9lo9hPPTnKSJFi8008Fer3lwE
X-Received: by 2002:a05:600c:548e:b0:480:6dff:e786 with SMTP id 5b1f17b1804b1-48379bff816mr302613455e9.37.1771517310280;
        Thu, 19 Feb 2026 08:08:30 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1503:b900:9c42:5977:662a:d02d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac82f7sm54580031f8f.28.2026.02.19.08.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 08:08:29 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 19 Feb 2026 17:07:08 +0100
Message-ID: <20260219160822.1529-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219160822.1529-1-christian.koenig@amd.com>
References: <20260219160822.1529-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: M72L7XEGTEDYJLYK6UL3M64WWTDQSCXP
X-Message-ID-Hash: M72L7XEGTEDYJLYK6UL3M64WWTDQSCXP
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/8] dma-buf/selftests: test RCU ops and inline lock v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M72L7XEGTEDYJLYK6UL3M64WWTDQSCXP/>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:mid,amd.com:email,igalia.com:email]
X-Rspamd-Queue-Id: 204B616089D
X-Rspamd-Action: no action

RHJvcCB0aGUgbW9ja19mZW5jZSBhbmQgdGhlIGttZW1fY2FjaGUsIGluc3RlYWQgdXNlIHRoZSBp
bmxpbmUgbG9jayBhbmQNCnRlc3QgaWYgdGhlIG9wcyBhcmUgcHJvcGVybHkgZHJvcHBlZCBhZnRl
ciBzaWduYWxpbmcuDQoNCnYyOiBtb3ZlIHRoZSBSQ1UgY2hlY2sgdG8gdGhlIGVuZCBvZiB0aGUg
dGVzdA0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGln
YWxpYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgfCA0NCArKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQppbmRleCA1
ZDBkOWFiYzZlMjEuLjBkOWQ1MjRkNzliNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQpAQCAt
MTQsNDMgKzE0LDI2IEBADQogDQogI2luY2x1ZGUgInNlbGZ0ZXN0LmgiDQogDQotc3RhdGljIHN0
cnVjdCBrbWVtX2NhY2hlICpzbGFiX2ZlbmNlczsNCi0NCi1zdGF0aWMgc3RydWN0IG1vY2tfZmVu
Y2Ugew0KLQlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQotCXN0cnVjdCBzcGlubG9jayBsb2NrOw0K
LX0gKnRvX21vY2tfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikgew0KLQlyZXR1cm4gY29udGFp
bmVyX29mKGYsIHN0cnVjdCBtb2NrX2ZlbmNlLCBiYXNlKTsNCi19DQotDQogc3RhdGljIGNvbnN0
IGNoYXIgKm1vY2tfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KIHsNCiAJcmV0dXJuICJtb2Nr
IjsNCiB9DQogDQotc3RhdGljIHZvaWQgbW9ja19mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVu
Y2UgKmYpDQotew0KLQlrbWVtX2NhY2hlX2ZyZWUoc2xhYl9mZW5jZXMsIHRvX21vY2tfZmVuY2Uo
ZikpOw0KLX0NCi0NCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgbW9ja19vcHMg
PSB7DQogCS5nZXRfZHJpdmVyX25hbWUgPSBtb2NrX25hbWUsDQogCS5nZXRfdGltZWxpbmVfbmFt
ZSA9IG1vY2tfbmFtZSwNCi0JLnJlbGVhc2UgPSBtb2NrX2ZlbmNlX3JlbGVhc2UsDQogfTsNCiAN
CiBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqbW9ja19mZW5jZSh2b2lkKQ0KIHsNCi0Jc3RydWN0
IG1vY2tfZmVuY2UgKmY7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmY7DQogDQotCWYgPSBrbWVtX2Nh
Y2hlX2FsbG9jKHNsYWJfZmVuY2VzLCBHRlBfS0VSTkVMKTsNCisJZiA9IGttYWxsb2Moc2l6ZW9m
KCpmKSwgR0ZQX0tFUk5FTCk7DQogCWlmICghZikNCiAJCXJldHVybiBOVUxMOw0KIA0KLQlzcGlu
X2xvY2tfaW5pdCgmZi0+bG9jayk7DQotCWRtYV9mZW5jZV9pbml0KCZmLT5iYXNlLCAmbW9ja19v
cHMsICZmLT5sb2NrLCAwLCAwKTsNCi0NCi0JcmV0dXJuICZmLT5iYXNlOw0KKwlkbWFfZmVuY2Vf
aW5pdChmLCAmbW9ja19vcHMsIE5VTEwsIDAsIDApOw0KKwlyZXR1cm4gZjsNCiB9DQogDQogc3Rh
dGljIGludCBzYW5pdHljaGVjayh2b2lkICphcmcpDQpAQCAtMTAwLDYgKzgzLDExIEBAIHN0YXRp
YyBpbnQgdGVzdF9zaWduYWxpbmcodm9pZCAqYXJnKQ0KIAkJZ290byBlcnJfZnJlZTsNCiAJfQ0K
IA0KKwlpZiAocmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmLT5vcHMsIHRydWUpKSB7DQorCQlw
cl9lcnIoIkZlbmNlIG9wcyBub3QgY2xlYXJlZCBvbiBzaWduYWxcbiIpOw0KKwkJZ290byBlcnJf
ZnJlZTsNCisJfQ0KKw0KIAllcnIgPSAwOw0KIGVycl9mcmVlOg0KIAlkbWFfZmVuY2VfcHV0KGYp
Ow0KQEAgLTU0MCwxOSArNTI4LDcgQEAgaW50IGRtYV9mZW5jZSh2b2lkKQ0KIAkJU1VCVEVTVCh0
ZXN0X3N0dWIpLA0KIAkJU1VCVEVTVChyYWNlX3NpZ25hbF9jYWxsYmFjayksDQogCX07DQotCWlu
dCByZXQ7DQogDQogCXByX2luZm8oInNpemVvZihkbWFfZmVuY2UpPSV6dVxuIiwgc2l6ZW9mKHN0
cnVjdCBkbWFfZmVuY2UpKTsNCi0NCi0Jc2xhYl9mZW5jZXMgPSBLTUVNX0NBQ0hFKG1vY2tfZmVu
Y2UsDQotCQkJCSBTTEFCX1RZUEVTQUZFX0JZX1JDVSB8DQotCQkJCSBTTEFCX0hXQ0FDSEVfQUxJ
R04pOw0KLQlpZiAoIXNsYWJfZmVuY2VzKQ0KLQkJcmV0dXJuIC1FTk9NRU07DQotDQotCXJldCA9
IHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsNCi0NCi0Ja21lbV9jYWNoZV9kZXN0cm95KHNsYWJfZmVu
Y2VzKTsNCi0NCi0JcmV0dXJuIHJldDsNCisJcmV0dXJuIHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsN
CiB9DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
