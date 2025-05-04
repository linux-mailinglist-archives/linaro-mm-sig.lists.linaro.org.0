Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D107AA8766
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 May 2025 17:47:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20C7243C8C
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 May 2025 15:47:24 +0000 (UTC)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by lists.linaro.org (Postfix) with ESMTPS id 0D62543C8C
	for <linaro-mm-sig@lists.linaro.org>; Sun,  4 May 2025 15:47:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Dby3Bnuy;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.171 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3d8020ba858so9822365ab.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 04 May 2025 08:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746373631; x=1746978431; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KCB11Y01+XCfvS4lsOkPaiVFvB4yeAtymGdAMyAi5Zc=;
        b=Dby3BnuyAw8xapmjKKaMpLcCUUHDxIn1tKkNsL5+0+40INhkFN9XZDZUYJwBsSF9sS
         2CQqnE8j8+YCqAek5dHxsT2jU3/ZA9cdV4QWUlWy+WS4xLhloQ4vc04nlRC0pr6mRduK
         FaOv3gz8axONF7OQtRApoBmQNWap0iOvXTuPzm35mRiZCmQW5IZeTFVf2WPRfYVgpIj3
         n2+llEdXS8dxqrGch7nakj8qMGF0MNqF3zLyNc5WuHqNUkWEa5EhKsZACp5MOnvACpMV
         QY46Ukl9xdn26fsTScAgrniUkHF72uj9v5Cgm3oeOHzDWyweIXoJsoaxLrdL1rj8dnGB
         KvoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746373631; x=1746978431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KCB11Y01+XCfvS4lsOkPaiVFvB4yeAtymGdAMyAi5Zc=;
        b=g+gLkh/nyVdsZrjK7Cdt3wsRH0RkGUAWMducrX8zQV5XbUdU92HT9QToNzIQMa9JMc
         nKCWjoyfuJBZBLbkiENcxLnd8YXcJdexbayOU58+pKVp5fJBee+KeonitIJMa7mrZ97z
         WbudX4wVBUQx3e8OzxnNXKpRq/aVY/THLvuaqiRYQ1zxiyBjzPL8Lcq5f6KOpXVse96a
         IdgQPrbJ8qHfd9fZYwZ8lmaVRGJJbizAV8IUzDudz2YwNmokiMh+w5xrTY9awiYkJ+DH
         uV9uN+cgwlVywFxGj066blx/juTs0bRdVZEwi8YKBzMFapPrU6/8mQJKqZHVW/ou72og
         2HVw==
X-Forwarded-Encrypted: i=1; AJvYcCXXyNKVLfecJ5LaYPjsZZuK8yeR6XInsqGnB/CDX/+1sBw8C+dsfSJzMw/+pqFsaGZNVJO8Db1YW4ZRMAa4@lists.linaro.org
X-Gm-Message-State: AOJu0YxOV6o45TQfhaQAO3W0e8frTWJ/jFWiYkVnZ56vtc7x8AarS4nq
	x6JAcsyyH1q8IPqMv+IySIlmPSlN3Q/3jVD41AJzvawIa7HQuf20MVAWFH+2YnzSDIu2t1qF/Gg
	UT8M6fYTn2dbwoX+z+vbmRaj8kKA=
X-Gm-Gg: ASbGncsa+aSijEcLCSbn5lJhETEN7NVx8BxprBjQhYPD539o718JtwbAlbZ5Y5aRHne
	23XkUnnQw2PK71Kl13qaDhja+M2y35MUq8N8YrDfp8vEyO/dnkD09OInfGhn7IvPQUOYMRRjot4
	rpkmEBC8wB82lUfULpGe/HsA==
X-Google-Smtp-Source: AGHT+IF/JevtdssqiOoRgkiDW7LjLg2KSxw2gMBFdDf7RqHjZEb8cdLxhaA4CtAfXBLkKoc+S9iAwAL7qHV7dCcoc84=
X-Received: by 2002:a05:6e02:1889:b0:3d4:6ff4:2608 with SMTP id
 e9e14a558f8ab-3da5b2a3507mr46309295ab.12.1746373631447; Sun, 04 May 2025
 08:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250424032751.3511768-1-haoxiang_li2024@163.com>
