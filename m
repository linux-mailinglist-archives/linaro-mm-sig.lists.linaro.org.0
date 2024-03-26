Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A0C88B781
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Mar 2024 03:38:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91CFE3F359
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Mar 2024 02:38:49 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id DC4DD3F359
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Mar 2024 02:38:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=XtomM2LJ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.208.43 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56bf63af770so1255976a12.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Mar 2024 19:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711420727; x=1712025527; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xvuTO++gksCL8fZc9rnTMteYbv8VDF4X35FDvigGhis=;
        b=XtomM2LJ6L9YO5QpmheXOJ60do2nWPMKhb+eqZHl/nRWMr41bSMfzR3lFF9KKUOQif
         PXOzGM9l6pBp9GxoYocJNShs+baFitE4ir8/sezVhBeqO53WUFtiBmqaXlc8k54mF3nA
         uxACpoulAGNmPO3Y+1rjFvq9G2ba8lC5JqlzL5dLcendrj3U7b/XpDeaXY/+QijFRJub
         POaXxM1dUAZECWoKGeyfiCXDsLgYXXTnzj6ql2Z9YoISeBq+xBihwZoMwRaz96tnw85g
         tKFKCCNsF7Of2pupVgqHB8x0gXcUb7bOXM9lZGyZd2gcyzKntvOfMeJ1Qy4BiIAkLoTg
         2s2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711420727; x=1712025527;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xvuTO++gksCL8fZc9rnTMteYbv8VDF4X35FDvigGhis=;
        b=e0BwXKi8gRjkBy18poYq8sM2hsJL7omAhZ+Quk8xZ1WLXgHnGG3g5V9isTEaeH+79V
         8FAAbOnma0StfYSyUi1JGxmdIEg9FdnODyLJ7HP5YqgoH3svW8xdPifzXeOFbSWuOkwN
         n+uKOOd4r1VVNrj2jlTuuRs70YShG2yP27Ucbnejhv8Xu4KWYwf+WFo0ysIm4z9i2v8v
         vGVadr53wdRgRDTjHSsviAP3xBpF6mauBkkNBidhHs03mYiTjVOGQLISTNfj2DvF6aZI
         9QHb0vtzbSTl/5ww3UFCT6s3SGgFE/b1K/1JW+3JZA48BM+cf2LKL4nR0wgfOSpNn8bd
         UsTA==
X-Forwarded-Encrypted: i=1; AJvYcCVqnIn7bq3lvgUe8FVU5odgoIMA5FNawQulnfdlkW+zXkYdKPqwuyYraxVAfapDa/G6rU+Re/F3Z289ZgwQmJj0KIVr1nNCvsIbxfILwU4=
X-Gm-Message-State: AOJu0Yy5xJDVKFqU8lynHPHPPSAHB4IADTx3MGDVf7mvL9sn1cw/+5yW
	jT0ci72xFB2i06f/4sdRas/oXtiz8F3oaP9szNxxfHbPCAxirCIGDVnRNvVJT8AuQbLCwr8UHTg
	xIcBozeH+MY2orJjB8Supy9ZntIE=
X-Google-Smtp-Source: AGHT+IHOdLWyBfukeIVQCzdbwxRaGW3vVBOom0CaCVMlu32t8AKYWeJCkDsVov9mGGSIhvtfIDAySQLVgGHxvqfS2+Q=
X-Received: by 2002:a05:6402:520a:b0:56c:d21:d919 with SMTP id
 s10-20020a056402520a00b0056c0d21d919mr5364774edd.34.1711420726461; Mon, 25
 Mar 2024 19:38:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240322214801.319975-1-robdclark@gmail.com> <CABUrSUAykXUoX0y6jzCw1s=E=E08Z54Ygo1TvBm49_iT88oDFg@mail.gmail.com>
