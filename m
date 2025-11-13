Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CD4C5813B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:55:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F294A3F85F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:55:34 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 724FC3F80D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=m15TTHXY;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b72b495aa81so103529666b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045621; x=1763650421; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PyPXU09MHf0sQOMw0xMzptL/19K/nBS/D4vJF5btR6A=;
        b=m15TTHXYRBPlpZdPjVw962ZGDF/IYdGbqJksw+SUObpvbD77hhCxkQXextxO4ynNN0
         zZZURVwr8ElCZK9pCBbPn4UkLkR1qLujrKj7Qjmn5pyF02zA4iIQxFqry8U6YJNOyGQq
         BmTlzJf1QRqRKXtbUwlQKIPGScWylys1t4TggRLq95i/zqF5CBfwYS4s0vnONypO7Ani
         WfeRROt3rSuTZPu6lAxs5zx6crCTbCPM789FpCtcnemqG8snGQV4WiWY6zQDO4odfdIz
         owcbBGUGQRsQjaCuiCHFt9dnKr/WCYHoJo0XZT5TpGgJfh9/Rqmf+n+/r7V4w4mcscUr
         R92g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045621; x=1763650421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PyPXU09MHf0sQOMw0xMzptL/19K/nBS/D4vJF5btR6A=;
        b=NGmlMUrylPH4AhbuaanP0soNa37DIP4iCCunnpA6vb1CqLMiOLcE1TzuMaECaNl4DI
         BjaLZvC5oyxLJEN+iJ8I3kRu3znDyAoy8m1hd4vuOn2hGiHTExlS7yeqqLKSnOY+I8Ji
         jp8Lf1RqCTCCDSqUK1KQkcrYWodehmThH2bWrAwi+s24BS/e47f0nGD2bSfMawNgvLgD
         GuS1ajYrZsWIn8oNAUVE4bWocEZQaG7nLI5clquNJHngoUTz4yZIbK7c7+i/n1edX3ii
         z2FKOAMWS3tuzTzMbakOpjGgjgtBSo+4ur4WNOBLTijE/D0An6RKqx5HgKctDUxhnBoc
         v03A==
X-Forwarded-Encrypted: i=1; AJvYcCUGU8IIP3JRwp4pKGLGNOk+jAlunyWeczbrac5yhTgfbTZFk88ZKoGQB/YRsSy2ToSy2WuCVTAhmLlaMFS/@lists.linaro.org
X-Gm-Message-State: AOJu0YzB7V31DIMHSILzUj4/Qkxi4f/xBXoVt2Vc9YcuPOI4Y18OutRu
	FWs+WzWF1F9er5hnxf09QQ3XlGQHc4xbZYUt0SuDZi2H5rao31eRaYEA
X-Gm-Gg: ASbGncsP4ac2piiZTU+tSqrtV8Msc0VAj1cHx3V8hiuFHnH/BJG3xXz9tdlO7gaiFEK
	vstHn29ZG+sinGz+UGdLfAySl0RSj8is/Qrg/Yk+Dmv31nEInxVdmsaV75hnS2JUAU33WSlCNOc
	2/AYXkHMp0l77t2aBYcW0c1ek8uB4lTS86MzaVAP0QdoBJ8eOK75cnM7t72fNIapmY3V2YGC1fq
	W4fAyqZy46JwWoUTTDS8Z1twvQLHoC8Su9wzgp8KTC3kymbMeth7AwGY8YMIs+B8qIDasdn9onq
	QKC1EY/6wH25Truv/0TnHjYPP0GkCE9ozbWp1J6U1L8Z1ayGWzgAF4HFobdxhmHECrpnPg40gX7
	SXeXUnsvgTV/mrhMqLwgwYTv5k1IdUwEMVo4Vua3ZnAltNCde+6m88lUIwxKr64Zph9FHlQFhR6
	DKsHwaNITQLd9TPZOFr7rYkA==
X-Google-Smtp-Source: AGHT+IGwF/OC+hr52+361MK7+mN4u8O29dW+FiL9JjV6JlzX+GGacshi6JqZmr/3Q1cXgUc/t7Hv0w==
X-Received: by 2002:a17:907:94ca:b0:b70:fede:1b58 with SMTP id a640c23a62f3a-b733195fe6dmr706242866b.2.1763045621257;
        Thu, 13 Nov 2025 06:53:41 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:40 -0800 (PST)
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
Date: Thu, 13 Nov 2025 15:51:45 +0100
Message-ID: <20251113145332.16805-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 724FC3F80D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: PLDLI34FDOTZQM55RGQMFPTYZ5TGZHXJ
X-Message-ID-Hash: PLDLI34FDOTZQM55RGQMFPTYZ5TGZHXJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/18] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PLDLI34FDOTZQM55RGQMFPTYZ5TGZHXJ/>
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
