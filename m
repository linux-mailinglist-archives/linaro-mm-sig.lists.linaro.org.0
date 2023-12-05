Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 22568805A96
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 17:57:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2413F44129
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 16:57:04 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id DC7FD3EF7C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Dec 2023 16:56:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=T8oDxrlx;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-54c9116d05fso3883073a12.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Dec 2023 08:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701795413; x=1702400213; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+tSnatXurhj334T7o40bU3YRBBZ1jj+JdLiwdM1Rc8A=;
        b=T8oDxrlxVtEbMw72zIH2WKhkG53tu5JJ2KCAQDjoEgPiPBp/FjHHypysaA5ukCPvMg
         mFONPIYWs2+U0CylabB86GJ1AUwY71SR6UputluUVC9tIit5Pv5k0xIMlazLRxAgxIV1
         E7Ib3hlEjUonoFG14BEhbB9isO3g1i3rmkeUIUm416aoUNyYd+ZuCrFixdj5F89kUIH2
         G9BkJUZ9g0gr9+6eWsSkN2DTnLk9WIzpOhJ4/c5KUM3z6YKdNZy0oU25jrcb3TyPqdE0
         pKAkKn49mfgPuiiJrYfLWtO81QkMnUnp/tpceiXDyx05gwd+XEKDtVzaS3m/35QPlKF7
         ibVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701795413; x=1702400213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+tSnatXurhj334T7o40bU3YRBBZ1jj+JdLiwdM1Rc8A=;
        b=apv2reTk1vKgVlLduMMtcfghBYB4UY1rGyEi2GgF+Y5LidpplkJBBixPrfZwGHuJIp
         5dd+mZe2nmwuByNCR8ORKtaSgwT0Sa8gIvhI8YbFQVMhY5OrzgA+jLt0IJ3XlMAe7jXj
         UQbwpFzbgZuRKIckN4vZCtEHjXX0FsC73oOpxcw6uV7wxNL2ajn78G+RdY8Rgdzo1GEs
         izKZbflt2UJDmSaTRPveZjjvhHOsFjvZdqEQcqTqcCNqYSRcxCmnGcKvjGmLo/RElO+i
         mc8nY4D4S9ejkd4udbXpHcEISpQgZUtDHDRIEIspo3OZYF2OAUvqpR/Gi7uFSQMSJj0j
         72oA==
X-Gm-Message-State: AOJu0YxqD/DzOXo8AYh04JNdIjIPu+yDyk2DzmvdUvIJbSVLS+gK1i8V
	y2szXKAYJaB2mIeiAk8FxeTXcJFSv75Db6t7gMw=
X-Google-Smtp-Source: AGHT+IG307431IBWpNwuH08PWlep5xdN2M+f8DdbRLW+6MXm7xqgNtrg1jTJxQcWJN9R5yjh3KsY+lrJAMtzbsnUfPc=
X-Received: by 2002:a50:b412:0:b0:54b:67a7:efe5 with SMTP id
 b18-20020a50b412000000b0054b67a7efe5mr2421516edh.1.1701795412571; Tue, 05 Dec
 2023 08:56:52 -0800 (PST)
MIME-Version: 1.0
References: <20230322224403.35742-1-robdclark@gmail.com> <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
 <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com> <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
 <CAF6AEGt2D6Ei6OkUK5osz+jWzmkX8tmB1KGi305HaNd=bnQSoA@mail.gmail.com>
 <69d66b9e-5810-4844-a53f-08b7fd8eeccf@amd.com> <CAF6AEGuSexYVL2RF4yVCJptfJgN9vvTgzGWn3CminbsYvctTaw@mail.gmail.com>
 <96665cc5-01ab-4446-af37-e0f456bfe093@amd.com>