In-Reply-To: <CABUrSUAykXUoX0y6jzCw1s=E=E08Z54Ygo1TvBm49_iT88oDFg@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 25 Mar 2024 19:38:34 -0700
Message-ID: <CAF6AEGvK7fBhh36rQyqiHf_qVvsCJhHZjoyOqGqxRPcMZ3dzjw@mail.gmail.com>
To: Dominik Behr <dbehr@chromium.org>
X-Rspamd-Queue-Id: DC4DD3F359
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	NEURAL_HAM(-0.00)[-0.955];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,emersion.fr,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: NQF5LH4N6T6AHRPACJSM2PJL45UGCHCM
X-Message-ID-Hash: NQF5LH4N6T6AHRPACJSM2PJL45UGCHCM
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Simon Ser <contact@emersion.fr>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/prime: Unbreak virtgpu dma-buf export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NQF5LH4N6T6AHRPACJSM2PJL45UGCHCM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBpcyBhY3R1YWxseSBhIGJpdCBjb25jZXJuaW5nLi4gaW1wb3J0aW5nIGEgaG9zdCBwYWdl
IGJhY2tlZA0KYnVmZmVyIHdpdGhvdXQgZ3Vlc3QgbWFwcGluZyBpbnRvIGEgcGFzc3RocnUgZGV2
aWNlIHByb2JhYmx5IGRvZXNuJ3QNCndvcmsgYW5kIHNob3VsZCBiZSByZWplY3RlZCBlYXJsaWVy
Lg0KDQpJIGRvIHRoaW5rIHdlIHNob3VsZCByZWxheCB0aGUgcmVzdHJpY3Rpb24gKGVpdGhlciB0
YWtpbmcgbXkgcGF0Y2ggb3INCnJldmVydGluZyB0aGUgY29tbWl0IGl0IGZpeGVzKSB1bnRpbCB3
ZSB3b3JrIHRoaXMgb3V0IHByb3Blcmx5DQooYmVjYXVzZSB0aGUgb3JpZ2luYWwgcGF0Y2ggaXMg
YSByZWdyZXNzaW9uKSwgYnV0IGltcG9ydGluZyBhIGJ1ZmZlcg0Kd2l0aG91dCBndWVzdCBwYWdl
cyBpbnRvIGEgcGFzc3RocnUgZGV2aWNlIGNhbid0IHBvc3NpYmx5IHdvcmsNCnByb3Blcmx5LiAg
TWF5YmUgaXQgd29ya3MgYnkgY2hhbmNlIGlmIHRoZSBob3N0IGJ1ZmZlciBpcyBtYXBwZWQgdG8N
CnRoZSBndWVzdCwgYnV0IHRoYXQgaXMgbm90IGd1YXJhbnRlZWQuDQoNCkJSLA0KLVINCg0KT24g
TW9uLCBNYXIgMjUsIDIwMjQgYXQgMzozNeKAr1BNIERvbWluaWsgQmVociA8ZGJlaHJAY2hyb21p
dW0ub3JnPiB3cm90ZToNCj4NCj4gSXQgYWxzbyBmaXhlcyBpbXBvcnRpbmcgdmlydGdwdSBibG9i
cyBpbnRvIHJlYWwgaGFyZHdhcmUsIGZvciBpbnN0YW5jZSBhbWRncHUgZm9yIERSSV9QUklNRSBy
ZW5kZXJpbmcuDQo+DQo+IE9uIEZyaSwgTWFyIDIyLCAyMDI0IGF0IDI6NDjigK9QTSBSb2IgQ2xh
cmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdyb3RlOg0KPj4NCj4+IEZyb206IFJvYiBDbGFyayA8
cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4+DQo+PiB2aXJ0Z3B1ICJ2cmFtIiBHRU0gb2JqZWN0
cyBkbyBub3QgaW1wbGVtZW50IG9iai0+Z2V0X3NnX3RhYmxlKCkuICBCdXQNCj4+IHRoZXkgYWxz
byBkb24ndCB1c2UgZHJtX2dlbV9tYXBfZG1hX2J1ZigpLiAgSW4gZmFjdCB0aGV5IG1heSBub3Qg
ZXZlbg0KPj4gaGF2ZSBndWVzdCB2aXNpYmxlIHBhZ2VzLiAgQnV0IGl0IGlzIHBlcmZlY3RseSBm
aW5lIHRvIGV4cG9ydCBhbmQgc2hhcmUNCj4+IHdpdGggb3RoZXIgdmlydHVhbCBkZXZpY2VzLg0K
Pj4NCj4+IFJlcG9ydGVkLWJ5OiBEb21pbmlrIEJlaHIgPGRiZWhyQGNocm9taXVtLm9yZz4NCj4+
IEZpeGVzOiAyMDczOTVkYTVhOTcgKCJkcm0vcHJpbWU6IHJlamVjdCBETUEtQlVGIGF0dGFjaCB3
aGVuIGdldF9zZ190YWJsZSBpcyBtaXNzaW5nIikNCj4+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4+IC0tLQ0KPj4gIGRyaXZlcnMvZ3B1L2RybS9k
cm1fcHJpbWUuYyB8IDcgKysrKysrLQ0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jDQo+PiBpbmRleCA3MzUyYmRl
Mjk5ZDUuLjY0ZGQ2Mjc2ZTgyOCAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
cHJpbWUuYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jDQo+PiBAQCAtNTgy
LDcgKzU4MiwxMiBAQCBpbnQgZHJtX2dlbV9tYXBfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFf
YnVmLA0KPj4gIHsNCj4+ICAgICAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBkbWFf
YnVmLT5wcml2Ow0KPj4NCj4+IC0gICAgICAgaWYgKCFvYmotPmZ1bmNzLT5nZXRfc2dfdGFibGUp
DQo+PiArICAgICAgIC8qDQo+PiArICAgICAgICAqIGRybV9nZW1fbWFwX2RtYV9idWYoKSByZXF1
aXJlcyBvYmotPmdldF9zZ190YWJsZSgpLCBidXQgZHJpdmVycw0KPj4gKyAgICAgICAgKiB0aGF0
IGltcGxlbWVudCB0aGVpciBvd24gLT5tYXBfZG1hX2J1ZigpIGRvIG5vdC4NCj4+ICsgICAgICAg
ICovDQo+PiArICAgICAgIGlmICgoZG1hX2J1Zi0+b3BzLT5tYXBfZG1hX2J1ZiA9PSBkcm1fZ2Vt
X21hcF9kbWFfYnVmKSAmJg0KPj4gKyAgICAgICAgICAgIW9iai0+ZnVuY3MtPmdldF9zZ190YWJs
ZSkNCj4+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT1NZUzsNCj4+DQo+PiAgICAgICAgIHJl
dHVybiBkcm1fZ2VtX3BpbihvYmopOw0KPj4gLS0NCj4+IDIuNDQuMA0KPj4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
