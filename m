Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C1D780E38
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Aug 2023 16:46:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 185983ECBF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Aug 2023 14:46:00 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id 8B8FA3ECBF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Aug 2023 14:45:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=XUGggOyA;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-99bfcf4c814so129242866b.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Aug 2023 07:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692369953; x=1692974753;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9oUM9/mBxM/fM3PWNRCfa8g7S6tbN21j4///WI8j9MA=;
        b=XUGggOyAVqYBg+LKTIOOoLrvqedtadFT9Wxpp8uGtRFYgF9inZ9wwKPs06WRsw8mL1
         D9wAXq3yz+iL/pGpyNTTUBlkVsbOtWnBISvfW2xGMyUIBCxbXQtKfUuGgT5zeuw0NykK
         Ep7lMLYvKDimIUFTLTY3llQA0eS6bI9aRahqSOBogCaeRgb4zZL6KxoVERCXWUbfjpPY
         lDPpqxFxIPcyRTCgZ012DxS1tUauC6AHgaHtFj3B4mWmVLHsdROM+DlRR4L4zPWIRPJz
         ghWXvanXke4z1+Pzrr5O2suyj6jNq1NuRG7dPSTu3Mb3QfrjzlsRa34MswmktumK2KfV
         n7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692369953; x=1692974753;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9oUM9/mBxM/fM3PWNRCfa8g7S6tbN21j4///WI8j9MA=;
        b=C9hj5zCIniHMzuo9w8h1Cw4sqK/yQEiqMT84hnAi/WsmrVKHpfotI2J9dYIS2E/97n
         AFD0tgvTIGC3py4cAFQAEgBuUA96llbvntoL3SVOwLixKQzMtIkBYZIX78Stt6xbuGzY
         vFu1vSGDIc28BLJfq/0ugZshf+4bAydd/lO4b8dBR10UVA0ZtY586UOUNd7CaZyre3wB
         Ix2xweKwJdWTqxgZsWNUK/yN1JqL4B2sTro6NXezIO8TrWjggmKZZkgeWUsdQChizA8C
         V+ptIss1HWpZRFY439vus8oepY7zYjSwxtzke556EKxTUhwnsFp9LWKVnidcTTMM2BDU
         K/ew==
X-Gm-Message-State: AOJu0YywkWRza9jjI//pFpBkTInRpCO2EAK1iHh7noWZKgIQgJs+4QjB
	yBhkhUp2TiigJ84jUCRo2VfIoMr4a6mr2GNlhZM=
X-Google-Smtp-Source: AGHT+IHQicJnj+KzstlocxgU0S0SH4NUFafCvFaQE46hysnluGxLLtzMIAhK6qT5mNxk3Mz55kg2ixMzO/vTb2wjhqM=
X-Received: by 2002:a17:907:2c6a:b0:99b:cfda:eded with SMTP id
 ib10-20020a1709072c6a00b0099bcfdaededmr2389993ejc.52.1692369953290; Fri, 18
 Aug 2023 07:45:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230817213729.110087-1-robdclark@gmail.com> <647d3838-0d9a-d9d0-b057-87cb4b0f9c16@amd.com>
