Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C6569D4DC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 21:22:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 401173F499
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 20:22:04 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by lists.linaro.org (Postfix) with ESMTPS id A85BB3F522
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 20:19:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=EWlHLC4M;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.171 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id fd25so383013pfb.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 12:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XiQQqcTshEbLjD8Mc0BqkK6iz8Zi/TK1jh3DESgjpc4=;
        b=EWlHLC4MR7yCgiQ7t5NjL4rflY/lHTNWITQmEgqG+vD5GKWdxIXDX3riU3EFvd3BNb
         U06DJbgiE2zvlQKapngeJ+aCSWD2L3tVDQFEvzuGKAyiS+R53gZhemupMklmpwEiliXf
         K79CAkJxyrcP1HFGivhBxUGLufbemHG0Rv6fJR9huvHeIIM1ILxSQdGZ47psp/nQm3OS
         RqvRx8Ab3h32aghQWBUmQq9X+DnutjaNE23HkxiQ39VswqnZ2ykZDKEOtU6Y5+0FOsuF
         x5ah3Uq115bwRKiSBH1iovTN55fLzqQzVRM/EpfOZNdLnmFQQsRkfu/SaQN70OKC2eWa
         VeMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XiQQqcTshEbLjD8Mc0BqkK6iz8Zi/TK1jh3DESgjpc4=;
        b=LW5flOURowp+iin6h8hHl8ynmw2CXe4vi2O9vrDGyTS1qcm8FIpL8UXD9Nj8cqNIrJ
         5653B472QvJXaeAwGBFtMVA+aTqkxlEtIA5deD6jxnlIklVEE5G2BZySUv2DoLdQEOOn
         DrC9X0diHD37ZjbroQCHW1M/rLhdtdCcArUFHEWjfDp5xZaiP7/1JakvWUoO51LP8Whc
         XZJmkacgS3D81zzsqPp3pWq8OwyCi01SlijvtXczHG0hKFOxEwEFKEyIz7D+VU9I9eMZ
         ngVEH3ZcGgTi/IxlaJMcQwcu+1cZai1oQ7+f+VgNoCRVJEROGXl3hh6gLp389FkIinNq
         ryiQ==
X-Gm-Message-State: AO0yUKWPQJV3vyIUFhEW5m9/z6/zWfnxZ0TLcJXlpjZjnYw5r36MR4rA
	Tj3R+AUrms1Ai+HTsCAh79c=
X-Google-Smtp-Source: AK7set8DBuY7ObnW5AgZYvamzQMZH1dc5w9PJC9F+zllVkpDOVshjNN4rL/mls3MjSK/WrgINVYhKg==
X-Received: by 2002:a05:6a00:1786:b0:5a9:d0e6:6a85 with SMTP id s6-20020a056a00178600b005a9d0e66a85mr2614276pfg.7.1676924368772;
        Mon, 20 Feb 2023 12:19:28 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id 4-20020aa79244000000b005a8851e0cddsm1688110pfp.188.2023.02.20.12.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 12:19:28 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 20 Feb 2023 12:18:54 -0800
