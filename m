Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F7DD19DB0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 16:24:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A065140153
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 15:24:02 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 35A1740153
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 15:21:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=fBcbAYpX;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so84289335e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 07:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317696; x=1768922496; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PDOfduCvUazAGXO7sE9B3QJ7Rvq+vtVVo2kOgC2agQM=;
        b=fBcbAYpXUU747aujWRffvrF7OoD152X7LSDRpzGiLTAdze+aH0qzq9iv8cQjGdje5z
         h6LhXd6lML6MyJU8OBgVLkmexK0AJbqDY0mgp8Hu0j0gpZUqMW5H5c+1GlqPrI9pBlTM
         Hfz3A/J7s0vSoZqO73n0Yanhk6zNLXm138fJOOcQcuBAkJekaw6ko6zSDpRjRyS/emrl
         i4IzQubYHs7NrLEwGaG7xTDOJMuDGxeEAtqJo9rn6k1REKkCldkWzf3sTjnxnwVZEl4l
         a0nHt+w8dd9jTX4WK6M0nMM+TqdzhOzNlyly+Lw2Bo5fezVniWWgQl4xdpvyxYNQXjDC
         NQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317696; x=1768922496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PDOfduCvUazAGXO7sE9B3QJ7Rvq+vtVVo2kOgC2agQM=;
        b=jxoxlmWAeef9iS0MgddJou/fkKWM72+7CNkViwywQu/1e9BrmpTTo+hVKeNChOaB/D
         CZrbuSYQI5y2s+qWEX//myiZ2fKP8vmRaeziqeOYAfd5+3u9mJzIqeP7avCRnZ9uZf32
         VNo0ol8L9aijgyI6q1CsUh0RecBCjUQSfHu5w3VZahulC+K1neQimsmpjnPIcHvgNekQ
         FrIo07QrC7gelExDlWo3Tizx+XvNK58ZTIGBfmGDKnMTqziSo1VTkyvn4IJgtbvXV66i
         85Rr6zaQhJIlgHXxVGMGi3hjFBPWTqyYBw0bRk/pqEDC7+++VW3TOKpweu6K3jyEX7dS
         z6dg==
X-Forwarded-Encrypted: i=1; AJvYcCV8SdUlVyFSJ9cs2vRyXw9pLSPmDNUjs0LDEa1u6chquOJe9uMnrBmKcAdAgCpjs20jwJ+4eJl+pnSaY9Nc@lists.linaro.org
X-Gm-Message-State: AOJu0YwCwvug6okLhxMZ/zBkdbzlynteGyxqCvGyRMVg/b70BwKaSedz
	9ahKLAz+rrALM7ySuR358i31iYmwnsvU1Jt9IvCejOv1NVtj/MMl05lx
X-Gm-Gg: AY/fxX5A7orm4250DQBlFZRDZUz9Vn9XffcTMYBBbbNGyIZzUCxmIbAGJbJ3ceAUU4R
	ywGPHitA4WYvSyIrRma8La+Ny2oJ2rHIeZgow160Y2rsNHKNOM8w9osvkHsda5zJIpuQGKkyiSZ
	M1H/W/SNOD6f73AgQC8LLqPPGMtcjbRV0ulnhAurCWfSgQGJES831LCYW46BESRDQCoBeyJdHBE
	Tu9AU4xvMZ6E8RQQgPxTv0g2vMF0merDwI+wY5T2ErGPVU5PoUge5Tl3KsCxIylrF3tFN7WoiZf
	BooglTKoo511qmh8giaEmuBR8Q1uXMreO/WG5HbEmURF5ZjE7bwUI5w9l4kFNo6D1UD4S/O9RTQ
	8b1eNY51Y6TUYWWHSOlTqOFtAs9HNtU+FAlyWGNwPJ+C2PVPS7X0b+n+PzXorU6NcEzSzoNDkjj
	FHd6YvEBBLLdNvmjBKcDCGO/0/i2f9TyMKJA==
X-Google-Smtp-Source: AGHT+IHqCCMXA+YjTGBi/Hga0jizyr4ShDi/Djt4mhEwm/2S1qQx5Qge/+BgXRm7uSEN7200l+8OoQ==
X-Received: by 2002:a05:600c:3b90:b0:45d:d8d6:7fcc with SMTP id 5b1f17b1804b1-47d84b3864cmr268354705e9.27.1768317695905;
        Tue, 13 Jan 2026 07:21:35 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:141c:9800:1651:dfa:9e48:25d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm129518405e9.11.2026.01.13.07.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:21:35 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 16:16:17 +0100
