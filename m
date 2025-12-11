Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E41CB5D4B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:26:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BD553F9B1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:26:47 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id E63B13F9B9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=nibDmWo0;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4779a637712so224955e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455858; x=1766060658; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PyPXU09MHf0sQOMw0xMzptL/19K/nBS/D4vJF5btR6A=;
        b=nibDmWo0sJeWYatnwYCJFF/wT+dp6W83oHABCsozFHtL67db8ND6kN7X7K7gAk8Jv2
         HGub1oksTWZVNmNSYS4kW45Su+o+F18w1S/UOXmNziCvDk0lbcDZQ3HwFLgqbDz2lHsc
         xtir4SIC+3QhQytfgXdFHLgbN37IiwEvUvjAk9quSo3I5zknLBM82YqRDo6gDv6yjnjV
         KeI/1Ey+MI97tEKTmaTAiRbMy+UJE7g+dKN5M7dVgIAzkYNe9VvOgkJ9HCL9hBN7TarS
         WfSPn6vPY7f9VIkL6kD4WMilfVkA6NZa/hygD01ToYf1N0p2K6EkAPPAlMxwQIn69zNH
         dgHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455858; x=1766060658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PyPXU09MHf0sQOMw0xMzptL/19K/nBS/D4vJF5btR6A=;
        b=OmIM+2WNvZf34LrCoyT1twhVUyXzPhYRHBFY0qD9yj6CLlhYL/WSk/pkKrYmMM/+6P
         8zrRVqZM+qTL9SjSbof+LqzcurqgBxzbyE+Wn/7Q2BX2LagBUNkHie0N8KObiEL/NnHq
         fyvDM+jkuUdldZXewXFKGVq+m2qtWWhpL8yiWsgZE6jFUKMMe4dH8tuXCoknd7JRYcAf
         bycOC7F5utoA4KGRVC7KoSCNzg1SvrTqXTjHauCj4swHaNdxU9xaozl0g6jM9s7LtE8J
         32jzzjlo9hPEv4IijeibgWbl5KvE9tZcsUtqBlTZ3WVKfgxu8yp39GSCaquIWQty00ai
         kUhw==
X-Forwarded-Encrypted: i=1; AJvYcCVdJKQSssm145XARn2iLBx/YmgHzjKQrvnuptJ2D52xdAP4G29uDw7JceXquEbedvHpb2Db2cfK1hZzsZno@lists.linaro.org
X-Gm-Message-State: AOJu0Yz0P7/uxhOqG9YglHky5lZ0KSpUD/oTywZu8EBxzIu/TYCK+v4Z
	vZkJdVottEPkiZYUe27hYyHyxALLkhmXeb95QZvNghWGT6aJ1oFpjnk4
X-Gm-Gg: AY/fxX6rrdf5it2Ssq8A37HtQ1o3z+fKUzBQaN1xNqQX4DFOfGXlWhg3l2TNTyakJto
	86m42eLjyIepascIawYi/GBgusCfbExy/ZTmthJL+/+0MSUoS1WYruf1evP3Lje8I6CnR1qhNWd
	Qqt5qWqY5V6n8+KIKqGvaoISJFDutKgbkU5U9ixWaE8BJDrIk9ooDxcPIJq30244rPuenufBBIt
	lTxhPHzQNKtdLWQm0pBST2j+26f7rNJBD4OzcsSyVfH5EbpQHLXs+LWpPFAOc49nTXhQcsIrYJe
	bUanL2A+FEGHDQ5grbLNd5XaAaOfKlbDVmQyPz2kz0rKZ5mov8uvLcZYgYuTWd/yrtgHDdvLztv
	jQcmZod/1fC5WcKI2Eak9IVmlBxW/c7T4CJID6uUy5Z3nhPeOwWu6t+mnJ6wq1ix8SP1PkGQcIZ
	gIMOqTsYTosRrp1cGbHuFD2/5G
X-Google-Smtp-Source: AGHT+IE3/mwwbZ/cKhn5lnPFOEc9dlpZzvgMg5X0IrfmoCvzdKuewBjuPU21bkVlBSzYEAgPEMitsg==
X-Received: by 2002:a05:600c:630c:b0:477:9392:8557 with SMTP id 5b1f17b1804b1-47a83790ca0mr60631865e9.18.1765455857859;
        Thu, 11 Dec 2025 04:24:17 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:17 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:40 +0100