In-Reply-To: <647d3838-0d9a-d9d0-b057-87cb4b0f9c16@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 18 Aug 2023 07:45:41 -0700
Message-ID: <CAF6AEGuW7thT9qvWwapPcgDUbCKiWOigMMS3Bj5EMAZZyT0enQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8B8FA3ECBF
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.60 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.997];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[]
Message-ID-Hash: 4BSZNR57723HXWRXMW5P4F5RIJZEATJM
X-Message-ID-Hash: 4BSZNR57723HXWRXMW5P4F5RIJZEATJM
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Chris Wilson <chris@chris-wilson.co.uk>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sw_sync: Avoid recursive lock during fence signal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4BSZNR57723HXWRXMW5P4F5RIJZEATJM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBBdWcgMTgsIDIwMjMgYXQgMjowOeKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAxNy4wOC4yMyB1bSAyMzozNyBz
Y2hyaWViIFJvYiBDbGFyazoNCj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1
bS5vcmc+DQo+ID4NCj4gPiBJZiBhIHNpZ25hbCBjYWxsYmFjayByZWxlYXNlcyB0aGUgc3dfc3lu
YyBmZW5jZSwgdGhhdCB3aWxsIHRyaWdnZXIgYQ0KPiA+IGRlYWRsb2NrIGFzIHRoZSB0aW1lbGlu
ZV9mZW5jZV9yZWxlYXNlIHJlY3Vyc2VzIG9udG8gdGhlIGZlbmNlLT5sb2NrDQo+ID4gKHVzZWQg
Ym90aCBmb3Igc2lnbmFsaW5nIGFuZCB0aGUgdGhlIHRpbWVsaW5lIHRyZWUpLg0KPiA+DQo+ID4g
VG8gYXZvaWQgdGhhdCwgdGVtcG9yYXJpbHkgaG9sZCBhbiBleHRyYSByZWZlcmVuY2UgdG8gdGhl
IHNpZ25hbGxlZA0KPiA+IGZlbmNlcyB1bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBsb2NrLg0KPiA+
DQo+ID4gKFRoaXMgaXMgYW4gYWx0ZXJuYXRpdmUgaW1wbGVtZW50YXRpb24gb2YgaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTY2NDcxNy8NCj4gPiB3aGljaCBhdm9pZHMgc29t
ZSBwb3RlbnRpYWwgVUFGIGlzc3VlcyB3aXRoIHRoZSBvcmlnaW5hbCBwYXRjaC4pDQo+ID4NCj4g
PiBSZXBvcnRlZC1ieTogQmFzIE5pZXV3ZW5odWl6ZW4gPGJhc0BiYXNuaWV1d2VuaHVpemVuLm5s
Pg0KPiA+IEZpeGVzOiBkM2M2ZGQxZmIzMGQgKCJkbWEtYnVmL3N3X3N5bmM6IFN5bmNocm9uaXpl
IHNpZ25hbCB2cyBzeW5jcHQgZnJlZSIpDQo+ID4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxy
b2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9kbWEtYnVmL3N3
X3N5bmMuYyB8IDEwICsrKysrKysrKysNCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCj4gPiBpbmRleCA2M2YwYWViNjZkYjYuLmNlYjZh
MDQwODYyNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jDQo+ID4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KPiA+IEBAIC0xOTEsNiArMTkxLDcgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHRpbWVsaW5lX2ZlbmNlX29wcyA9IHsN
Cj4gPiAgICAqLw0KPiA+ICAgc3RhdGljIHZvaWQgc3luY190aW1lbGluZV9zaWduYWwoc3RydWN0
IHN5bmNfdGltZWxpbmUgKm9iaiwgdW5zaWduZWQgaW50IGluYykNCj4gPiAgIHsNCj4gPiArICAg
ICBMSVNUX0hFQUQoc2lnbmFsbGVkKTsNCj4gPiAgICAgICBzdHJ1Y3Qgc3luY19wdCAqcHQsICpu
ZXh0Ow0KPiA+DQo+ID4gICAgICAgdHJhY2Vfc3luY190aW1lbGluZShvYmopOw0KPiA+IEBAIC0y
MDMsOSArMjA0LDEzIEBAIHN0YXRpYyB2b2lkIHN5bmNfdGltZWxpbmVfc2lnbmFsKHN0cnVjdCBz
eW5jX3RpbWVsaW5lICpvYmosIHVuc2lnbmVkIGludCBpbmMpDQo+ID4gICAgICAgICAgICAgICBp
ZiAoIXRpbWVsaW5lX2ZlbmNlX3NpZ25hbGVkKCZwdC0+YmFzZSkpDQo+ID4gICAgICAgICAgICAg
ICAgICAgICAgIGJyZWFrOw0KPiA+DQo+ID4gKyAgICAgICAgICAgICBkbWFfZmVuY2VfZ2V0KCZw
dC0+YmFzZSk7DQo+DQo+IFF1ZXN0aW9uIGlzIHdoeSBkb24ndCBoYXZlIHRoZSBmZW5jZXMgYSBy
ZWZlcmVuY2Ugb24gdGhlIGxpc3QgaW4gdGhlDQo+IGZpcnN0IHBsYWNlPw0KDQpBcyBiZXN0IEkg
Y2FuIHRlbGwsIGl0IGlzIGJlY2F1c2UgdGhlIGZlbmNlcyBob2xkIGEgcmVmZXJlbmNlIHRvIHRo
ZQ0KdGltZWxpbmUsIHNvIGEgcmVmZXJlbmNlIGluIHRoZSBvdGhlciBkaXJlY3Rpb24gd291bGQg
Y2F1c2UgYSBsb29wLg0KDQpCUiwNCi1SDQoNCj4gPiArDQo+ID4gICAgICAgICAgICAgICBsaXN0
X2RlbF9pbml0KCZwdC0+bGluayk7DQo+ID4gICAgICAgICAgICAgICByYl9lcmFzZSgmcHQtPm5v
ZGUsICZvYmotPnB0X3RyZWUpOw0KPiA+DQo+ID4gKyAgICAgICAgICAgICBsaXN0X2FkZF90YWls
KCZwdC0+bGluaywgJnNpZ25hbGxlZCk7DQo+DQo+IEluc3RlYWQgb2YgbGlzdF9kZWwoKS9saXN0
X2FkZF90YWlsKCkgeW91IGNvdWxkIGFsc28gdXNlDQo+IGxpc3RfbW92ZV90YWlsKCkgaGVyZS4N
Cj4NCj4gPiArDQo+ID4gICAgICAgICAgICAgICAvKg0KPiA+ICAgICAgICAgICAgICAgICogQSBz
aWduYWwgY2FsbGJhY2sgbWF5IHJlbGVhc2UgdGhlIGxhc3QgcmVmZXJlbmNlIHRvIHRoaXMNCj4g
PiAgICAgICAgICAgICAgICAqIGZlbmNlLCBjYXVzaW5nIGl0IHRvIGJlIGZyZWVkLiBUaGF0IG9w
ZXJhdGlvbiBoYXMgdG8gYmUNCj4gPiBAQCAtMjE4LDYgKzIyMywxMSBAQCBzdGF0aWMgdm9pZCBz
eW5jX3RpbWVsaW5lX3NpZ25hbChzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNpZ25lZCBp
bnQgaW5jKQ0KPiA+ICAgICAgIH0NCj4gPg0KPiA+ICAgICAgIHNwaW5fdW5sb2NrX2lycSgmb2Jq
LT5sb2NrKTsNCj4gPiArDQo+ID4gKyAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHB0LCBu
ZXh0LCAmc2lnbmFsbGVkLCBsaW5rKSB7DQo+ID4gKyAgICAgICAgICAgICBsaXN0X2RlbCgmcHQt
PmxpbmspOw0KPg0KPiBZb3UgbXVzdCB1c2UgbGlzdF9kZWxfaW5pdCgpIGhlcmUgb3Igb3RoZXJ3
aXNlIHRoZSBwdC0+bGluayB3aWxsIGtlZXANCj4gcG9pbnRpbmcgdG8gdGhlIHByZXYvbmV4dCBl
bnRyaWVzIGFuZCB0aGUgbGlzdF9lbXB0eSgpIGNoZWNrIGluDQo+IHRpbWVsaW5lX2ZlbmNlX3Jl
bGVhc2UoKSB3aWxsIGZhaWwgYW5kIHBvdGVudGlhbGx5IGNvcnJ1cHQgdGhpbmdzLg0KPg0KPiBS
ZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4gKyAgICAgICAgICAgICBkbWFfZmVuY2VfcHV0
KCZwdC0+YmFzZSk7DQo+ID4gKyAgICAgfQ0KPiA+ICAgfQ0KPiA+DQo+ID4gICAvKioNCj4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