In-Reply-To: <96665cc5-01ab-4446-af37-e0f456bfe093@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 5 Dec 2023 08:56:40 -0800
Message-ID: <CAF6AEGtyUsARUTJb=+LwRQ96665tdcLLBxXH--18FDECuYOP6Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: DC7FD3EF7C
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail-ed1-f54.google.com:rdns,mail-ed1-f54.google.com:helo];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.54:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5JVIZJ6G5KTA4WNCOX5PWBN3EN7K4TP7
X-Message-ID-Hash: 5JVIZJ6G5KTA4WNCOX5PWBN3EN7K4TP7
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5JVIZJ6G5KTA4WNCOX5PWBN3EN7K4TP7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBEZWMgNSwgMjAyMyBhdCA3OjU44oCvQU0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMDUuMTIuMjMgdW0gMTY6NDEgc2No
cmllYiBSb2IgQ2xhcms6DQo+ID4gT24gTW9uLCBEZWMgNCwgMjAyMyBhdCAxMDo0NuKAr1BNIENo
cmlzdGlhbiBLw7ZuaWcNCj4gPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4g
Pj4gQW0gMDQuMTIuMjMgdW0gMjI6NTQgc2NocmllYiBSb2IgQ2xhcms6DQo+ID4+PiBPbiBUaHUs
IE1hciAyMywgMjAyMyBhdCAyOjMw4oCvUE0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29t
PiB3cm90ZToNCj4gPj4+PiBbU05JUF0NCj4gPj4+IFNvLCB0aGlzIHBhdGNoIHR1cm5zIG91dCB0
byBibG93IHVwIHNwZWN0YWN1bGFybHkgd2l0aCBkbWFfZmVuY2UNCj4gPj4+IHJlZmNudCB1bmRl
cmZsb3dzIHdoZW4gSSBlbmFibGUgRFJJVkVSX1NZTkNPQkpfVElNRUxJTkUgLi4gSSB0aGluaywN
Cj4gPj4+IGJlY2F1c2UgaXQgc3RhcnRzIHVud3JhcHBpbmcgZmVuY2UgY2hhaW5zLCBwb3NzaWJs
eSBpbiBwYXJhbGxlbCB3aXRoDQo+ID4+PiBmZW5jZSBzaWduYWxpbmcgb24gdGhlIHJldGlyZSBw
YXRoLiAgSXMgaXQgc3VwcG9zZWQgdG8gYmUgcGVybWlzc2libGUNCj4gPj4+IHRvIHVud3JhcCBh
IGZlbmNlIGNoYWluIGNvbmN1cnJlbnRseT8NCj4gPj4gVGhlIERNQS1mZW5jZSBjaGFpbiBvYmpl
Y3QgYW5kIGhlbHBlciBmdW5jdGlvbnMgd2VyZSBkZXNpZ25lZCBzbyB0aGF0DQo+ID4+IGNvbmN1
cnJlbnQgYWNjZXNzZXMgdG8gYWxsIGVsZW1lbnRzIGFyZSBhbHdheXMgcG9zc2libGUuDQo+ID4+
DQo+ID4+IFNlZSBkbWFfZmVuY2VfY2hhaW5fd2FsaygpIGFuZCBkbWFfZmVuY2VfY2hhaW5fZ2V0
X3ByZXYoKSBmb3IgZXhhbXBsZS4NCj4gPj4gZG1hX2ZlbmNlX2NoYWluX3dhbGsoKSBzdGFydHMg
d2l0aCBhIHJlZmVyZW5jZSB0byB0aGUgY3VycmVudCBmZW5jZSAodGhlDQo+ID4+IGFuY2hvciBv
ZiB0aGUgd2FsaykgYW5kIHRyaWVzIHRvIGdyYWIgYW4gdXAgdG8gZGF0ZSByZWZlcmVuY2Ugb24g
dGhlDQo+ID4+IHByZXZpb3VzIGZlbmNlIGluIHRoZSBjaGFpbi4gT25seSBhZnRlciB0aGF0IHJl
ZmVyZW5jZSBpcyBzdWNjZXNzZnVsbHkNCj4gPj4gYWNxdWlyZWQgd2UgZHJvcCB0aGUgcmVmZXJl
bmNlIHRvIHRoZSBhbmNob3Igd2hlcmUgd2Ugc3RhcnRlZC4NCj4gPj4NCj4gPj4gU2FtZSBmb3Ig
ZG1hX2ZlbmNlX2FycmF5X2ZpcnN0KCksIGRtYV9mZW5jZV9hcnJheV9uZXh0KCkuIEhlcmUgd2Ug
aG9sZCBhDQo+ID4+IHJlZmVyZW5jZSB0byB0aGUgYXJyYXkgd2hpY2ggaW4gdHVybiBob2xkcyBy
ZWZlcmVuY2VzIHRvIGVhY2ggZmVuY2UNCj4gPj4gaW5zaWRlIHRoZSBhcnJheSB1bnRpbCBpdCBp
cyBkZXN0cm95ZWQgaXRzZWxmLg0KPiA+Pg0KPiA+PiBXaGVuIHRoaXMgYmxvd3MgdXAgd2UgaGF2
ZSBzb21laG93IG1peGVkIHVwIHRoZSByZWZlcmVuY2VzIHNvbWV3aGVyZS4NCj4gPiBUaGF0J3Mg
d2hhdCBpdCBsb29rZWQgbGlrZSB0byBtZSwgYnV0IHdhbnRlZCB0byBtYWtlIHN1cmUgSSB3YXNu
J3QNCj4gPiBvdmVybG9va2luZyBzb21ldGhpbmcgc3VidGxlLiAgQW5kIGluIHRoaXMgY2FzZSwg
dGhlIGZlbmNlIGFjdHVhbGx5DQo+ID4gc2hvdWxkIGJlIHRoZSBzeW5jb2JqIHRpbWVsaW5lIHBv
aW50IGZlbmNlLCBub3QgdGhlIGZlbmNlIGNoYWluLg0KPiA+IFZpcnRncHUgaGFzIGVzc2VudGlh
bGx5IHRoZSBzYW1lIGxvZ2ljICh0aGVyZSB3ZSByZWFsbHkgZG8gd2FudCB0bw0KPiA+IHVud3Jh
cCBmZW5jZXMgc28gd2UgY2FuIHBhc3MgaG9zdCBmZW5jZXMgYmFjayB0byBob3N0IHJhdGhlciB0
aGFuDQo+ID4gd2FpdGluZyBpbiBndWVzdCksIEknbSBub3Qgc3VyZSBpZiBpdCB3b3VsZCBibG93
IHVwIGluIHRoZSBzYW1lIHdheS4NCj4NCj4gV2VsbCBkbyB5b3UgaGF2ZSBhIGJhY2t0cmFjZSBv
ZiB3aGF0IGV4YWN0bHkgaGFwcGVucz8NCj4NCj4gTWF5YmUgd2UgaGF2ZSBzb21lIF9wdXQoKSBi
ZWZvcmUgX2dldCgpIG9yIHNvbWV0aGluZyBsaWtlIHRoaXMuDQoNCkkgaGFja2VkIHVwIHNvbWV0
aGluZyB0byBzdG9yZSB0aGUgYmFja3RyYWNlIGluIGRtYV9mZW5jZV9yZWxlYXNlKCkNCihhbmQg
bGVhayB0aGUgYmxvY2sgc28gdGhlIGJhY2t0cmFjZSB3b3VsZCBzdGlsbCBiZSBhcm91bmQgbGF0
ZXIgd2hlbg0KZG1hX2ZlbmNlX2dldC9wdXQgd2FzIGxhdGVyIGNhbGxlZCkgYW5kIGVuZGVkIHVw
IHdpdGg6DQoNClsgIDE1Mi44MTEzNjBdIGZyZWVkIGF0Og0KWyAgMTUyLjgxMzcxOF0gIGRtYV9m
ZW5jZV9yZWxlYXNlKzB4MzAvMHgxMzQNClsgIDE1Mi44MTc4NjVdICBkbWFfZmVuY2VfcHV0KzB4
MzgvMHg5OCBbZ3B1X3NjaGVkXQ0KWyAgMTUyLjgyMjY1N10gIGRybV9zY2hlZF9qb2JfYWRkX2Rl
cGVuZGVuY3krMHgxNjAvMHgxOGMgW2dwdV9zY2hlZF0NClsgIDE1Mi44Mjg5NDhdICBkcm1fc2No
ZWRfam9iX2FkZF9zeW5jb2JqX2RlcGVuZGVuY3krMHg1OC8weDg4IFtncHVfc2NoZWRdDQpbICAx
NTIuODM1NzcwXSAgbXNtX2lvY3RsX2dlbV9zdWJtaXQrMHg1ODAvMHgxMTYwIFttc21dDQpbICAx
NTIuODQxMDcwXSAgZHJtX2lvY3RsX2tlcm5lbCsweGVjLzB4MTZjDQpbICAxNTIuODQ1MTMyXSAg
ZHJtX2lvY3RsKzB4MmU4LzB4M2Y0DQpbICAxNTIuODQ4NjQ2XSAgdmZzX2lvY3RsKzB4MzAvMHg1
MA0KWyAgMTUyLjg1MTk4Ml0gIF9fYXJtNjRfc3lzX2lvY3RsKzB4ODAvMHhiNA0KWyAgMTUyLjg1
NjAzOV0gIGludm9rZV9zeXNjYWxsKzB4OGMvMHgxMjANClsgIDE1Mi44NTk5MTldICBlbDBfc3Zj
X2NvbW1vbi5jb25zdHByb3AuMCsweGMwLzB4ZGMNClsgIDE1Mi44NjQ3NzddICBkb19lbDBfc3Zj
KzB4MjQvMHgzMA0KWyAgMTUyLjg2ODIwN10gIGVsMF9zdmMrMHg4Yy8weGQ4DQpbICAxNTIuODcx
MzY1XSAgZWwwdF82NF9zeW5jX2hhbmRsZXIrMHg4NC8weDEyYw0KWyAgMTUyLjg3NTc3MV0gIGVs
MHRfNjRfc3luYysweDE5MC8weDE5NA0KDQpJIHN1cHBvc2UgdGhhdCBkb2Vzbid0IGd1YXJhbnRl
ZSB0aGF0IHRoaXMgd2FzIHRoZSBwcm9ibGVtYXRpYyBwdXQuDQpCdXQgZHJvcHBpbmcgdGhpcyBw
YXRjaCB0byB1bndyYXAgdGhlIGZlbmNlIG1ha2VzIHRoZSBwcm9ibGVtIGdvDQphd2F5Li4NCg0K
QlIsDQotUg0KDQo+IFRoYW5rcywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+DQo+ID4gQlIsDQo+ID4g
LVINCj4gPg0KPiA+PiBSZWdhcmRzLA0KPiA+PiBDaHJpc3RpYW4uDQo+ID4+DQo+ID4+PiBCUiwN
Cj4gPj4+IC1SDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
