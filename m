Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C001A71935
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Mar 2025 15:47:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFDCA43C01
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Mar 2025 14:47:11 +0000 (UTC)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by lists.linaro.org (Postfix) with ESMTPS id 1F8D43F64F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Mar 2025 14:46:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=mtMx4C2W;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.171 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3d5bb2ae4d3so6129575ab.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Mar 2025 07:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743000415; x=1743605215; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIzY6JuPtPbu1sd31VEp2X/O3x/UgKedEbGz6vT002k=;
        b=mtMx4C2WMbf3p9mA3gIdsWNwr8JPoamPt4DW+VhvG/rKgGcjw4wW2LTXspaTK9WWjo
         q8c9d9dzCrPJvWou559PTUFrKb+kwOzERsZM9HJRUdgcD6Jj1W7SJfodzH90cj5D/P0W
         sihB/0hqQj0H5ps7oN1ip36PHdQeKGUB5IDGoG0BkYyTFCgrZEkeNFrySkLwdsC1x6Vr
         8lXMXq4Fn2dKneO+gisZ/sbwTTLST/KT3Y5653lqvIJa2z2jd6JDM8mC4QUueYfg/b3l
         fmWNJ6mpxbaUMa2cg1CyvsxYNgQDghD543le1qfkYbNgOBPVWQtJfk0PoS6Z2ENVVCPS
         NBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743000415; x=1743605215;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yIzY6JuPtPbu1sd31VEp2X/O3x/UgKedEbGz6vT002k=;
        b=qKQWfxjMTGN0pQF/QWYLrFOt8IVPy2+KqOAEkwgAt88aBZyFfr7HRk2CZkXxg8FMQp
         HZ5r+/fuU20H63QBKlq/8DoV8jDpqJCSblEjZ4SOcpEotNgmLQj6Nf1mLrefiHuYL0AM
         P9qKJVyNgXX8nznGHdLUB6GUuwOHpmQVH1BlYus2borNf2FRHXV26vULSOKab9TEJO+M
         E3tdqkabxw6pWkM70rPD1MWMbdX1ubzJPQO7PN0aYvNRucjgvQptp4rJ2N8Y167lEMrw
         qVDudKckm4w1woXQluQ9yOMRlAPv9kYgmlzQQzy0kWkPps6ItM16THE+oKO0w30KAxMZ
         nhrA==
X-Forwarded-Encrypted: i=1; AJvYcCWk4yZcR6pGvJDyfy+zJuknND5QdV/Ov+PnR9ZW9nQ8A8rA4cHzMJT/GTHcJwXSK7Sa58pgqarZWVRykx4I@lists.linaro.org
X-Gm-Message-State: AOJu0YyiOBX04TAAhbNuT101pCGFi8btnF9lIIsIkfgg4nGCB3Y5FNlC
	v8+8T8XAPRRIyCaZaqzK/zZkkiFrGolozWO4wrzmlK8h0qLQpOJPBmW7L23GUGPRo0fXT43YftT
	l9R36g+RKvCkuxnTjl3sDAGN6epQ=
X-Gm-Gg: ASbGncvEtfnPzFqx8EIICiwbFHxMSN4tYk3f2PlkCmwdQUUVYdr9J61A90xu+DD/eYH
	z45Jpu+kfZ6zl0l+Qc5Nt+MhJUs/vmz+tq2Gw2BCmNM2AiRX9y2yqQOn/vrHVtNK6idzWFfG7GF
	Emz0HNJbUTsytrVEuvhub4Lk+WQhFGjX5s70Inb3hqTzFripeuYxq14P0=
X-Google-Smtp-Source: AGHT+IH8ychrG0Yq2ngyD0ecOqCO0RE/LXSO0aLcakG9T0PKFMWXaArBnOsdvh7pxztVoJ5s0s/eUYqjpz4S8ZEnOmM=
X-Received: by 2002:a05:6e02:260f:b0:3d3:ced4:db9b with SMTP id
 e9e14a558f8ab-3d5960bf801mr234679015ab.5.1743000415399; Wed, 26 Mar 2025
 07:46:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250326143903.24380-1-robdclark@gmail.com> <342ee079-ee0e-470d-afd2-c2870115b489@amd.com>