Message-ID: <20251211122407.1709-10-christian.koenig@amd.com>
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:152a:9f00:dc26:feac:12f7:4088:query timed out];
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
X-Rspamd-Queue-Id: E63B13F9B9
X-Spamd-Bar: ----
Message-ID-Hash: X5NZVXAPQT3A55NAAOZG6JKNOI6PIQBI
X-Message-ID-Hash: X5NZVXAPQT3A55NAAOZG6JKNOI6PIQBI
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/19] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X5NZVXAPQT3A55NAAOZG6JKNOI6PIQBI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UgaW1wbGVtZW50YXRpb25zLg0KDQpTbyB1c2UgdGhpcyBhcHByb2FjaCBmb3IgdGhlIHNj
aGVkdWxlciBmZW5jZXMgYXMgd2VsbCBqdXN0IGluIGNhc2UgaWYNCmFueWJvZHkgdXNlcyB0aGlz
IGFzIGJsdWVwcmludCBmb3IgaXRzIG93biBpbXBsZW1lbnRhdGlvbi4NCg0KQWxzbyBzYXZlcyBh
Ym91dCA0IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNClNpZ25lZC1vZmYtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDcgKysrLS0tLQ0KIGluY2x1ZGUv
ZHJtL2dwdV9zY2hlZHVsZXIuaCAgICAgICAgICAgICB8IDQgLS0tLQ0KIDIgZmlsZXMgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVk
dWxlci9zY2hlZF9mZW5jZS5jDQppbmRleCAwOGNjYmRlOGIyZjUuLjQ3NDcxYjllNDNmOSAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQpAQCAtMTYxLDcgKzE2MSw3
IEBAIHN0YXRpYyB2b2lkIGRybV9zY2hlZF9mZW5jZV9zZXRfZGVhZGxpbmVfZmluaXNoZWQoc3Ry
dWN0IGRtYV9mZW5jZSAqZiwNCiAJLyogSWYgd2UgYWxyZWFkeSBoYXZlIGFuIGVhcmxpZXIgZGVh
ZGxpbmUsIGtlZXAgaXQ6ICovDQogCWlmICh0ZXN0X2JpdChEUk1fU0NIRURfRkVOQ0VfRkxBR19I
QVNfREVBRExJTkVfQklULCAmZi0+ZmxhZ3MpICYmDQogCSAgICBrdGltZV9iZWZvcmUoZmVuY2Ut
PmRlYWRsaW5lLCBkZWFkbGluZSkpIHsNCi0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmZlbmNl
LT5sb2NrLCBmbGFncyk7DQorCQlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZiwgZmxhZ3Mp
Ow0KIAkJcmV0dXJuOw0KIAl9DQogDQpAQCAtMjE3LDcgKzIxNyw2IEBAIHN0cnVjdCBkcm1fc2No
ZWRfZmVuY2UgKmRybV9zY2hlZF9mZW5jZV9hbGxvYyhzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAq
ZW50aXR5LA0KIA0KIAlmZW5jZS0+b3duZXIgPSBvd25lcjsNCiAJZmVuY2UtPmRybV9jbGllbnRf
aWQgPSBkcm1fY2xpZW50X2lkOw0KLQlzcGluX2xvY2tfaW5pdCgmZmVuY2UtPmxvY2spOw0KIA0K
IAlyZXR1cm4gZmVuY2U7DQogfQ0KQEAgLTIzMCw5ICsyMjksOSBAQCB2b2lkIGRybV9zY2hlZF9m
ZW5jZV9pbml0KHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKmZlbmNlLA0KIAlmZW5jZS0+c2NoZWQg
PSBlbnRpdHktPnJxLT5zY2hlZDsNCiAJc2VxID0gYXRvbWljX2luY19yZXR1cm4oJmVudGl0eS0+
ZmVuY2Vfc2VxKTsNCiAJZG1hX2ZlbmNlX2luaXQoJmZlbmNlLT5zY2hlZHVsZWQsICZkcm1fc2No
ZWRfZmVuY2Vfb3BzX3NjaGVkdWxlZCwNCi0JCSAgICAgICAmZmVuY2UtPmxvY2ssIGVudGl0eS0+
ZmVuY2VfY29udGV4dCwgc2VxKTsNCisJCSAgICAgICBOVUxMLCBlbnRpdHktPmZlbmNlX2NvbnRl
eHQsIHNlcSk7DQogCWRtYV9mZW5jZV9pbml0KCZmZW5jZS0+ZmluaXNoZWQsICZkcm1fc2NoZWRf
ZmVuY2Vfb3BzX2ZpbmlzaGVkLA0KLQkJICAgICAgICZmZW5jZS0+bG9jaywgZW50aXR5LT5mZW5j
ZV9jb250ZXh0ICsgMSwgc2VxKTsNCisJCSAgICAgICBOVUxMLCBlbnRpdHktPmZlbmNlX2NvbnRl
eHQgKyAxLCBzZXEpOw0KIH0NCiANCiBtb2R1bGVfaW5pdChkcm1fc2NoZWRfZmVuY2Vfc2xhYl9p
bml0KTsNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmggYi9pbmNsdWRl
L2RybS9ncHVfc2NoZWR1bGVyLmgNCmluZGV4IGZiODgzMDFiM2M0NS4uYjc3ZjI0YTc4M2UzIDEw
MDY0NA0KLS0tIGEvaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oDQorKysgYi9pbmNsdWRlL2Ry
bS9ncHVfc2NoZWR1bGVyLmgNCkBAIC0yOTcsMTAgKzI5Nyw2IEBAIHN0cnVjdCBkcm1fc2NoZWRf
ZmVuY2Ugew0KICAgICAgICAgICogYmVsb25ncyB0by4NCiAgICAgICAgICAqLw0KIAlzdHJ1Y3Qg
ZHJtX2dwdV9zY2hlZHVsZXIJKnNjaGVkOw0KLSAgICAgICAgLyoqDQotICAgICAgICAgKiBAbG9j
azogdGhlIGxvY2sgdXNlZCBieSB0aGUgc2NoZWR1bGVkIGFuZCB0aGUgZmluaXNoZWQgZmVuY2Vz
Lg0KLSAgICAgICAgICovDQotCXNwaW5sb2NrX3QJCQlsb2NrOw0KICAgICAgICAgLyoqDQogICAg
ICAgICAgKiBAb3duZXI6IGpvYiBvd25lciBmb3IgZGVidWdnaW5nDQogICAgICAgICAgKi8NCi0t
IA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
