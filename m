Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 38148B42DE3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Sep 2025 02:07:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4407945D2B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Sep 2025 00:07:11 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 2C4B94449C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Sep 2025 00:07:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=cQ67JIkR;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55f69cf4b77so460074e87.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Sep 2025 17:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1756944421; x=1757549221; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HoZmhLyKn/nkdQ8DJ5UpZG4Aw6d8utBCwrwUaI83R7I=;
        b=cQ67JIkR/TurO3EJKrf0BzbPh/vldqLZpntqZsYnmqbNQ1wqtzhXo1UHUGoqb+SUeO
         PCz8O3N+QgmXE3iquqTnqdCmJr3i/ZpsUcM7tAOS4pizDLxfRT1Uw18B+wxb5sZtGnje
         nTWKnAsD14JtZPr6m546CHvNLCzuJFy65Jfkolk/Rm/cwnBU8UL/O+5QuHK8gSxfWdLd
         zSgCCAZCMWIIQ5gXSOaWoAoVGW+VwY5cagWgHaxbJizjoXLGxC4fJ13Igr10+HdnM9xI
         vB0UEvK+XQ/r3FEK9YeGdHg8CXl0TMr/MKindKI05jdQjwZnd+927pNF3HLePTl557JN
         TMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756944421; x=1757549221;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HoZmhLyKn/nkdQ8DJ5UpZG4Aw6d8utBCwrwUaI83R7I=;
        b=RfJeImhJsOdWp2kOA5kbp9InzfvDbL0vvmmuDEfDDGXzuBbC1tsPD5777v2EdJvYqW
         Fe/YNXTW1qUJFF/VdYPfs1jjTm9ceM8FEmm4Lwf4CpbIjUQnaT/JVOeN3x7YgLa4HCeB
         AiBsosi+reUHmXLCQoXKFQ9Rb6cdpe3j17y/wUJPnPUegYlLkZk64Z3h5UCWpeHfbNro
         FUINz8ZllyTGWkzkcA/uL11VmLboI9WpY7B9CRWnOUFxpygJOgTLp7qwsNLebhQ4VV00
         eTo/URXZ2NK0OFtsMvvFuzLnm1irrFEV4Y1C3Heq7b9OcDI/GHziEzDcRF5uLfnqkkKb
         0Q2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUU2mnH3vhUdF7CmA7gcP+hJwA0pMY7HrlLyJW+R/MRAnUdjEZV0dPh2CZWXgPiPU1Pj3mXeiiAUlaLQA4s@lists.linaro.org
X-Gm-Message-State: AOJu0YytS+XbFoydTKuWiYP8/RTQ9bqzb4M/a/5loyEscRRrszmxVPJr
	qNjzqfU+0EVsvUY05zYjs5AzIMFrzsBv2t5mmVmbeDHsWin7+PlrPzUrLsRSqyM87NJg0ZdTUV8
	qq4iZWXLfjv1O5BuxNP87O9JRXEK95tvWDXAFp2o=
X-Gm-Gg: ASbGnct9mnLmCjnJpB2fYXqUZY+YxsbpbsWSmCUl37wvIQSNszyD5aA3GFSqJwKBLhn
	pP8uCWICmiWA6JvaLOb79d2EnpjQC8Oh1dz5P6BAlxNGgaS8FBOpRcn1mXrRD9YiCg9pWFOGdQc
	hHME7bqMlaR+c6iDOykRzzQme/VcgIoc1JX5ahZ0i/YXoqdZ7D9qolwBIB8x9Cuq324sB8mH+B0
	Cu89XMh3xUedphanRbrsVnGU3Aubk6b1vJeFyKiXH66xNpRwvRV
X-Google-Smtp-Source: AGHT+IEct78UJdrP8Mw1fHoqQhwiDSK6WJTCelvjHpNt0ZBbR9UBNmKHi6gPcy7tM8EHSgXZol8bWA6P0Y5bJNZG0cQ=
X-Received: by 2002:a05:6512:258a:b0:55f:6fcc:6f4c with SMTP id
 2adb3069b0e04-55f7095249bmr5080694e87.47.1756944420550; Wed, 03 Sep 2025
 17:07:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250830235838.58067-1-21cnbao@gmail.com>