Message-ID: <20260113152125.47380-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113152125.47380-1-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 35A1740153
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	URIBL_BLOCKED(0.00)[amd.com:email,amd.com:mid];
	DNSWL_BLOCKED(0.00)[2a00:e180:141c:9800:1651:dfa:9e48:25d5:received,209.85.128.49:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: F3PXAYHEWO7QQOEC2OMO4DTWLUDU7F6N
X-Message-ID-Hash: F3PXAYHEWO7QQOEC2OMO4DTWLUDU7F6N
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/10] drm/sched: use inline locks for the drm-sched-fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F3PXAYHEWO7QQOEC2OMO4DTWLUDU7F6N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UgaW1wbGVtZW50YXRpb25zLg0KDQpGb3IgdGhlIHNjaGVkdWxlciBmZW5jZSB1c2UgdGhl
IGlubGluZSBsb2NrIGZvciB0aGUgc2NoZWR1bGVkIGZlbmNlIHBhcnQNCmFuZCB0aGVuIHRoZSBs
b2NrIGZyb20gdGhlIHNjaGVkdWxlZCBmZW5jZSBhcyBleHRlcm5hbCBsb2NrIGZvciB0aGUgZmlu
aXNoZWQgZmVuY2UuDQoNClRoaXMgd2F5IHRoZXJlIGlzIG5vIGZ1bmN0aW9uYWwgZGlmZmVyZW5j
ZSwgZXhjZXB0IGZvciBzYXZpbmcgdGhlIHNwYWNlDQpmb3IgdGhlIHNlcGFyYXRlIGxvY2suDQoN
CnYyOiByZS13b3JrIHRoZSBwYXRjaCB0byBhdm9pZCBhbnkgZnVuY3Rpb25hbCBkaWZmZXJlbmNl
DQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDYg
KysrLS0tDQogaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oICAgICAgICAgICAgIHwgNCAtLS0t
DQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQoNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMNCmluZGV4IDcyNGQ3NzY5NDI0Ni4u
MTEyNjc3MjMxZjlhIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9mZW5jZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMN
CkBAIC0yMTcsNyArMjE3LDYgQEAgc3RydWN0IGRybV9zY2hlZF9mZW5jZSAqZHJtX3NjaGVkX2Zl
bmNlX2FsbG9jKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHksDQogDQogCWZlbmNlLT5v
d25lciA9IG93bmVyOw0KIAlmZW5jZS0+ZHJtX2NsaWVudF9pZCA9IGRybV9jbGllbnRfaWQ7DQot
CXNwaW5fbG9ja19pbml0KCZmZW5jZS0+bG9jayk7DQogDQogCXJldHVybiBmZW5jZTsNCiB9DQpA
QCAtMjMwLDkgKzIyOSwxMCBAQCB2b2lkIGRybV9zY2hlZF9mZW5jZV9pbml0KHN0cnVjdCBkcm1f
c2NoZWRfZmVuY2UgKmZlbmNlLA0KIAlmZW5jZS0+c2NoZWQgPSBlbnRpdHktPnJxLT5zY2hlZDsN
CiAJc2VxID0gYXRvbWljX2luY19yZXR1cm4oJmVudGl0eS0+ZmVuY2Vfc2VxKTsNCiAJZG1hX2Zl
bmNlX2luaXQoJmZlbmNlLT5zY2hlZHVsZWQsICZkcm1fc2NoZWRfZmVuY2Vfb3BzX3NjaGVkdWxl
ZCwNCi0JCSAgICAgICAmZmVuY2UtPmxvY2ssIGVudGl0eS0+ZmVuY2VfY29udGV4dCwgc2VxKTsN
CisJCSAgICAgICBOVUxMLCBlbnRpdHktPmZlbmNlX2NvbnRleHQsIHNlcSk7DQogCWRtYV9mZW5j
ZV9pbml0KCZmZW5jZS0+ZmluaXNoZWQsICZkcm1fc2NoZWRfZmVuY2Vfb3BzX2ZpbmlzaGVkLA0K
LQkJICAgICAgICZmZW5jZS0+bG9jaywgZW50aXR5LT5mZW5jZV9jb250ZXh0ICsgMSwgc2VxKTsN
CisJCSAgICAgICBkbWFfZmVuY2Vfc3BpbmxvY2soJmZlbmNlLT5zY2hlZHVsZWQpLA0KKwkJICAg
ICAgIGVudGl0eS0+ZmVuY2VfY29udGV4dCArIDEsIHNlcSk7DQogfQ0KIA0KIG1vZHVsZV9pbml0
KGRybV9zY2hlZF9mZW5jZV9zbGFiX2luaXQpOw0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dw
dV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KaW5kZXggNzhlMDdj
MjUwN2M3Li5hZDM3MDQ2ODUxNjMgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2RybS9ncHVfc2NoZWR1
bGVyLmgNCisrKyBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KQEAgLTI5NywxMCArMjk3
LDYgQEAgc3RydWN0IGRybV9zY2hlZF9mZW5jZSB7DQogICAgICAgICAgKiBiZWxvbmdzIHRvLg0K
ICAgICAgICAgICovDQogCXN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlcgkqc2NoZWQ7DQotICAgICAg
ICAvKioNCi0gICAgICAgICAqIEBsb2NrOiB0aGUgbG9jayB1c2VkIGJ5IHRoZSBzY2hlZHVsZWQg
YW5kIHRoZSBmaW5pc2hlZCBmZW5jZXMuDQotICAgICAgICAgKi8NCi0Jc3BpbmxvY2tfdAkJCWxv
Y2s7DQogICAgICAgICAvKioNCiAgICAgICAgICAqIEBvd25lcjogam9iIG93bmVyIGZvciBkZWJ1
Z2dpbmcNCiAgICAgICAgICAqLw0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