In-Reply-To: <342ee079-ee0e-470d-afd2-c2870115b489@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 26 Mar 2025 07:46:43 -0700
X-Gm-Features: AQ5f1Jot6jmzcgenF9qhrGVKGty_zzWylGXQwExIfmbDgtMjYHnUNBwSawcKJxY
Message-ID: <CAF6AEGu2Ax+u3QmD2VADwh4A4s5TAmP5Lq4DcYYadKP4csH-=g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1F8D43F64F
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.171:from];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.166.171:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: W46FLOD2PDZDBX56MPP7YFGZOASTGVV6
X-Message-ID-Hash: W46FLOD2PDZDBX56MPP7YFGZOASTGVV6
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W46FLOD2PDZDBX56MPP7YFGZOASTGVV6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgMjYsIDIwMjUgYXQgNzo0MeKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAyNi4wMy4yNSB1bSAxNTozOSBz
Y2hyaWViIFJvYiBDbGFyazoNCj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1
bS5vcmc+DQo+ID4NCj4gPiBBZGQgc3VwcG9ydCBmb3IgZXhwb3J0aW5nIGEgZG1hX2ZlbmNlIGZk
IGZvciBhIHNwZWNpZmljIHBvaW50IG9uIGENCj4gPiB0aW1lbGluZS4NCj4NCj4gTG9va3MgZ29v
ZCBvbiBmaXJzdCBnbGFuY2UuIFdoYXQncyB0aGUgdXNlcnNwYWNlIHVzZSBjYXNlPw0KDQpUaW1l
bGluZSBzeW5jb2JqIHN1cHBvcnQgZm9yIHZ0ZXN0L3ZwaXBlWzFdWzJdLi4gc2luY2UgY29yZQ0K
dmlyZ2xyZW5kZXIgYW5kIGRybSBuYXRpdmUgY3R4IHdvcmtzIGluIHRlcm1zIG9mIGZlbmNlcyAo
c2luY2UgaW4gdGhlDQpWTSBjYXNlLCBldmVyeXRoaW5nIGlzIGEgZmVuY2UgYmVsb3cgdGhlIGd1
ZXN0IGtlcm5lbCB1YWJpKSwgd2UgbmVlZA0KdG8gYmUgYWJsZSB0byB0dXJuIGEgcG9pbnQgb24g
YSB0aW1lbGluZSBiYWNrIGludG8gYSBmZW5jZSBmZC4gIChQbHVzDQppdCBzZWVtZWQgbGlrZSBh
biBvZGQgb21pc3Npb24gZnJvbSB0aGUgZXhpc3RpbmcgdWFiaS4pDQoNCkJSLA0KLVINCg0KWzFd
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21lc2EvLS9tZXJnZV9yZXF1ZXN0
cy8zMzQzMw0KWzJdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy92aXJnbC92aXJnbHJl
bmRlcmVyLy0vbWVyZ2VfcmVxdWVzdHMvODA1DQoNCj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFu
Lg0KPg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21p
dW0ub3JnPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYyB8IDgg
KysrKysrLS0NCj4gPiAgaW5jbHVkZS91YXBpL2RybS9kcm0uaCAgICAgICAgfCAyICsrDQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9zeW5jb2JqLmMNCj4gPiBpbmRleCA0ZjJhYjhhN2I1MGYuLmViN2EyZGQyZTI2
MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+ID4gQEAgLTc2Miw3ICs3NjIsNyBA
QCBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2ltcG9ydF9zeW5jX2ZpbGVfZmVuY2Uoc3RydWN0IGRy
bV9maWxlICpmaWxlX3ByaXZhdGUsDQo+ID4gIH0NCj4gPg0KPiA+ICBzdGF0aWMgaW50IGRybV9z
eW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQo+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgaGFuZGxlLCBpbnQg
KnBfZmQpDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgaGFu
ZGxlLCB1NjQgcG9pbnQsIGludCAqcF9mZCkNCj4gPiAgew0KPiA+ICAgICAgIGludCByZXQ7DQo+
ID4gICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQo+ID4gQEAgLTc3Miw3ICs3NzIsNyBA
QCBzdGF0aWMgaW50IGRybV9zeW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoc3RydWN0IGRybV9maWxl
ICpmaWxlX3ByaXZhdGUsDQo+ID4gICAgICAgaWYgKGZkIDwgMCkNCj4gPiAgICAgICAgICAgICAg
IHJldHVybiBmZDsNCj4gPg0KPiA+IC0gICAgIHJldCA9IGRybV9zeW5jb2JqX2ZpbmRfZmVuY2Uo
ZmlsZV9wcml2YXRlLCBoYW5kbGUsIDAsIDAsICZmZW5jZSk7DQo+ID4gKyAgICAgcmV0ID0gZHJt
X3N5bmNvYmpfZmluZF9mZW5jZShmaWxlX3ByaXZhdGUsIGhhbmRsZSwgcG9pbnQsIDAsICZmZW5j
ZSk7DQo+ID4gICAgICAgaWYgKHJldCkNCj4gPiAgICAgICAgICAgICAgIGdvdG8gZXJyX3B1dF9m
ZDsNCj4gPg0KPiA+IEBAIC04ODIsOCArODgyLDEyIEBAIGRybV9zeW5jb2JqX2hhbmRsZV90b19m
ZF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiA+DQo+ID4gICAg
ICAgaWYgKGFyZ3MtPmZsYWdzICYgRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX0VYUE9S
VF9TWU5DX0ZJTEUpDQo+ID4gICAgICAgICAgICAgICByZXR1cm4gZHJtX3N5bmNvYmpfZXhwb3J0
X3N5bmNfZmlsZShmaWxlX3ByaXZhdGUsIGFyZ3MtPmhhbmRsZSwNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFyZ3MtPnBvaW50LA0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmFyZ3MtPmZk
KTsNCj4gPg0KPiA+ICsgICAgIGlmIChhcmdzLT5wb2ludCkNCj4gPiArICAgICAgICAgICAgIHJl
dHVybiAtRUlOVkFMOw0KPiA+ICsNCj4gPiAgICAgICByZXR1cm4gZHJtX3N5bmNvYmpfaGFuZGxl
X3RvX2ZkKGZpbGVfcHJpdmF0ZSwgYXJncy0+aGFuZGxlLA0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgJmFyZ3MtPmZkKTsNCj4gPiAgfQ0KPiA+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL3VhcGkvZHJtL2RybS5oIGIvaW5jbHVkZS91YXBpL2RybS9kcm0uaA0KPiA+IGlu
ZGV4IDdmYmEzN2I5NDQwMS4uYzcxYThmNDQzOWYyIDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUv
dWFwaS9kcm0vZHJtLmgNCj4gPiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL2RybS5oDQo+ID4gQEAg
LTkxMiw2ICs5MTIsOCBAQCBzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFuZGxlIHsNCj4gPg0KPiA+ICAg
ICAgIF9fczMyIGZkOw0KPiA+ICAgICAgIF9fdTMyIHBhZDsNCj4gPiArDQo+ID4gKyAgICAgX191
NjQgcG9pbnQ7DQo+ID4gIH07DQo+ID4NCj4gPiAgc3RydWN0IGRybV9zeW5jb2JqX3RyYW5zZmVy
IHsNCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
