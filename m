Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD60C58162
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:56:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6708E3F8A2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:56:49 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id 05BFB3F842
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=j934+n5x;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7277324204so121544466b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045626; x=1763650426; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDmGhC4poHHOCVp4/+rZmG2NQB5w3fRb79F0uNoorl4=;
        b=j934+n5xpvRhjf4197YJHDD+e8uORFWATwMH/YDqfl2cqjeT71RUZyqOAam5aqoB6B
         oLTFKAgL0RxuzLMVLB2D+UVmRNPC+PbloZL8viANPIqo5NXKeeLy9MDWPCrsuI6qI3xd
         1v4Ndwigz/7dCnNjWl8w/VkajPLz6AAqElVni/ipGxx8+baMCOO71SHneePtQBdQHqdk
         kX2BYdracTf8VKZ5xwOXI36YO8bNDKUuMlHrWE0jAnPeo4ZhFxgHbF/TlcSm9tPuI1k7
         TSrXTb80ofp8Y/xHyda1KAxHb4pcvdHQspucrwY2MEfn6P1ePGQAYnQJ8+LTGOUCCAL1
         1pBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045626; x=1763650426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BDmGhC4poHHOCVp4/+rZmG2NQB5w3fRb79F0uNoorl4=;
        b=FXIqOBi+ym4KXism87c3x4+kohOSMIRsSe+2iyRmgcNxQS8+0DC3e5fnf+KojH10GW
         /Wgf8nQERtTHGzNHgbn8GrXTLsMb5QMGFdluwOe5sJqw5Ff+xUVNKH5dJV6HgzleZ/jP
         pJ0WRo/e1nEpbx9HNVWil40BC3XuLj+26xDpWol/yjx20kG+Ie7alnrhTZPYwpxjqOMs
         FPKaAvVdNuke10iIIvPBoPHeGgTfLx6ZLdfPg6XWJJSUr41fmhO0ZqiM8AIPU0ug4Qee
         Zp8ACzrWbLi2DFpDGYfiopCFSKmy+LFhlcMNVh61ZZNNGtcA06HBHPwkXnVr7etG2U5t
         0s3g==
X-Forwarded-Encrypted: i=1; AJvYcCVm45vMvE61iofuL0cjwcb0hlSdnxZPCUlLpHWJ+HpA7SomT2/xfr4UbmbXtWZXtfJ115fSECJ/moK3Pjl1@lists.linaro.org
X-Gm-Message-State: AOJu0YzcHosLieVyF9mOoyCOrXSD7E6tmCKDsFlR//1co1RzOS5CA2k9
	VawrLh3TI3c+dOdSYWycmpB/kOS7Ob8kuncsTryfJAPjCEgWcun9IPNK
X-Gm-Gg: ASbGncs0QXwQO15O2BiGOVs9kxTEvrF/H6cpRMxCjxONPCwdXpGlMVDfbCi2Sz5q0m8
	TQZ7wVesZd+AvocIp/KryaJt1irtSkcmVP/U/clI2caHUOLzEBH/Q29tiI8oh+jUsyZQ8KrQva4
	a3VBg3bN0A9yWigwQVLt5FHHzdJ3zNSxn6ifrc8atFOXYBYEhDlOz28la3FwCiXm3DRlu23uvFg
	gv7GK2zqqL3IqGcsC0CfLsrj0jX9aj7xfX9PZdGJDH+ir+FdRvaegwhko/PQOkL2xUzf55oDpFc
	fqf2M3cVCcHt1VnOdAc8np5jGSnk98XOzfIREUYdtKY2B6xXcYld4ul2gK1x0ASGy05e7eSJ/Fu
	2J9cGKwK6ueNbofloTr4/77ZQUKVwsJGQfWkS6HZkpSLx1Evwzst5HltNBdBj9MVymJNG8BkRj7
	5ocuzK/MLSx0U=
