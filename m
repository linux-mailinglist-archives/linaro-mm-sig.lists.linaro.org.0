Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5436AC58159
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:56:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60E623F899
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:56:35 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 464893F850
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Gugw7Wuv;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-640a3317b89so1462127a12.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045625; x=1763650425; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d60aBazDWbkC6SN5VickRHXPpToN2SMExeMru/kntlk=;
        b=Gugw7WuvVyKaDJPFxDWcJmT8om+zayrXzH/MYy96JuRpu4ox2Hm8V6yqx04oDn8jKo
         jxU70gGDEaW9urW+MwoCxlIRNs95Jf5+k+xVhU/P3g/cnbPDEEmOcYZbzwyks0o5bMM4
         RoCUul3kVGc0kEoQBeOH06vHYWd1VwYNLGB09PNh2bSSeKZRsou2t0YMA0HF1YHlZJFU
         dNoI75eYngkyKtVBHT0HO6p/9SibZKVZGJS8FZUmK5Bj3LTeGmKCAglD2S9/qJuHa9yi
         tcyu5VgaD0/tWylgO1kcptmfDXMsc9d6iC9/XJZTG7uGBw41enz96HuTMD2qG2tDyslL
         uGzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045625; x=1763650425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d60aBazDWbkC6SN5VickRHXPpToN2SMExeMru/kntlk=;
        b=VzhbC9wquxi9/TyBcbMOkCD3fE2Ia7kFqKBwqsVIacOCRU0jWJqFIWx2f32kvolXe1
         SsQxqJ4KhxiQbp8fJyPnl2/hT4TrB6rXHDKeoh0wxtuqyOM7tImi5HSdn7EefCOkakEA
         SlQMhUxLFgXceZbOSguxwqmuT59VXIVgWwScHN68Xyx12DCgTGLEHfWrWi1M/B04VyKf
         jWeeLSJF4PUJwNfFUG2Ttu6dEnr6VThEI1D9kiwTGFNxRErLeq+1XjVACXWM2MZiDJZA
         LXuEvKdVIds+JXvLADx4DX7AhiMTdf4BYbRXQScnLmNihOGI2RFt+/0c6H9yMaEGvMNL
         wj4A==
X-Forwarded-Encrypted: i=1; AJvYcCW5SLNKr7VHim6cFcSb3XMIxt89c9+tOJbNXjmRfauKyBnqKfjPKr8ZMBfKM4+uU+PkS/8LXc9+fmA0y35K@lists.linaro.org
X-Gm-Message-State: AOJu0Yw3e7QcfGR71E/Vf51Tz0IYSnsDs4mndh6u1gwKjbfMkOLIr4ad
	XiHwKAlyX+2T8WxT+/D+6RYMQOkRlt6gdCH3L6Si8Few+hXzO06V0emU
X-Gm-Gg: ASbGncvU1DqMVhsjCjFVaGPu6Rd1RIEWGbhsNQJtAI+3qjUfTvhBA6ARHc3jwzsxwkp
	38wuJwy7S/V1cm2oP/19KU0CE7yVRFPc3jjm0FVfGzFyV+LyzUenyF2OrWcibA2wpLKUZxu4l35
	ecxCWvXjuT8faiJjTsb0rePpo1IMo2tq8fIRJtIAJDUVzrh2EJFUFj4/B3pMToGY7Gjnmd2otkz
	5fZ3+TgT6qZbk/v7ybfQP+8lgFIt7onUkGHtggvtHsFRruVaiTqiaA8PnDPDZwSQA8XCais2bcV
	DfolRzHwcVv+LIcie7NJwOZMwQUlW6BBXtISyHAaSmBlc6AFUb+6eeU8TbidNhKPTTiZHEHNHOj
	JjpLwJ+3g6okbFVkkBfK2ycZuDIoW9QG+33uE3Dtb7/VARD9zAN9j9nooz+j8l8JlWqjhiuKp66
	1U4ouL01t1zTA=