In-Reply-To: <20250830235838.58067-1-21cnbao@gmail.com>
From: John Stultz <jstultz@google.com>
Date: Wed, 3 Sep 2025 17:06:48 -0700
X-Gm-Features: Ac12FXzqtilJ6SdZS-KX2jb500H77ogaF5l5m6ZQqtBfs2J7DgcHM6yl_AOpcwo
Message-ID: <CANDhNCqcoR3USLG0Ys2WBQmEdS0u6gdaHGCVsftMk3OC5Vhjpw@mail.gmail.com>
To: Barry Song <21cnbao@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2C4B94449C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: KK2SWYP3S55GWFZOEAAWBSUPMFW5S5VK
X-Message-ID-Hash: KK2SWYP3S55GWFZOEAAWBSUPMFW5S5VK
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, zhengtangquan@oppo.com, Barry Song <v-songbaohua@oppo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: use larger contiguous mappings instead of per-page mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KK2SWYP3S55GWFZOEAAWBSUPMFW5S5VK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBBdWcgMzAsIDIwMjUgYXQgNDo1OOKAr1BNIEJhcnJ5IFNvbmcgPDIxY25iYW9AZ21h
aWwuY29tPiB3cm90ZToNCj4NCj4gRnJvbTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8u
Y29tPg0KPg0KPiBXZSBjYW4gYWxsb2NhdGUgaGlnaC1vcmRlciBwYWdlcywgYnV0IG1hcHBpbmcg
dGhlbSBvbmUgYnkNCj4gb25lIGlzIGluZWZmaWNpZW50LiBUaGlzIHBhdGNoIGNoYW5nZXMgdGhl
IGNvZGUgdG8gbWFwDQo+IGFzIGxhcmdlIGEgY2h1bmsgYXMgcG9zc2libGUuIFRoZSBjb2RlIGxv
b2tzIHNvbWV3aGF0DQo+IGNvbXBsaWNhdGVkIG1haW5seSBiZWNhdXNlIHN1cHBvcnRpbmcgbW1h
cCB3aXRoIGENCj4gbm9uLXplcm8gb2Zmc2V0IGlzIGEgYml0IHRyaWNreS4NCj4NCj4gVXNpbmcg
dGhlIG1pY3JvLWJlbmNobWFyayBiZWxvdywgd2Ugc2VlIHRoYXQgbW1hcCBiZWNvbWVzDQo+IDMu
NVggZmFzdGVyOg0KLi4uDQoNCkl0J3MgYmVlbiBhd2hpbGUgc2luY2UgSSd2ZSBkb25lIG1tIHRo
aW5ncywgc28gdGFrZSBpdCB3aXRoIGEgcGluY2ggb2YNCnNhbHQsIGJ1dCB0aGlzIHNlZW1zIHJl
YXNvbmFibGUgdG8gbWUuDQoNClRob3VnaCwgb25lIHRob3VnaHQgYmVsb3cuLi4NCg0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgYi9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KPiBpbmRleCBiYmU3ODgxZjEzNjAuLjRjNzgyZmUz
M2ZkNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMN
Cj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4gQEAgLTE4Niwy
MCArMTg2LDM1IEBAIHN0YXRpYyBpbnQgc3lzdGVtX2hlYXBfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCj4gICAgICAgICBzdHJ1Y3Qgc3lz
dGVtX2hlYXBfYnVmZmVyICpidWZmZXIgPSBkbWFidWYtPnByaXY7DQo+ICAgICAgICAgc3RydWN0
IHNnX3RhYmxlICp0YWJsZSA9ICZidWZmZXItPnNnX3RhYmxlOw0KPiAgICAgICAgIHVuc2lnbmVk
IGxvbmcgYWRkciA9IHZtYS0+dm1fc3RhcnQ7DQo+IC0gICAgICAgc3RydWN0IHNnX3BhZ2VfaXRl
ciBwaXRlcjsNCj4gLSAgICAgICBpbnQgcmV0Ow0KPiArICAgICAgIHVuc2lnbmVkIGxvbmcgcGdv
ZmYgPSB2bWEtPnZtX3Bnb2ZmOw0KPiArICAgICAgIHN0cnVjdCBzY2F0dGVybGlzdCAqc2c7DQo+
ICsgICAgICAgaW50IGksIHJldDsNCj4gKw0KPiArICAgICAgIGZvcl9lYWNoX3NndGFibGVfc2co
dGFibGUsIHNnLCBpKSB7DQo+ICsgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIG4gPSBzZy0+
bGVuZ3RoID4+IFBBR0VfU0hJRlQ7DQo+DQo+IC0gICAgICAgZm9yX2VhY2hfc2d0YWJsZV9wYWdl
KHRhYmxlLCAmcGl0ZXIsIHZtYS0+dm1fcGdvZmYpIHsNCj4gLSAgICAgICAgICAgICAgIHN0cnVj
dCBwYWdlICpwYWdlID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnBpdGVyKTsNCj4gKyAgICAgICAgICAg
ICAgIGlmIChwZ29mZiA8IG4pDQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPiAr
ICAgICAgICAgICAgICAgcGdvZmYgLT0gbjsNCj4gKyAgICAgICB9DQo+ICsNCj4gKyAgICAgICBm
b3IgKDsgc2cgJiYgYWRkciA8IHZtYS0+dm1fZW5kOyBzZyA9IHNnX25leHQoc2cpKSB7DQo+ICsg
ICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIG4gPSAoc2ctPmxlbmd0aCA+PiBQQUdFX1NISUZU
KSAtIHBnb2ZmOw0KPiArICAgICAgICAgICAgICAgc3RydWN0IHBhZ2UgKnBhZ2UgPSBzZ19wYWdl
KHNnKSArIHBnb2ZmOw0KPiArICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBzaXplID0gbiA8
PCBQQUdFX1NISUZUOw0KPiArDQo+ICsgICAgICAgICAgICAgICBpZiAoYWRkciArIHNpemUgPiB2
bWEtPnZtX2VuZCkNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgc2l6ZSA9IHZtYS0+dm1fZW5k
IC0gYWRkcjsNCj4NCj4gLSAgICAgICAgICAgICAgIHJldCA9IHJlbWFwX3Bmbl9yYW5nZSh2bWEs
IGFkZHIsIHBhZ2VfdG9fcGZuKHBhZ2UpLCBQQUdFX1NJWkUsDQo+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgdm1hLT52bV9wYWdlX3Byb3QpOw0KPiArICAgICAgICAgICAg
ICAgcmV0ID0gcmVtYXBfcGZuX3JhbmdlKHZtYSwgYWRkciwgcGFnZV90b19wZm4ocGFnZSksDQo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZSwgdm1hLT52bV9wYWdlX3Byb3Qp
Ow0KDQpJdCBmZWVscyBsaWtlIHRoaXMgc29ydCBvZiBtYXBwaW5nIGxvb3AgZm9yIGhpZ2hlciBv
cmRlciBwYWdlcw0Kd291bGRuJ3QgYmUgYSB1bmlxdWUgcGF0dGVybiB0byBqdXN0IHRoaXMgY29k
ZS4gIFdvdWxkIHRoaXMgYmUgYmV0dGVyDQp3b3JrZWQgaW50byBhIGhlbHBlciBzbyBpdCB3b3Vs
ZCBiZSBtb3JlIGdlbmVyYWxseSB1c2FibGU/DQoNCk90aGVyd2lzZSwNCkFja2VkLWJ5OiBKb2hu
IFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29tPg0KDQp0aGFua3MNCi1qb2huDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