In-Reply-To: <20250424032751.3511768-1-haoxiang_li2024@163.com>
From: Rob Clark <robdclark@gmail.com>
Date: Sun, 4 May 2025 08:46:59 -0700
X-Gm-Features: ATxdqUHXwmSDwj980iTtQyggMLmzSvs4wue8EqnhIc3dPv_RZ4ci2s_gz9Q7m7A
Message-ID: <CAF6AEGssqH9yEV=gXjmsmLx_haAemjT9jHT1k6ZyXOHskRnucg@mail.gmail.com>
To: Haoxiang Li <haoxiang_li2024@163.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0D62543C8C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[quicinc.com,kernel.org,poorly.run,somainline.org,gmail.com,ffwll.ch,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[163.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.171:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: VW6H7GQ73WR2YF3O2YF4HMKOE4NXPX5A
X-Message-ID-Hash: VW6H7GQ73WR2YF3O2YF4HMKOE4NXPX5A
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: quic_abhinavk@quicinc.com, lumag@kernel.org, sean@poorly.run, marijn.suijten@somainline.org, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND] drm/msm: fix a potential memory leak issue in submit_create()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VW6H7GQ73WR2YF3O2YF4HMKOE4NXPX5A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMjMsIDIwMjUgYXQgODoyOOKAr1BNIEhhb3hpYW5nIExpIDxoYW94aWFuZ19s
aTIwMjRAMTYzLmNvbT4gd3JvdGU6DQo+DQo+IFRoZSBtZW1vcnkgYWxsb2NhdGVkIGJ5IG1zbV9m
ZW5jZV9hbGxvYygpIGFjdHVhbGx5IGlzIHRoZQ0KPiBjb250YWluZXIgb2YgbXNtX2ZlbmNlX2Fs
bG9jKCkncyByZXR1cm4gdmFsdWUuIFRodXMsIGp1c3QNCj4gZnJlZSBpdHMgcmV0dXJuIHZhbHVl
IGlzIG5vdCBlbm91Z2guDQo+IEFkZCBhIGhlbHBlciAnbXNtX2ZlbmNlX2ZyZWUoKScgaW4gbXNt
X2ZlbmNlLmgvbXNtX2ZlbmNlLmMNCj4gdG8gZG8gdGhlIGNvbXBsZXRlIGpvYi4NCj4NCj4gRml4
ZXM6IGY5NGU2YTUxZTE3YyAoImRybS9tc206IFByZS1hbGxvY2F0ZSBod19mZW5jZSIpDQo+IENj
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IFNpZ25lZC1vZmYtYnk6IEhhb3hpYW5nIExpIDxo
YW94aWFuZ19saTIwMjRAMTYzLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9mZW5jZS5jICAgICAgfCA3ICsrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Zl
bmNlLmggICAgICB8IDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5j
IHwgMiArLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5jDQo+IGluZGV4IGQ0MWU1YTZiYmVlMC4uNzI2
NDFlNmE2MjdkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmMNCj4gQEAgLTE4Myw2ICsx
ODMsMTMgQEAgbXNtX2ZlbmNlX2FsbG9jKHZvaWQpDQo+ICAgICAgICAgcmV0dXJuICZmLT5iYXNl
Ow0KPiAgfQ0KPg0KPiArdm9pZCBtc21fZmVuY2VfZnJlZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCj4gK3sNCj4gKyAgICAgICBzdHJ1Y3QgbXNtX2ZlbmNlICpmID0gdG9fbXNtX2ZlbmNlKGZl
bmNlKTsNCj4gKw0KPiArICAgICAgIGtmcmVlKGYpOw0KPiArfQ0KPiArDQo+ICB2b2lkDQo+ICBt
c21fZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IG1zbV9mZW5jZV9j
b250ZXh0ICpmY3R4KQ0KPiAgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZmVuY2UuaCBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmgNCj4gaW5kZXggMTQ4
MTk2Mzc1YTBiLi42MzVjNjg2MjkwNzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2ZlbmNlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuaA0K
PiBAQCAtODIsNiArODIsNyBAQCBib29sIG1zbV9mZW5jZV9jb21wbGV0ZWQoc3RydWN0IG1zbV9m
ZW5jZV9jb250ZXh0ICpmY3R4LCB1aW50MzJfdCBmZW5jZSk7DQo+ICB2b2lkIG1zbV91cGRhdGVf
ZmVuY2Uoc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0ICpmY3R4LCB1aW50MzJfdCBmZW5jZSk7DQo+
DQo+ICBzdHJ1Y3QgZG1hX2ZlbmNlICogbXNtX2ZlbmNlX2FsbG9jKHZvaWQpOw0KPiArdm9pZCBt
c21fZmVuY2VfZnJlZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7DQo+ICB2b2lkIG1zbV9mZW5j
ZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQg
KmZjdHgpOw0KPg0KPiAgc3RhdGljIGlubGluZSBib29sDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9n
ZW1fc3VibWl0LmMNCj4gaW5kZXggM2U5YWEyY2MzOGVmLi4yMTNiYWE1YmNhNWUgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMNCj4gQEAgLTU2LDcgKzU2LDcgQEAgc3Rh
dGljIHN0cnVjdCBtc21fZ2VtX3N1Ym1pdCAqc3VibWl0X2NyZWF0ZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LA0KPg0KPiAgICAgICAgIHJldCA9IGRybV9zY2hlZF9qb2JfaW5pdCgmc3VibWl0LT5i
YXNlLCBxdWV1ZS0+ZW50aXR5LCAxLCBxdWV1ZSk7DQo+ICAgICAgICAgaWYgKHJldCkgew0KPiAt
ICAgICAgICAgICAgICAga2ZyZWUoc3VibWl0LT5od19mZW5jZSk7DQo+ICsgICAgICAgICAgICAg
ICBtc21fZmVuY2VfZnJlZShzdWJtaXQtPmh3X2ZlbmNlKTsNCg0KYHN0cnVjdCBkbWFfZmVuY2Ug
YmFzZWAgaXMgdGhlIGZpcnN0IGZpZWxkIGluIGBzdHJ1Y3QgbXNtX2ZlbmNlYCwgc28NCnRvX21z
bV9mZW5jZSgpIGlzIGp1c3QgYSBwb2ludGVyIGNhc3QuICBJZS4gaXQgaXMgZmluZSB0byBwYXNz
IGl0IHRvDQprZnJlZSgpIGFzLWlzDQoNCkJSLA0KLVINCg0KPiAgICAgICAgICAgICAgICAga2Zy
ZWUoc3VibWl0KTsNCj4gICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKHJldCk7DQo+ICAg
ICAgICAgfQ0KPiAtLQ0KPiAyLjI1LjENCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