X-Google-Smtp-Source: AGHT+IHKkfTihWpoKaVm2soOqZKTAx9lNE4iTxUg90zWzqQDFyB568FD//vjR038ewdtgv1io8IVrg==
X-Received: by 2002:a17:906:6a10:b0:b72:c1bc:d63 with SMTP id a640c23a62f3a-b7331b2f9b0mr739948966b.60.1763045625058;
        Thu, 13 Nov 2025 06:53:45 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:44 -0800 (PST)
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
Date: Thu, 13 Nov 2025 15:51:50 +0100
Message-ID: <20251113145332.16805-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 464893F850
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.44:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: MMJZ2QXTAW4SREVONQYJ4GIDBLDRUHGW
X-Message-ID-Hash: MMJZ2QXTAW4SREVONQYJ4GIDBLDRUHGW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 13/18] drm/amdgpu: independence for the amdkfd_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MMJZ2QXTAW4SREVONQYJ4GIDBLDRUHGW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzaG91bGQgYWxsb3cgYW1ka2ZkX2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUgbW9k
dWxlLg0KDQp2MjogaW1wbGVtZW50IEZlbGl4IHN1Z2dlc3Rpb24gdG8gbG9jayB0aGUgZmVuY2Ug
d2hpbGUgc2lnbmFsaW5nIGl0Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfYW1ka2ZkLmggICAgfCAgNiArKysNCiAuLi4vZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9hbWRrZmRfZmVuY2UuYyAgfCAzOSArKysrKysrKy0tLS0tLS0tLS0tDQogZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYyAgICAgIHwgIDcgKystLQ0KIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9zdm0uYyAgICAgICAgICB8ICA0ICstDQogNCBmaWxlcyBj
aGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmQuaCBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmQuaA0KaW5kZXggOGJkZmNkZTIwMjliLi42MjU0
Y2VmMDQyMTMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
YW1ka2ZkLmgNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmQu
aA0KQEAgLTE5Niw2ICsxOTYsNyBAQCBpbnQga2ZkX2RlYnVnZnNfa2ZkX21lbV9saW1pdHMoc3Ry
dWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKTsNCiAjZW5kaWYNCiAjaWYgSVNfRU5BQkxFRChD
T05GSUdfSFNBX0FNRCkNCiBib29sIGFtZGtmZF9mZW5jZV9jaGVja19tbShzdHJ1Y3QgZG1hX2Zl
bmNlICpmLCBzdHJ1Y3QgbW1fc3RydWN0ICptbSk7DQordm9pZCBhbWRrZmRfZmVuY2Vfc2lnbmFs
KHN0cnVjdCBkbWFfZmVuY2UgKmYpOw0KIHN0cnVjdCBhbWRncHVfYW1ka2ZkX2ZlbmNlICp0b19h
bWRncHVfYW1ka2ZkX2ZlbmNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpOw0KIHZvaWQgYW1kZ3B1X2Ft
ZGtmZF9yZW1vdmVfYWxsX2V2aWN0aW9uX2ZlbmNlcyhzdHJ1Y3QgYW1kZ3B1X2JvICpibyk7DQog
aW50IGFtZGdwdV9hbWRrZmRfZXZpY3RfdXNlcnB0cihzdHJ1Y3QgbW11X2ludGVydmFsX25vdGlm
aWVyICptbmksDQpAQCAtMjEwLDYgKzIxMSwxMSBAQCBib29sIGFtZGtmZF9mZW5jZV9jaGVja19t
bShzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBzdHJ1Y3QgbW1fc3RydWN0ICptbSkNCiAJcmV0dXJuIGZh
bHNlOw0KIH0NCiANCitzdGF0aWMgaW5saW5lDQordm9pZCBhbWRrZmRfZmVuY2Vfc2lnbmFsKHN0
cnVjdCBkbWFfZmVuY2UgKmYpDQorew0KK30NCisNCiBzdGF0aWMgaW5saW5lDQogc3RydWN0IGFt
ZGdwdV9hbWRrZmRfZmVuY2UgKnRvX2FtZGdwdV9hbWRrZmRfZmVuY2Uoc3RydWN0IGRtYV9mZW5j
ZSAqZikNCiB7DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2FtZGtmZF9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtm
ZF9mZW5jZS5jDQppbmRleCAwOWM5MTlmNzJiNmMuLmY3NmMzYzUyYTJhMSAxMDA2NDQNCi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZF9mZW5jZS5jDQpAQCAtMTI3
LDI5ICsxMjcsOSBAQCBzdGF0aWMgYm9vbCBhbWRrZmRfZmVuY2VfZW5hYmxlX3NpZ25hbGluZyhz
dHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KIAkJaWYgKCFzdm1fcmFuZ2Vfc2NoZWR1bGVfZXZpY3Rfc3Zt
X2JvKGZlbmNlKSkNCiAJCQlyZXR1cm4gdHJ1ZTsNCiAJfQ0KLQlyZXR1cm4gZmFsc2U7DQotfQ0K
LQ0KLS8qKg0KLSAqIGFtZGtmZF9mZW5jZV9yZWxlYXNlIC0gY2FsbGJhY2sgdGhhdCBmZW5jZSBj
YW4gYmUgZnJlZWQNCi0gKg0KLSAqIEBmOiBkbWFfZmVuY2UNCi0gKg0KLSAqIFRoaXMgZnVuY3Rp
b24gaXMgY2FsbGVkIHdoZW4gdGhlIHJlZmVyZW5jZSBjb3VudCBiZWNvbWVzIHplcm8uDQotICog
RHJvcHMgdGhlIG1tX3N0cnVjdCByZWZlcmVuY2UgYW5kIFJDVSBzY2hlZHVsZXMgZnJlZWluZyB1
cCB0aGUgZmVuY2UuDQotICovDQotc3RhdGljIHZvaWQgYW1ka2ZkX2ZlbmNlX3JlbGVhc2Uoc3Ry
dWN0IGRtYV9mZW5jZSAqZikNCi17DQotCXN0cnVjdCBhbWRncHVfYW1ka2ZkX2ZlbmNlICpmZW5j
ZSA9IHRvX2FtZGdwdV9hbWRrZmRfZmVuY2UoZik7DQotDQotCS8qIFVuY29uZGl0aW9uYWxseSBz
aWduYWwgdGhlIGZlbmNlLiBUaGUgcHJvY2VzcyBpcyBnZXR0aW5nDQotCSAqIHRlcm1pbmF0ZWQu
DQotCSAqLw0KLQlpZiAoV0FSTl9PTighZmVuY2UpKQ0KLQkJcmV0dXJuOyAvKiBOb3QgYW4gYW1k
Z3B1X2FtZGtmZF9mZW5jZSAqLw0KLQ0KIAltbWRyb3AoZmVuY2UtPm1tKTsNCi0Ja2ZyZWVfcmN1
KGYsIHJjdSk7DQorCWZlbmNlLT5tbSA9IE5VTEw7DQorCXJldHVybiBmYWxzZTsNCiB9DQogDQog
LyoqDQpAQCAtMTc0LDkgKzE1NCwyMiBAQCBib29sIGFtZGtmZF9mZW5jZV9jaGVja19tbShzdHJ1
Y3QgZG1hX2ZlbmNlICpmLCBzdHJ1Y3QgbW1fc3RydWN0ICptbSkNCiAJcmV0dXJuIGZhbHNlOw0K
IH0NCiANCit2b2lkIGFtZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5jZSAqZikNCit7
DQorCXN0cnVjdCBhbWRncHVfYW1ka2ZkX2ZlbmNlICpmZW5jZSA9IHRvX2FtZGdwdV9hbWRrZmRf
ZmVuY2UoZik7DQorCWxvbmcgZmxhZ3M7DQorDQorCWRtYV9mZW5jZV9sb2NrX2lycXNhZmUoZiwg
ZmxhZ3MpDQorCWlmIChmZW5jZS0+bW0pIHsNCisJCW1tZHJvcChmZW5jZS0+bW0pOw0KKwkJZmVu
Y2UtPm1tID0gTlVMTDsNCisJfQ0KKwlkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChmKTsNCisJZG1h
X2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGYsIGZsYWdzKQ0KK30NCisNCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGRtYV9mZW5jZV9vcHMgYW1ka2ZkX2ZlbmNlX29wcyA9IHsNCiAJLmdldF9kcml2ZXJf
bmFtZSA9IGFtZGtmZF9mZW5jZV9nZXRfZHJpdmVyX25hbWUsDQogCS5nZXRfdGltZWxpbmVfbmFt
ZSA9IGFtZGtmZF9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwNCiAJLmVuYWJsZV9zaWduYWxpbmcg
PSBhbWRrZmRfZmVuY2VfZW5hYmxlX3NpZ25hbGluZywNCi0JLnJlbGVhc2UgPSBhbWRrZmRfZmVu
Y2VfcmVsZWFzZSwNCiB9Ow0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2Zk
L2tmZF9wcm9jZXNzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vzcy5j
DQppbmRleCBhMDg1ZmFhYzlmZTEuLjhmYWM3MGI4MzllZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMNCkBAIC0xMTczLDcgKzExNzMsNyBAQCBzdGF0aWMgdm9p
ZCBrZmRfcHJvY2Vzc193cV9yZWxlYXNlKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCiAJc3lu
Y2hyb25pemVfcmN1KCk7DQogCWVmID0gcmN1X2FjY2Vzc19wb2ludGVyKHAtPmVmKTsNCiAJaWYg
KGVmKQ0KLQkJZG1hX2ZlbmNlX3NpZ25hbChlZik7DQorCQlhbWRrZmRfZmVuY2Vfc2lnbmFsKGVm
KTsNCiANCiAJa2ZkX3Byb2Nlc3NfcmVtb3ZlX3N5c2ZzKHApOw0KIAlrZmRfZGVidWdmc19yZW1v
dmVfcHJvY2VzcyhwKTsNCkBAIC0xOTkwLDcgKzE5OTAsNiBAQCBrZmRfcHJvY2Vzc19ncHVpZF9m
cm9tX25vZGUoc3RydWN0IGtmZF9wcm9jZXNzICpwLCBzdHJ1Y3Qga2ZkX25vZGUgKm5vZGUsDQog
c3RhdGljIGludCBzaWduYWxfZXZpY3Rpb25fZmVuY2Uoc3RydWN0IGtmZF9wcm9jZXNzICpwKQ0K
IHsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZWY7DQotCWludCByZXQ7DQogDQogCXJjdV9yZWFkX2xv
Y2soKTsNCiAJZWYgPSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKCZwLT5lZik7DQpAQCAtMTk5OCwx
MCArMTk5NywxMCBAQCBzdGF0aWMgaW50IHNpZ25hbF9ldmljdGlvbl9mZW5jZShzdHJ1Y3Qga2Zk
X3Byb2Nlc3MgKnApDQogCWlmICghZWYpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCi0JcmV0ID0g
ZG1hX2ZlbmNlX3NpZ25hbChlZik7DQorCWFtZGtmZF9mZW5jZV9zaWduYWwoZWYpOw0KIAlkbWFf
ZmVuY2VfcHV0KGVmKTsNCiANCi0JcmV0dXJuIHJldDsNCisJcmV0dXJuIDA7DQogfQ0KIA0KIHN0
YXRpYyB2b2lkIGV2aWN0X3Byb2Nlc3Nfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCmluZGV4IGMzMGRmYjhlYzIzNi4uNTY2
OTUwNzAyYjdkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3N2
bS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCkBAIC00Mjgs
NyArNDI4LDcgQEAgc3RhdGljIHZvaWQgc3ZtX3JhbmdlX2JvX3JlbGVhc2Uoc3RydWN0IGtyZWYg
KmtyZWYpDQogDQogCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCZzdm1fYm8tPmV2aWN0aW9u
X2ZlbmNlLT5iYXNlKSkNCiAJCS8qIFdlJ3JlIG5vdCBpbiB0aGUgZXZpY3Rpb24gd29ya2VyLiBT
aWduYWwgdGhlIGZlbmNlLiAqLw0KLQkJZG1hX2ZlbmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlv
bl9mZW5jZS0+YmFzZSk7DQorCQlhbWRrZmRfZmVuY2Vfc2lnbmFsKCZzdm1fYm8tPmV2aWN0aW9u
X2ZlbmNlLT5iYXNlKTsNCiAJZG1hX2ZlbmNlX3B1dCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+
YmFzZSk7DQogCWFtZGdwdV9ib191bnJlZigmc3ZtX2JvLT5ibyk7DQogCWtmcmVlKHN2bV9ibyk7
DQpAQCAtMzYyOCw3ICszNjI4LDcgQEAgc3RhdGljIHZvaWQgc3ZtX3JhbmdlX2V2aWN0X3N2bV9i
b193b3JrZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KIAltbWFwX3JlYWRfdW5sb2NrKG1t
KTsNCiAJbW1wdXQobW0pOw0KIA0KLQlkbWFfZmVuY2Vfc2lnbmFsKCZzdm1fYm8tPmV2aWN0aW9u
X2ZlbmNlLT5iYXNlKTsNCisJYW1ka2ZkX2ZlbmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlvbl9m
ZW5jZS0+YmFzZSk7DQogDQogCS8qIFRoaXMgaXMgdGhlIGxhc3QgcmVmZXJlbmNlIHRvIHN2bV9i
bywgYWZ0ZXIgc3ZtX3JhbmdlX3ZyYW1fbm9kZV9mcmVlDQogCSAqIGhhcyBiZWVuIGNhbGxlZCBp
biBzdm1fbWlncmF0ZV92cmFtX3RvX3JhbQ0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
