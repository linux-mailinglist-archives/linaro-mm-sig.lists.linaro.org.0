Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1CB805904
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 16:41:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3E673F65B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 15:41:51 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id CE41D3F65B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Dec 2023 15:41:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=FgY6aS5L;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.208.46 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-54bfa9b3ffaso7456817a12.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Dec 2023 07:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701790901; x=1702395701; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dAoKJ4psFcjVNbAUMsdpr7K2aFVGd9hI1XgWuDzw694=;
        b=FgY6aS5LtRxEa3ubm4mVP2qMMrz7yWDpVxB0yIJP2TPezKFPc4huXwXMjtc+cJFkKE
         8r5rThyffpEjwSzHv/sCgV7sDBaJRChBSDK4MGzWMzC5TUBj/DHv+kbCaT5s+F5ZQpZn
         Gl89cPuyBGuj05YAZFb9P9+7D0Z5LFNumiKE6wMXvXQW5/Byvg854kA0SdCAd3ctFqyy
         fmoSyDpsyjxGqMzNlP0gJQCxEs1uauno55gcoUq9BySjWq350rhfuAuQK8aljmxosidr
         Ib5Y/faeja1OB+CV8fANciDUZlFZOKsyvoXku4qS7k/KELES8cykcZbAcbAzfkz07UB6
         56kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701790901; x=1702395701;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dAoKJ4psFcjVNbAUMsdpr7K2aFVGd9hI1XgWuDzw694=;
        b=jxFnfKz4hLWfSFIvGqhEHr0bxWJAOfd2EHPYGI/eg9YWwFcCELguxymdrvqnfSz7rj
         gjkZSN6hULrQjbxiZlalaS4/A1LoQ5G0duDqaRmMRiZHV14a6ZX7o1T59Eh91jcxp886
         p2MM0yC1GSbz+p4FN9HSsXuMR0F5UJpTlsqlJ5vTuASyK2vxykJG87Y5YMVmfWGp6Tvh
         8udXdXbcS889CgBetucbWkQXVIc08oyPmqDGrtBMbjqjdhuRPMV0NMQrtNul1FTFExyS
         yImk26VCTc+DOs9sbhPyhw0Q/f6hExyBv+fXt7JJiaDhGQ1U9zaoIOdHJPKhI1cW3IG/
         0Rew==
X-Gm-Message-State: AOJu0YyuvQue7YkqE1qDNtHh1ZECiRhIUvpShRDNtmDbIgXFbD7OqB8o
	QLYutFawGW4V88Cnp3iMApdNXGcZrD8DdYQcFU0=
X-Google-Smtp-Source: AGHT+IFvLDxUTjJzbdwumJSp5LkZc8AHSFgJ97zk7pTSy9rQCh4aUfX+yyZdXl8wOadp6BFbyKQzkAKuDXs3aKp15s8=
X-Received: by 2002:a50:d5cd:0:b0:54c:4837:9a9e with SMTP id
 g13-20020a50d5cd000000b0054c48379a9emr4921654edj.69.1701790900478; Tue, 05
 Dec 2023 07:41:40 -0800 (PST)
MIME-Version: 1.0
References: <20230322224403.35742-1-robdclark@gmail.com> <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
 <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com> <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
 <CAF6AEGt2D6Ei6OkUK5osz+jWzmkX8tmB1KGi305HaNd=bnQSoA@mail.gmail.com> <69d66b9e-5810-4844-a53f-08b7fd8eeccf@amd.com>