X-Google-Smtp-Source: AGHT+IEHqf/W9Q9tHnOjUMme41DFJUZbZef46sbvtoKI6LdczIqJfDuJA/9Ol450qYhhIBwYOSiHvw==
X-Received: by 2002:a17:907:60d3:b0:b6d:7d46:52b2 with SMTP id a640c23a62f3a-b733197ed00mr714044566b.15.1763045625864;
        Thu, 13 Nov 2025 06:53:45 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:45 -0800 (PST)
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
Date: Thu, 13 Nov 2025 15:51:51 +0100
Message-ID: <20251113145332.16805-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 05BFB3F842
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
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
Message-ID-Hash: LWXUFXQSNTQ6KGD56ITLWLP7LEB3U2IX
X-Message-ID-Hash: LWXUFXQSNTQ6KGD56ITLWLP7LEB3U2IX
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 14/18] drm/amdgpu: independence for the amdgpu_userq__fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LWXUFXQSNTQ6KGD56ITLWLP7LEB3U2IX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzaG91bGQgYWxsb3cgYW1kZ3B1X3VzZXJxX2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRn
cHUgbW9kdWxlLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZHJ2LmMgICAgICAgfCAxMyArLS0tLQ0KIC4uLi9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3Vz
ZXJxX2ZlbmNlLmMgICB8IDU0ICsrKystLS0tLS0tLS0tLS0tLS0NCiAuLi4vZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV91c2VycV9mZW5jZS5oICAgfCAgOCAtLS0NCiAzIGZpbGVzIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKyksIDY0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2Rydi5jDQppbmRleCBjYjUyMmQ2MjcyZDYuLjY0MzFmYjRhMjRjOSAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jDQpAQCAtMzEyOSwxMSArMzEy
OSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGFtZGdwdV9pbml0KHZvaWQpDQogDQogCXIgPSBhbWRn
cHVfc3luY19pbml0KCk7DQogCWlmIChyKQ0KLQkJZ290byBlcnJvcl9zeW5jOw0KLQ0KLQlyID0g
YW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWJfaW5pdCgpOw0KLQlpZiAocikNCi0JCWdvdG8gZXJyb3Jf
ZmVuY2U7DQorCQlyZXR1cm4gcjsNCiANCiAJRFJNX0lORk8oImFtZGdwdSBrZXJuZWwgbW9kZXNl
dHRpbmcgZW5hYmxlZC5cbiIpOw0KIAlhbWRncHVfcmVnaXN0ZXJfYXRweF9oYW5kbGVyKCk7DQpA
QCAtMzE1MCwxMiArMzE0Niw2IEBAIHN0YXRpYyBpbnQgX19pbml0IGFtZGdwdV9pbml0KHZvaWQp
DQogDQogCS8qIGxldCBtb2Rwcm9iZSBvdmVycmlkZSB2Z2EgY29uc29sZSBzZXR0aW5nICovDQog
CXJldHVybiBwY2lfcmVnaXN0ZXJfZHJpdmVyKCZhbWRncHVfa21zX3BjaV9kcml2ZXIpOw0KLQ0K
LWVycm9yX2ZlbmNlOg0KLQlhbWRncHVfc3luY19maW5pKCk7DQotDQotZXJyb3Jfc3luYzoNCi0J
cmV0dXJuIHI7DQogfQ0KIA0KIHN0YXRpYyB2b2lkIF9fZXhpdCBhbWRncHVfZXhpdCh2b2lkKQ0K
QEAgLTMxNjUsNyArMzE1NSw2IEBAIHN0YXRpYyB2b2lkIF9fZXhpdCBhbWRncHVfZXhpdCh2b2lk
KQ0KIAlhbWRncHVfdW5yZWdpc3Rlcl9hdHB4X2hhbmRsZXIoKTsNCiAJYW1kZ3B1X2FjcGlfcmVs
ZWFzZSgpOw0KIAlhbWRncHVfc3luY19maW5pKCk7DQotCWFtZGdwdV91c2VycV9mZW5jZV9zbGFi
X2ZpbmkoKTsNCiAJbW11X25vdGlmaWVyX3N5bmNocm9uaXplKCk7DQogCWFtZGdwdV94Y3BfZHJ2
X3JlbGVhc2UoKTsNCiB9DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X3VzZXJxX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dXNlcnFfZmVuY2UuYw0KaW5kZXggOTlhZTFkMTliNzUxLi4wOGMzZGE4NmIzNmQgMTAwNjQ0DQot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuYw0KKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2ZlbmNlLmMNCkBAIC0z
MywyNiArMzMsNiBAQA0KICNpbmNsdWRlICJhbWRncHVfdXNlcnFfZmVuY2UuaCINCiANCiBzdGF0
aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgYW1kZ3B1X3VzZXJxX2ZlbmNlX29wczsNCi1z
dGF0aWMgc3RydWN0IGttZW1fY2FjaGUgKmFtZGdwdV91c2VycV9mZW5jZV9zbGFiOw0KLQ0KLWlu
dCBhbWRncHVfdXNlcnFfZmVuY2Vfc2xhYl9pbml0KHZvaWQpDQotew0KLQlhbWRncHVfdXNlcnFf
ZmVuY2Vfc2xhYiA9IGttZW1fY2FjaGVfY3JlYXRlKCJhbWRncHVfdXNlcnFfZmVuY2UiLA0KLQkJ
CQkJCSAgICBzaXplb2Yoc3RydWN0IGFtZGdwdV91c2VycV9mZW5jZSksDQotCQkJCQkJICAgIDAs
DQotCQkJCQkJICAgIFNMQUJfSFdDQUNIRV9BTElHTiwNCi0JCQkJCQkgICAgTlVMTCk7DQotCWlm
ICghYW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWIpDQotCQlyZXR1cm4gLUVOT01FTTsNCi0NCi0JcmV0
dXJuIDA7DQotfQ0KLQ0KLXZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWJfZmluaSh2b2lkKQ0K
LXsNCi0JcmN1X2JhcnJpZXIoKTsNCi0Ja21lbV9jYWNoZV9kZXN0cm95KGFtZGdwdV91c2VycV9m
ZW5jZV9zbGFiKTsNCi19DQogDQogc3RhdGljIGlubGluZSBzdHJ1Y3QgYW1kZ3B1X3VzZXJxX2Zl
bmNlICp0b19hbWRncHVfdXNlcnFfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikNCiB7DQpAQCAt
MjI2LDcgKzIwNiw3IEBAIHZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9wdXQoc3RydWN0
IGFtZGdwdV91c2VycV9mZW5jZV9kcml2ZXIgKmZlbmNlX2RydikNCiANCiBzdGF0aWMgaW50IGFt
ZGdwdV91c2VycV9mZW5jZV9hbGxvYyhzdHJ1Y3QgYW1kZ3B1X3VzZXJxX2ZlbmNlICoqdXNlcnFf
ZmVuY2UpDQogew0KLQkqdXNlcnFfZmVuY2UgPSBrbWVtX2NhY2hlX2FsbG9jKGFtZGdwdV91c2Vy
cV9mZW5jZV9zbGFiLCBHRlBfQVRPTUlDKTsNCisJKnVzZXJxX2ZlbmNlID0ga21hbGxvYyhzaXpl
b2YoKip1c2VycV9mZW5jZSksIEdGUF9BVE9NSUMpOw0KIAlyZXR1cm4gKnVzZXJxX2ZlbmNlID8g
MCA6IC1FTk9NRU07DQogfQ0KIA0KQEAgLTI0MiwxMiArMjIyLDExIEBAIHN0YXRpYyBpbnQgYW1k
Z3B1X3VzZXJxX2ZlbmNlX2NyZWF0ZShzdHJ1Y3QgYW1kZ3B1X3VzZXJtb2RlX3F1ZXVlICp1c2Vy
cSwNCiAJaWYgKCFmZW5jZV9kcnYpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCi0Jc3Bpbl9sb2Nr
X2luaXQoJnVzZXJxX2ZlbmNlLT5sb2NrKTsNCiAJSU5JVF9MSVNUX0hFQUQoJnVzZXJxX2ZlbmNl
LT5saW5rKTsNCiAJZmVuY2UgPSAmdXNlcnFfZmVuY2UtPmJhc2U7DQogCXVzZXJxX2ZlbmNlLT5m
ZW5jZV9kcnYgPSBmZW5jZV9kcnY7DQogDQotCWRtYV9mZW5jZV9pbml0NjQoZmVuY2UsICZhbWRn
cHVfdXNlcnFfZmVuY2Vfb3BzLCAmdXNlcnFfZmVuY2UtPmxvY2ssDQorCWRtYV9mZW5jZV9pbml0
NjQoZmVuY2UsICZhbWRncHVfdXNlcnFfZmVuY2Vfb3BzLCBOVUxMLA0KIAkJCSBmZW5jZV9kcnYt
PmNvbnRleHQsIHNlcSk7DQogDQogCWFtZGdwdV91c2VycV9mZW5jZV9kcml2ZXJfZ2V0KGZlbmNl
X2Rydik7DQpAQCAtMzE3LDM1ICsyOTYsMjIgQEAgc3RhdGljIGJvb2wgYW1kZ3B1X3VzZXJxX2Zl
bmNlX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQogCXJwdHIgPSBhbWRncHVfdXNlcnFf
ZmVuY2VfcmVhZChmZW5jZV9kcnYpOw0KIAl3cHRyID0gZmVuY2UtPmJhc2Uuc2Vxbm87DQogDQot
CWlmIChycHRyID49IHdwdHIpDQorCWlmIChycHRyID49IHdwdHIpIHsNCisJCWFtZGdwdV91c2Vy
cV9mZW5jZV9kcml2ZXJfcHV0KGZlbmNlLT5mZW5jZV9kcnYpOw0KKwkJZmVuY2UtPmZlbmNlX2Ry
diA9IE5VTEw7DQorDQorCQlrdmZyZWUoZmVuY2UtPmZlbmNlX2Rydl9hcnJheSk7DQorCQlmZW5j
ZS0+ZmVuY2VfZHJ2X2FycmF5ID0gTlVMTDsNCiAJCXJldHVybiB0cnVlOw0KKwl9DQogDQogCXJl
dHVybiBmYWxzZTsNCiB9DQogDQotc3RhdGljIHZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX2ZyZWUo
c3RydWN0IHJjdV9oZWFkICpyY3UpDQotew0KLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IGNv
bnRhaW5lcl9vZihyY3UsIHN0cnVjdCBkbWFfZmVuY2UsIHJjdSk7DQotCXN0cnVjdCBhbWRncHVf
dXNlcnFfZmVuY2UgKnVzZXJxX2ZlbmNlID0gdG9fYW1kZ3B1X3VzZXJxX2ZlbmNlKGZlbmNlKTsN
Ci0Jc3RydWN0IGFtZGdwdV91c2VycV9mZW5jZV9kcml2ZXIgKmZlbmNlX2RydiA9IHVzZXJxX2Zl
bmNlLT5mZW5jZV9kcnY7DQotDQotCS8qIFJlbGVhc2UgdGhlIGZlbmNlIGRyaXZlciByZWZlcmVu
Y2UgKi8NCi0JYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9wdXQoZmVuY2VfZHJ2KTsNCi0NCi0J
a3ZmcmVlKHVzZXJxX2ZlbmNlLT5mZW5jZV9kcnZfYXJyYXkpOw0KLQlrbWVtX2NhY2hlX2ZyZWUo
YW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWIsIHVzZXJxX2ZlbmNlKTsNCi19DQotDQotc3RhdGljIHZv
aWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZikNCi17DQot
CWNhbGxfcmN1KCZmLT5yY3UsIGFtZGdwdV91c2VycV9mZW5jZV9mcmVlKTsNCi19DQotDQogc3Rh
dGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGFtZGdwdV91c2VycV9mZW5jZV9vcHMgPSB7
DQogCS5nZXRfZHJpdmVyX25hbWUgPSBhbWRncHVfdXNlcnFfZmVuY2VfZ2V0X2RyaXZlcl9uYW1l
LA0KIAkuZ2V0X3RpbWVsaW5lX25hbWUgPSBhbWRncHVfdXNlcnFfZmVuY2VfZ2V0X3RpbWVsaW5l
X25hbWUsDQogCS5zaWduYWxlZCA9IGFtZGdwdV91c2VycV9mZW5jZV9zaWduYWxlZCwNCi0JLnJl
bGVhc2UgPSBhbWRncHVfdXNlcnFfZmVuY2VfcmVsZWFzZSwNCiB9Ow0KIA0KIC8qKg0KQEAgLTU1
OSw3ICs1MjUsNyBAQCBpbnQgYW1kZ3B1X3VzZXJxX3NpZ25hbF9pb2N0bChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LCB2b2lkICpkYXRhLA0KIAlyID0gYW1kZ3B1X3VzZXJxX2ZlbmNlX2NyZWF0ZShx
dWV1ZSwgdXNlcnFfZmVuY2UsIHdwdHIsICZmZW5jZSk7DQogCWlmIChyKSB7DQogCQltdXRleF91
bmxvY2soJnVzZXJxX21nci0+dXNlcnFfbXV0ZXgpOw0KLQkJa21lbV9jYWNoZV9mcmVlKGFtZGdw
dV91c2VycV9mZW5jZV9zbGFiLCB1c2VycV9mZW5jZSk7DQorCQlrZnJlZSh1c2VycV9mZW5jZSk7
DQogCQlnb3RvIHB1dF9nb2JqX3dyaXRlOw0KIAl9DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2ZlbmNlLmggYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuaA0KaW5kZXggZDc2YWRkMmFmYzc3Li42ZjA0
NzgyZjNlYTkgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dXNlcnFfZmVuY2UuaA0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3Vz
ZXJxX2ZlbmNlLmgNCkBAIC0zMSwxMSArMzEsNiBAQA0KIA0KIHN0cnVjdCBhbWRncHVfdXNlcnFf
ZmVuY2Ugew0KIAlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQotCS8qDQotCSAqIFRoaXMgbG9jayBp
cyBuZWNlc3NhcnkgdG8gc3luY2hyb25pemUgdGhlDQotCSAqIHVzZXJxdWV1ZSBkbWEgZmVuY2Ug
b3BlcmF0aW9ucy4NCi0JICovDQotCXNwaW5sb2NrX3QgbG9jazsNCiAJc3RydWN0IGxpc3RfaGVh
ZCBsaW5rOw0KIAl1bnNpZ25lZCBsb25nIGZlbmNlX2Rydl9hcnJheV9jb3VudDsNCiAJc3RydWN0
IGFtZGdwdV91c2VycV9mZW5jZV9kcml2ZXIgKmZlbmNlX2RydjsNCkBAIC01OCw5ICs1Myw2IEBA
IHN0cnVjdCBhbWRncHVfdXNlcnFfZmVuY2VfZHJpdmVyIHsNCiAJY2hhciB0aW1lbGluZV9uYW1l
W1RBU0tfQ09NTV9MRU5dOw0KIH07DQogDQotaW50IGFtZGdwdV91c2VycV9mZW5jZV9zbGFiX2lu
aXQodm9pZCk7DQotdm9pZCBhbWRncHVfdXNlcnFfZmVuY2Vfc2xhYl9maW5pKHZvaWQpOw0KLQ0K
IHZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9nZXQoc3RydWN0IGFtZGdwdV91c2VycV9m
ZW5jZV9kcml2ZXIgKmZlbmNlX2Rydik7DQogdm9pZCBhbWRncHVfdXNlcnFfZmVuY2VfZHJpdmVy
X3B1dChzdHJ1Y3QgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlciAqZmVuY2VfZHJ2KTsNCiBpbnQg
YW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9hbGxvYyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRl
diwNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