Message-Id: <20230220201916.1822214-8-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230220201916.1822214-1-robdclark@gmail.com>
References: <20230220201916.1822214-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A85BB3F522
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.171:from];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: JU6S47L3AHMSXPIIYNUWQHGS4P22Y65X
X-Message-ID-Hash: JU6S47L3AHMSXPIIYNUWQHGS4P22Y65X
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 07/14] dma-buf/sw_sync: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JU6S47L3AHMSXPIIYNUWQHGS4P22Y65X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpUaGlzIGNvbnNpc3Rz
IG9mIHNpbXBseSBzdG9yaW5nIHRoZSBtb3N0IHJlY2VudCBkZWFkbGluZSwgYW5kIGFkZGluZyBh
bg0KaW9jdGwgdG8gcmV0cmlldmUgdGhlIGRlYWRsaW5lLiAgVGhpcyBjYW4gYmUgdXNlZCBpbiBj
b25qdW5jdGlvbiB3aXRoDQp0aGUgU0VUX0RFQURMSU5FIGlvY3RsIG9uIGEgZmVuY2UgZmQgZm9y
IHRlc3RpbmcuICBJZS4gY3JlYXRlIHZhcmlvdXMNCnN3X3N5bmMgZmVuY2VzLCBtZXJnZSB0aGVt
IGludG8gYSBmZW5jZS1hcnJheSwgc2V0IGRlYWRsaW5lIG9uIHRoZQ0KZmVuY2UtYXJyYXkgYW5k
IGNvbmZpcm0gdGhhdCBpdCBpcyBwcm9wYWdhdGVkIHByb3Blcmx5IHRvIGVhY2ggZmVuY2UuDQoN
CnYyOiBTd2l0Y2ggVUFCSSB0byBleHByZXNzIGRlYWRsaW5lIGFzIHU2NA0KDQpTaWduZWQtb2Zm
LWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQpSZXZpZXdlZC1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9k
bWEtYnVmL3N3X3N5bmMuYyAgICB8IDU4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKw0KIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmggfCAgMiArKw0KIDIgZmlsZXMgY2hh
bmdlZCwgNjAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N3
X3N5bmMuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCmluZGV4IDM0OGIzYTkxNzBmYS4u
M2UyMzE1ZWU5NTViIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KKysr
IGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KQEAgLTUyLDEyICs1MiwyOCBAQCBzdHJ1Y3Qg
c3dfc3luY19jcmVhdGVfZmVuY2VfZGF0YSB7DQogCV9fczMyCWZlbmNlOyAvKiBmZCBvZiBuZXcg
ZmVuY2UgKi8NCiB9Ow0KIA0KKy8qKg0KKyAqIHN0cnVjdCBzd19zeW5jX2dldF9kZWFkbGluZSAt
IGdldCB0aGUgZGVhZGxpbmUgaGludCBvZiBhIHN3X3N5bmMgZmVuY2UNCisgKiBAZGVhZGxpbmVf
bnM6IGFic29sdXRlIHRpbWUgb2YgdGhlIGRlYWRsaW5lDQorICogQHBhZDoJbXVzdCBiZSB6ZXJv
DQorICogQGZlbmNlX2ZkOgl0aGUgc3dfc3luYyBmZW5jZSBmZCAoaW4pDQorICoNCisgKiBUaGUg
dGltZWJhc2UgZm9yIHRoZSBkZWFkbGluZSBpcyBDTE9DS19NT05PVE9OSUMgKHNhbWUgYXMgdmJs
YW5rKQ0KKyAqLw0KK3N0cnVjdCBzd19zeW5jX2dldF9kZWFkbGluZSB7DQorCV9fdTY0CWRlYWRs
aW5lX25zOw0KKwlfX3UzMglwYWQ7DQorCV9fczMyCWZlbmNlX2ZkOw0KK307DQorDQogI2RlZmlu
ZSBTV19TWU5DX0lPQ19NQUdJQwknVycNCiANCiAjZGVmaW5lIFNXX1NZTkNfSU9DX0NSRUFURV9G
RU5DRQlfSU9XUihTV19TWU5DX0lPQ19NQUdJQywgMCxcDQogCQlzdHJ1Y3Qgc3dfc3luY19jcmVh
dGVfZmVuY2VfZGF0YSkNCiANCiAjZGVmaW5lIFNXX1NZTkNfSU9DX0lOQwkJCV9JT1coU1dfU1lO
Q19JT0NfTUFHSUMsIDEsIF9fdTMyKQ0KKyNkZWZpbmUgU1dfU1lOQ19HRVRfREVBRExJTkUJCV9J
T1dSKFNXX1NZTkNfSU9DX01BR0lDLCAyLCBcDQorCQlzdHJ1Y3Qgc3dfc3luY19nZXRfZGVhZGxp
bmUpDQogDQogc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHRpbWVsaW5lX2ZlbmNl
X29wczsNCiANCkBAIC0xNzEsNiArMTg3LDEzIEBAIHN0YXRpYyB2b2lkIHRpbWVsaW5lX2ZlbmNl
X3RpbWVsaW5lX3ZhbHVlX3N0cihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCiAJc25wcmludGYo
c3RyLCBzaXplLCAiJWQiLCBwYXJlbnQtPnZhbHVlKTsNCiB9DQogDQorc3RhdGljIHZvaWQgdGlt
ZWxpbmVfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90
IGRlYWRsaW5lKQ0KK3sNCisJc3RydWN0IHN5bmNfcHQgKnB0ID0gZG1hX2ZlbmNlX3RvX3N5bmNf
cHQoZmVuY2UpOw0KKw0KKwlwdC0+ZGVhZGxpbmUgPSBkZWFkbGluZTsNCit9DQorDQogc3RhdGlj
IGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHRpbWVsaW5lX2ZlbmNlX29wcyA9IHsNCiAJLmdl
dF9kcml2ZXJfbmFtZSA9IHRpbWVsaW5lX2ZlbmNlX2dldF9kcml2ZXJfbmFtZSwNCiAJLmdldF90
aW1lbGluZV9uYW1lID0gdGltZWxpbmVfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsDQpAQCAtMTc5
LDYgKzIwMiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGluZV9m
ZW5jZV9vcHMgPSB7DQogCS5yZWxlYXNlID0gdGltZWxpbmVfZmVuY2VfcmVsZWFzZSwNCiAJLmZl
bmNlX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3ZhbHVlX3N0ciwNCiAJLnRpbWVsaW5lX3Zh
bHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3RpbWVsaW5lX3ZhbHVlX3N0ciwNCisJLnNldF9kZWFk
bGluZSA9IHRpbWVsaW5lX2ZlbmNlX3NldF9kZWFkbGluZSwNCiB9Ow0KIA0KIC8qKg0KQEAgLTM4
Nyw2ICs0MTEsMzcgQEAgc3RhdGljIGxvbmcgc3dfc3luY19pb2N0bF9pbmMoc3RydWN0IHN5bmNf
dGltZWxpbmUgKm9iaiwgdW5zaWduZWQgbG9uZyBhcmcpDQogCXJldHVybiAwOw0KIH0NCiANCitz
dGF0aWMgaW50IHN3X3N5bmNfaW9jdGxfZ2V0X2RlYWRsaW5lKHN0cnVjdCBzeW5jX3RpbWVsaW5l
ICpvYmosIHVuc2lnbmVkIGxvbmcgYXJnKQ0KK3sNCisJc3RydWN0IHN3X3N5bmNfZ2V0X2RlYWRs
aW5lIGRhdGE7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KKwlzdHJ1Y3Qgc3luY19wdCAq
cHQ7DQorDQorCWlmIChjb3B5X2Zyb21fdXNlcigmZGF0YSwgKHZvaWQgX191c2VyICopYXJnLCBz
aXplb2YoZGF0YSkpKQ0KKwkJcmV0dXJuIC1FRkFVTFQ7DQorDQorCWlmIChkYXRhLmRlYWRsaW5l
X25zIHx8IGRhdGEucGFkKQ0KKwkJcmV0dXJuIC1FSU5WQUw7DQorDQorCWZlbmNlID0gc3luY19m
aWxlX2dldF9mZW5jZShkYXRhLmZlbmNlX2ZkKTsNCisJaWYgKCFmZW5jZSkNCisJCXJldHVybiAt
RUlOVkFMOw0KKw0KKwlwdCA9IGRtYV9mZW5jZV90b19zeW5jX3B0KGZlbmNlKTsNCisJaWYgKCFw
dCkNCisJCXJldHVybiAtRUlOVkFMOw0KKw0KKw0KKwlkYXRhLmRlYWRsaW5lX25zID0ga3RpbWVf
dG9fbnMocHQtPmRlYWRsaW5lKTsNCisNCisJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQorDQorCWlm
IChjb3B5X3RvX3VzZXIoKHZvaWQgX191c2VyICopYXJnLCAmZGF0YSwgc2l6ZW9mKGRhdGEpKSkN
CisJCXJldHVybiAtRUZBVUxUOw0KKw0KKwlyZXR1cm4gMDsNCit9DQorDQogc3RhdGljIGxvbmcg
c3dfc3luY19pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgaW50IGNtZCwNCiAJCQkg
IHVuc2lnbmVkIGxvbmcgYXJnKQ0KIHsNCkBAIC0zOTksNiArNDU0LDkgQEAgc3RhdGljIGxvbmcg
c3dfc3luY19pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgaW50IGNtZCwNCiAJY2Fz
ZSBTV19TWU5DX0lPQ19JTkM6DQogCQlyZXR1cm4gc3dfc3luY19pb2N0bF9pbmMob2JqLCBhcmcp
Ow0KIA0KKwljYXNlIFNXX1NZTkNfR0VUX0RFQURMSU5FOg0KKwkJcmV0dXJuIHN3X3N5bmNfaW9j
dGxfZ2V0X2RlYWRsaW5lKG9iaiwgYXJnKTsNCisNCiAJZGVmYXVsdDoNCiAJCXJldHVybiAtRU5P
VFRZOw0KIAl9DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaCBiL2Ry
aXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmgNCmluZGV4IDYxNzZlNTJiYTJkNy4uMmUwMTQ2ZDBi
ZGJiIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaA0KKysrIGIvZHJp
dmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaA0KQEAgLTU1LDExICs1NSwxMyBAQCBzdGF0aWMgaW5s
aW5lIHN0cnVjdCBzeW5jX3RpbWVsaW5lICpkbWFfZmVuY2VfcGFyZW50KHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQ0KICAqIEBiYXNlOiBiYXNlIGZlbmNlIG9iamVjdA0KICAqIEBsaW5rOiBsaW5r
IG9uIHRoZSBzeW5jIHRpbWVsaW5lJ3MgbGlzdA0KICAqIEBub2RlOiBub2RlIGluIHRoZSBzeW5j
IHRpbWVsaW5lJ3MgdHJlZQ0KKyAqIEBkZWFkbGluZTogdGhlIG1vc3QgcmVjZW50bHkgc2V0IGZl
bmNlIGRlYWRsaW5lDQogICovDQogc3RydWN0IHN5bmNfcHQgew0KIAlzdHJ1Y3QgZG1hX2ZlbmNl
IGJhc2U7DQogCXN0cnVjdCBsaXN0X2hlYWQgbGluazsNCiAJc3RydWN0IHJiX25vZGUgbm9kZTsN
CisJa3RpbWVfdCBkZWFkbGluZTsNCiB9Ow0KIA0KIGV4dGVybiBjb25zdCBzdHJ1Y3QgZmlsZV9v
cGVyYXRpb25zIHN3X3N5bmNfZGVidWdmc19mb3BzOw0KLS0gDQoyLjM5LjENCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