In-Reply-To: <69d66b9e-5810-4844-a53f-08b7fd8eeccf@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 5 Dec 2023 07:41:28 -0800
Message-ID: <CAF6AEGuSexYVL2RF4yVCJptfJgN9vvTgzGWn3CminbsYvctTaw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: CE41D3F65B
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.92 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.92)[99.66%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GZCR4BJ4WVLLFZS5WS3PKDBW7RN3TZZM
X-Message-ID-Hash: GZCR4BJ4WVLLFZS5WS3PKDBW7RN3TZZM
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GZCR4BJ4WVLLFZS5WS3PKDBW7RN3TZZM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBEZWMgNCwgMjAyMyBhdCAxMDo0NuKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAwNC4xMi4yMyB1bSAyMjo1NCBz
Y2hyaWViIFJvYiBDbGFyazoNCj4gPiBPbiBUaHUsIE1hciAyMywgMjAyMyBhdCAyOjMw4oCvUE0g
Um9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToNCj4gPj4gW1NOSVBdDQo+ID4g
U28sIHRoaXMgcGF0Y2ggdHVybnMgb3V0IHRvIGJsb3cgdXAgc3BlY3RhY3VsYXJseSB3aXRoIGRt
YV9mZW5jZQ0KPiA+IHJlZmNudCB1bmRlcmZsb3dzIHdoZW4gSSBlbmFibGUgRFJJVkVSX1NZTkNP
QkpfVElNRUxJTkUgLi4gSSB0aGluaywNCj4gPiBiZWNhdXNlIGl0IHN0YXJ0cyB1bndyYXBwaW5n
IGZlbmNlIGNoYWlucywgcG9zc2libHkgaW4gcGFyYWxsZWwgd2l0aA0KPiA+IGZlbmNlIHNpZ25h
bGluZyBvbiB0aGUgcmV0aXJlIHBhdGguICBJcyBpdCBzdXBwb3NlZCB0byBiZSBwZXJtaXNzaWJs
ZQ0KPiA+IHRvIHVud3JhcCBhIGZlbmNlIGNoYWluIGNvbmN1cnJlbnRseT8NCj4NCj4gVGhlIERN
QS1mZW5jZSBjaGFpbiBvYmplY3QgYW5kIGhlbHBlciBmdW5jdGlvbnMgd2VyZSBkZXNpZ25lZCBz
byB0aGF0DQo+IGNvbmN1cnJlbnQgYWNjZXNzZXMgdG8gYWxsIGVsZW1lbnRzIGFyZSBhbHdheXMg
cG9zc2libGUuDQo+DQo+IFNlZSBkbWFfZmVuY2VfY2hhaW5fd2FsaygpIGFuZCBkbWFfZmVuY2Vf
Y2hhaW5fZ2V0X3ByZXYoKSBmb3IgZXhhbXBsZS4NCj4gZG1hX2ZlbmNlX2NoYWluX3dhbGsoKSBz
dGFydHMgd2l0aCBhIHJlZmVyZW5jZSB0byB0aGUgY3VycmVudCBmZW5jZSAodGhlDQo+IGFuY2hv
ciBvZiB0aGUgd2FsaykgYW5kIHRyaWVzIHRvIGdyYWIgYW4gdXAgdG8gZGF0ZSByZWZlcmVuY2Ug
b24gdGhlDQo+IHByZXZpb3VzIGZlbmNlIGluIHRoZSBjaGFpbi4gT25seSBhZnRlciB0aGF0IHJl
ZmVyZW5jZSBpcyBzdWNjZXNzZnVsbHkNCj4gYWNxdWlyZWQgd2UgZHJvcCB0aGUgcmVmZXJlbmNl
IHRvIHRoZSBhbmNob3Igd2hlcmUgd2Ugc3RhcnRlZC4NCj4NCj4gU2FtZSBmb3IgZG1hX2ZlbmNl
X2FycmF5X2ZpcnN0KCksIGRtYV9mZW5jZV9hcnJheV9uZXh0KCkuIEhlcmUgd2UgaG9sZCBhDQo+
IHJlZmVyZW5jZSB0byB0aGUgYXJyYXkgd2hpY2ggaW4gdHVybiBob2xkcyByZWZlcmVuY2VzIHRv
IGVhY2ggZmVuY2UNCj4gaW5zaWRlIHRoZSBhcnJheSB1bnRpbCBpdCBpcyBkZXN0cm95ZWQgaXRz
ZWxmLg0KPg0KPiBXaGVuIHRoaXMgYmxvd3MgdXAgd2UgaGF2ZSBzb21laG93IG1peGVkIHVwIHRo
ZSByZWZlcmVuY2VzIHNvbWV3aGVyZS4NCg0KVGhhdCdzIHdoYXQgaXQgbG9va2VkIGxpa2UgdG8g
bWUsIGJ1dCB3YW50ZWQgdG8gbWFrZSBzdXJlIEkgd2Fzbid0DQpvdmVybG9va2luZyBzb21ldGhp
bmcgc3VidGxlLiAgQW5kIGluIHRoaXMgY2FzZSwgdGhlIGZlbmNlIGFjdHVhbGx5DQpzaG91bGQg
YmUgdGhlIHN5bmNvYmogdGltZWxpbmUgcG9pbnQgZmVuY2UsIG5vdCB0aGUgZmVuY2UgY2hhaW4u
DQpWaXJ0Z3B1IGhhcyBlc3NlbnRpYWxseSB0aGUgc2FtZSBsb2dpYyAodGhlcmUgd2UgcmVhbGx5
IGRvIHdhbnQgdG8NCnVud3JhcCBmZW5jZXMgc28gd2UgY2FuIHBhc3MgaG9zdCBmZW5jZXMgYmFj
ayB0byBob3N0IHJhdGhlciB0aGFuDQp3YWl0aW5nIGluIGd1ZXN0KSwgSSdtIG5vdCBzdXJlIGlm
IGl0IHdvdWxkIGJsb3cgdXAgaW4gdGhlIHNhbWUgd2F5Lg0KDQpCUiwNCi1SDQoNCj4gUmVnYXJk
cywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+DQo+ID4gQlIsDQo+ID4gLVINCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
