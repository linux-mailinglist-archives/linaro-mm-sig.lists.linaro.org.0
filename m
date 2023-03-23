Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B90A6C725B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Mar 2023 22:30:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48173441D0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Mar 2023 21:30:50 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by lists.linaro.org (Postfix) with ESMTPS id E7F9F3E96A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Mar 2023 21:30:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=fqEBzCib;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.178 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id bi31so4591743oib.9
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Mar 2023 14:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679607037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yYGawMaA5C9I8og6thwq+8ahieODy/UxjYv744M7Lsg=;
        b=fqEBzCibuTy1u7D82n6S4fav5cTjcJ23V97Sk6kFjjSMEVXnUf5FzEMIjlJZggk0tb
         RUwB+C5pPWNspWTo+0FYKKq7TW91va8rQg68/I7BAYIFYYMykqTwvCnlrIr5OuE2FTjR
         2igatK31JrJmNKovUnU/wWOvYZhd17XGr3eZjJqJbluQZbKTMyKFxP20Rz4+7xoUdcc6
         h/Szlzh2glnSZd92WkIo70de/07202kqssrfn962mYLsqCwl6nGkd7G655dK453BHzsL
         bIZqE+slN7eO7/aOoaox5IyQUbCNffxCZdp67VKA2+59HcTKk6uL4P7mN+kAKJ++qqqC
         t4uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679607037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yYGawMaA5C9I8og6thwq+8ahieODy/UxjYv744M7Lsg=;
        b=l68Sw/VLDoLtlceLOv36TjmwKMOeSitkZof1OOL1YcIGe/rJgh5rn6hYWkCx/DP9rr
         lVrpwWtjgmdEKPYXQAvUOgbosheIl5WRN3KhyXau48M+hIllTJcwpG4QjX7LwbfiGXDJ
         ER9chFx43VtCv0FvOlucICyWmyTlnNaxXd/fFpcjNnE5fS9h1BsZR0ItXoZAKylLs+W3
         DOiDVb8SFVw6Ng7QTG5alMjIUoHh3o8jq+W9Xo6rP4pgb5cG85/35Chwex0s+QXK6yo/
         hqyiKAFjVQZ100c81Ziuu5UgSo+vlzzTyGJBUYRYk6jbp+oJTh15qZAfJRWJJnHCqv0W
         cxvQ==
X-Gm-Message-State: AO0yUKX0m7qtsP2YCjga6Izk7iIoL4jBU0CKmf27ddfJgbgp1TDSWeBd
	mRbx5mAdDyKVZzoYfcrCBu+rDUod8oIeMJPxby0=
X-Google-Smtp-Source: AK7set+lQIOQZa6G3yJgfeNWvhx4ZPw9QfSfPP4xMRabuyGwu/M0+lIKerUid2CsL2yKUuudaarY5sPyNjfYKO1ILwk=
X-Received: by 2002:a54:4716:0:b0:384:1e6a:bf10 with SMTP id
 k22-20020a544716000000b003841e6abf10mr36512oik.5.1679607035826; Thu, 23 Mar
 2023 14:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230322224403.35742-1-robdclark@gmail.com> <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com> <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com>
In-Reply-To: <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 23 Mar 2023 14:30:24 -0700
Message-ID: <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E7F9F3E96A
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,mail-oi1-f178.google.com:helo,mail-oi1-f178.google.com:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.178:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org]
Message-ID-Hash: B3CUVOZTMOFA3WC2E5GUV2BAQZ6MZSMU
X-Message-ID-Hash: B3CUVOZTMOFA3WC2E5GUV2BAQZ6MZSMU
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B3CUVOZTMOFA3WC2E5GUV2BAQZ6MZSMU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXIgMjMsIDIwMjMgYXQgNzowM+KAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAyMy4wMy4yMyB1bSAxNDo1NCBz
Y2hyaWViIFJvYiBDbGFyazoNCj4gPiBPbiBUaHUsIE1hciAyMywgMjAyMyBhdCAxMjozNeKAr0FN
IENocmlzdGlhbiBLw7ZuaWcNCj4gPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToN
Cj4gPj4gQW0gMjIuMDMuMjMgdW0gMjM6NDQgc2NocmllYiBSb2IgQ2xhcms6DQo+ID4+PiBGcm9t
OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4+Pg0KPiA+Pj4gQ29udGFp
bmVyIGZlbmNlcyBoYXZlIGJ1cm5lciBjb250ZXh0cywgd2hpY2ggbWFrZXMgdGhlIHRyaWNrIHRv
IHN0b3JlIGF0DQo+ID4+PiBtb3N0IG9uZSBmZW5jZSBwZXIgY29udGV4dCBzb21ld2hhdCB1c2Vs
ZXNzIGlmIHdlIGRvbid0IHVud3JhcCBhcnJheSBvcg0KPiA+Pj4gY2hhaW4gZmVuY2VzLg0KPiA+
PiBNaG0sIHdlIGludGVudGlvbmFsbHkga2VwdCB0aGVtIG5vdCB1bndyYXBwZWQgc2luY2UgdGhp
cyB3YXkgdGhleSBvbmx5DQo+ID4+IG9jY3VweSBvbmUgZmVuY2Ugc2xvdC4NCj4gPj4NCj4gPj4g
QnV0IGl0IG1pZ2h0IGJlIGJldHRlciB0byB1bndyYXAgdGhlbSBpZiB5b3UgYWRkIG1hbnkgb2Yg
dGhvc2UgZGVwZW5kZW5jaWVzLg0KPiA+Pg0KPiA+Pj4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJr
IDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KPiA+Pj4gLS0tDQo+ID4+PiB0YmgsIEknbSBub3Qg
c3VyZSB3aHkgd2Ugd2VyZW4ndCBkb2luZyB0aGlzIGFscmVhZHksIHVubGVzcyB0aGVyZSBpcw0K
PiA+Pj4gc29tZXRoaW5nIEknbSBvdmVybG9va2luZw0KPiA+Pj4NCj4gPj4+ICAgIGRyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgNDMgKysrKysrKysrKysrKysrKystLS0t
LS0tLS0NCj4gPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxNSBkZWxl
dGlvbnMoLSkNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVk
dWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4u
Yw0KPiA+Pj4gaW5kZXggYzJlZTQ0ZDYyMjRiLi5mNTllNTMzNWFmYmIgMTAwNjQ0DQo+ID4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiA+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4gPj4+IEBAIC00MSwyMCAr
NDEsMjEgQEANCj4gPj4+ICAgICAqIDQuIEVudGl0aWVzIHRoZW1zZWx2ZXMgbWFpbnRhaW4gYSBx
dWV1ZSBvZiBqb2JzIHRoYXQgd2lsbCBiZSBzY2hlZHVsZWQgb24NCj4gPj4+ICAgICAqICAgIHRo
ZSBoYXJkd2FyZS4NCj4gPj4+ICAgICAqDQo+ID4+PiAgICAgKiBUaGUgam9icyBpbiBhIGVudGl0
eSBhcmUgYWx3YXlzIHNjaGVkdWxlZCBpbiB0aGUgb3JkZXIgdGhhdCB0aGV5IHdlcmUgcHVzaGVk
Lg0KPiA+Pj4gICAgICovDQo+ID4+Pg0KPiA+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L2t0aHJlYWQu
aD4NCj4gPj4+ICAgICNpbmNsdWRlIDxsaW51eC93YWl0Lmg+DQo+ID4+PiAgICAjaW5jbHVkZSA8
bGludXgvc2NoZWQuaD4NCj4gPj4+ICAgICNpbmNsdWRlIDxsaW51eC9jb21wbGV0aW9uLmg+DQo+
ID4+PiArI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS11bndyYXAuaD4NCj4gPj4+ICAgICNpbmNs
dWRlIDxsaW51eC9kbWEtcmVzdi5oPg0KPiA+Pj4gICAgI2luY2x1ZGUgPHVhcGkvbGludXgvc2No
ZWQvdHlwZXMuaD4NCj4gPj4+DQo+ID4+PiAgICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0K
PiA+Pj4gICAgI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+DQo+ID4+PiAgICAjaW5jbHVkZSA8ZHJt
L2dwdV9zY2hlZHVsZXIuaD4NCj4gPj4+ICAgICNpbmNsdWRlIDxkcm0vc3BzY19xdWV1ZS5oPg0K
PiA+Pj4NCj4gPj4+ICAgICNkZWZpbmUgQ1JFQVRFX1RSQUNFX1BPSU5UUw0KPiA+Pj4gICAgI2lu
Y2x1ZGUgImdwdV9zY2hlZHVsZXJfdHJhY2UuaCINCj4gPj4+IEBAIC02NjUsNDEgKzY2NiwyNyBA
QCB2b2lkIGRybV9zY2hlZF9qb2JfYXJtKHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IpDQo+ID4+
PiAgICAgICAgc2NoZWQgPSBlbnRpdHktPnJxLT5zY2hlZDsNCj4gPj4+DQo+ID4+PiAgICAgICAg
am9iLT5zY2hlZCA9IHNjaGVkOw0KPiA+Pj4gICAgICAgIGpvYi0+c19wcmlvcml0eSA9IGVudGl0
eS0+cnEgLSBzY2hlZC0+c2NoZWRfcnE7DQo+ID4+PiAgICAgICAgam9iLT5pZCA9IGF0b21pYzY0
X2luY19yZXR1cm4oJnNjaGVkLT5qb2JfaWRfY291bnQpOw0KPiA+Pj4NCj4gPj4+ICAgICAgICBk
cm1fc2NoZWRfZmVuY2VfaW5pdChqb2ItPnNfZmVuY2UsIGpvYi0+ZW50aXR5KTsNCj4gPj4+ICAg
IH0NCj4gPj4+ICAgIEVYUE9SVF9TWU1CT0woZHJtX3NjaGVkX2pvYl9hcm0pOw0KPiA+Pj4NCj4g
Pj4+IC0vKioNCj4gPj4+IC0gKiBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5IC0gYWRkcyB0
aGUgZmVuY2UgYXMgYSBqb2IgZGVwZW5kZW5jeQ0KPiA+Pj4gLSAqIEBqb2I6IHNjaGVkdWxlciBq
b2IgdG8gYWRkIHRoZSBkZXBlbmRlbmNpZXMgdG8NCj4gPj4+IC0gKiBAZmVuY2U6IHRoZSBkbWFf
ZmVuY2UgdG8gYWRkIHRvIHRoZSBsaXN0IG9mIGRlcGVuZGVuY2llcy4NCj4gPj4+IC0gKg0KPiA+
Pj4gLSAqIE5vdGUgdGhhdCBAZmVuY2UgaXMgY29uc3VtZWQgaW4gYm90aCB0aGUgc3VjY2VzcyBh
bmQgZXJyb3IgY2FzZXMuDQo+ID4+PiAtICoNCj4gPj4+IC0gKiBSZXR1cm5zOg0KPiA+Pj4gLSAq
IDAgb24gc3VjY2Vzcywgb3IgYW4gZXJyb3Igb24gZmFpbGluZyB0byBleHBhbmQgdGhlIGFycmF5
Lg0KPiA+Pj4gLSAqLw0KPiA+Pj4gLWludCBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5KHN0
cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsDQo+ID4+PiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ID4+PiArc3RhdGljIGludCBfYWRkX2Rl
cGVuZGVuY3koc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiwgc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpDQo+ID4+IFBsZWFzZSBrZWVwIHRoZSBkcm1fc2NoZWRfam9iXyBwcmVmaXggaGVyZSBldmVu
IGZvciBzdGF0aWMgZnVuY3Rpb25zLg0KPiA+PiBUaGUgc3ltYm9sIF9hZGRfZGVwZW5kZW5jeSBq
dXN0IHN1Y2tzIGluIGEgYmFja3RyYWNlLCBlc3BlY2lhbGx5IHdoZW4NCj4gPj4gaXQncyB0YWls
IG9wdGltaXplZC4NCj4gPj4NCj4gPj4+ICAgIHsNCj4gPj4+ICAgICAgICBzdHJ1Y3QgZG1hX2Zl
bmNlICplbnRyeTsNCj4gPj4+ICAgICAgICB1bnNpZ25lZCBsb25nIGluZGV4Ow0KPiA+Pj4gICAg
ICAgIHUzMiBpZCA9IDA7DQo+ID4+PiAgICAgICAgaW50IHJldDsNCj4gPj4+DQo+ID4+PiAtICAg
ICBpZiAoIWZlbmNlKQ0KPiA+Pj4gLSAgICAgICAgICAgICByZXR1cm4gMDsNCj4gPj4+IC0NCj4g
Pj4+ICAgICAgICAvKiBEZWR1cGxpY2F0ZSBpZiB3ZSBhbHJlYWR5IGRlcGVuZCBvbiBhIGZlbmNl
IGZyb20gdGhlIHNhbWUgY29udGV4dC4NCj4gPj4+ICAgICAgICAgKiBUaGlzIGxldHMgdGhlIHNp
emUgb2YgdGhlIGFycmF5IG9mIGRlcHMgc2NhbGUgd2l0aCB0aGUgbnVtYmVyIG9mDQo+ID4+PiAg
ICAgICAgICogZW5naW5lcyBpbnZvbHZlZCwgcmF0aGVyIHRoYW4gdGhlIG51bWJlciBvZiBCT3Mu
DQo+ID4+PiAgICAgICAgICovDQo+ID4+PiAgICAgICAgeGFfZm9yX2VhY2goJmpvYi0+ZGVwZW5k
ZW5jaWVzLCBpbmRleCwgZW50cnkpIHsNCj4gPj4+ICAgICAgICAgICAgICAgIGlmIChlbnRyeS0+
Y29udGV4dCAhPSBmZW5jZS0+Y29udGV4dCkNCj4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAg
Y29udGludWU7DQo+ID4+Pg0KPiA+Pj4gICAgICAgICAgICAgICAgaWYgKGRtYV9mZW5jZV9pc19s
YXRlcihmZW5jZSwgZW50cnkpKSB7DQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9m
ZW5jZV9wdXQoZW50cnkpOw0KPiA+Pj4gQEAgLTcwOSwyMCArNjk2LDQ2IEBAIGludCBkcm1fc2No
ZWRfam9iX2FkZF9kZXBlbmRlbmN5KHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsDQo+ID4+PiAg
ICAgICAgICAgICAgICB9DQo+ID4+PiAgICAgICAgICAgICAgICByZXR1cm4gMDsNCj4gPj4+ICAg
ICAgICB9DQo+ID4+Pg0KPiA+Pj4gICAgICAgIHJldCA9IHhhX2FsbG9jKCZqb2ItPmRlcGVuZGVu
Y2llcywgJmlkLCBmZW5jZSwgeGFfbGltaXRfMzJiLCBHRlBfS0VSTkVMKTsNCj4gPj4+ICAgICAg
ICBpZiAocmV0ICE9IDApDQo+ID4+PiAgICAgICAgICAgICAgICBkbWFfZmVuY2VfcHV0KGZlbmNl
KTsNCj4gPj4+DQo+ID4+PiAgICAgICAgcmV0dXJuIHJldDsNCj4gPj4+ICAgIH0NCj4gPj4+ICsN
Cj4gPj4+ICsvKioNCj4gPj4+ICsgKiBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5IC0gYWRk
cyB0aGUgZmVuY2UgYXMgYSBqb2IgZGVwZW5kZW5jeQ0KPiA+Pj4gKyAqIEBqb2I6IHNjaGVkdWxl
ciBqb2IgdG8gYWRkIHRoZSBkZXBlbmRlbmNpZXMgdG8NCj4gPj4+ICsgKiBAZmVuY2U6IHRoZSBk
bWFfZmVuY2UgdG8gYWRkIHRvIHRoZSBsaXN0IG9mIGRlcGVuZGVuY2llcy4NCj4gPj4+ICsgKg0K
PiA+Pj4gKyAqIE5vdGUgdGhhdCBAZmVuY2UgaXMgY29uc3VtZWQgaW4gYm90aCB0aGUgc3VjY2Vz
cyBhbmQgZXJyb3IgY2FzZXMuDQo+ID4+PiArICoNCj4gPj4+ICsgKiBSZXR1cm5zOg0KPiA+Pj4g
KyAqIDAgb24gc3VjY2Vzcywgb3IgYW4gZXJyb3Igb24gZmFpbGluZyB0byBleHBhbmQgdGhlIGFy
cmF5Lg0KPiA+Pj4gKyAqLw0KPiA+Pj4gK2ludCBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5
KHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsDQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ID4+IE1heWJlIG5hbWUgdGhlIG5l
dyBmdW5jdGlvbiBkcm1fc2NoZWRfam9iX3Vud3JhcF9hZGRfZGVwZW5kZW5jeSBvcg0KPiA+PiBz
b21ldGhpbmcgbGlrZSB0aGlzLg0KPiA+Pg0KPiA+PiBJIG5lZWQgdG8gZG91YmxlIGNoZWNrLCBi
dXQgSSB0aGluayBmb3Igc29tZSBjYXNlcyB3ZSBkb24ndCBuZWVkIG9yDQo+ID4+IGRvbid0IGV2
ZW4gd2FudCB0aGlzIGluIHRoZSBkcml2ZXIuDQo+ID4gSSdkIGJlIGN1cmlvdXMgdG8ga25vdyB0
aGUgY2FzZXMgd2hlcmUgeW91IGRvbid0IHdhbnQgdGhpcy4uIG9uZSB0aGluZw0KPiA+IEkgd2Fz
IHRoaW5raW5nIGFib3V0LCB3aGF0IGlmIHlvdSBoYXZlIGEgY29udGFpbmVyIGZlbmNlIHdpdGgg
dHdvDQo+ID4gY29udGFpbmVkIGZlbmNlcy4gIE9uZSBpcyBvbiB0aGUgc2FtZSBjdHggYXMgdGhl
IGpvYiwgb25lIGlzIG5vdCBidXQNCj4gPiBzaWduYWxzIHNvb25lci4gIFlvdSBlbmQgdXAgYXJ0
aWZpY2lhbGx5IHdhaXRpbmcgb24gYm90aCwgd2hpY2ggc2VlbXMNCj4gPiBzdWItb3B0aW1hbC4N
Cj4NCj4gV2VsbCByZXN2IG9iamVjdHMgZG9uJ3QgY29udGFpbiBvdGhlciBjb250YWluZXJzIGZv
ciBleGFtcGxlLg0KDQpJIHN1cHBvc2UgSSBoYXZlIHRoZSBleHBsaWNpdCBzeW5jIGNhc2UgbW9y
ZSBpbiBtaW5kLCB3aGVyZSB0aGUNCmRlcGVuZGVudCBmZW5jZSBlbmRzIHVwIGJlaW5nIGEgY2hh
aW4gb3IgYXJyYXkgKGlmIHVzZXJzcGFjZSBpcw0KbWVyZ2luZyBmZW5jZSBmZCdzKS4NCg0KPiBU
aGVuIHdlIGFsc28gaGF2ZSBhbiB1c2UgY2FzZSBpbiBhbWRncHUgd2hlcmUgZmVuY2UgbmVlZCB0
byBiZQ0KPiBleHBsaWNpdGx5IHdhaXRlZCBmb3IgZXZlbiB3aGVuIHRoZXkgYXJlIGZyb20gdGhl
IHNhbWUgY3R4IGFzIHRoZSBqb2INCj4gYmVjYXVzZSBvdGhlcndpc2Ugd2Ugd291bGRuJ3Qgc2Vl
IGV2ZXJ5dGhpbmcgY2FjaGUgY29oZXJlbnQuDQoNClRoaXMgd2FzIHRoZSBraW5kYSB3ZWlyZCBj
YXNlIEkgd2FudGVkIHRvIG1ha2Ugc3VyZSBJIHdhc24ndCBicmVha2luZy4NCkkgcmVtZW1iZXIg
c2VlaW5nIHNvbWV0aGluZyBmbHkgYnkgZm9yIHRoaXMsIGJ1dCBjYW4ndCBmaW5kIGl0IG5vdyBv
cg0KcmVtZW1iZXIgd2hhdCBhbWRncHUncyBzb2x1dGlvbiB3YXMuLg0KDQo+IE9uIHRoZSBvdGhl
ciBoYW5kIHdlIGN1cnJlbnRseSBoYW5kbGUgdGhhdCBhbWRncHUgdXNlIGNhc2UgZGlmZmVyZW50
bHkNCj4gYW5kIHRoZSBleHRyYSBvdmVyaGVhZCBvZiB1bndyYXBwaW5nIGZlbmNlcyBldmVuIGlm
IHRoZXkgY2FuJ3QgYmUNCj4gY29udGFpbmVycyBpcyBwcm9iYWJseSBuZWdsaWdpYmxlLg0KPg0K
PiA+IEFueXdheXMsIEkgY2FuIG1ha2UgdGhpcyBhIG5ldyBlbnRyeXBvaW50IHdoaWNoIHVud3Jh
cHMsIGFuZC9vciByZW5hbWUNCj4gPiB0aGUgaW50ZXJuYWwgc3RhdGljIGZ1bmN0aW9uLCBpZiB3
ZSB0aGluayB0aGlzIGlzIGEgZ29vZCBpZGVhLg0KPg0KPiBJZiB5b3UgdGhpbmsgdGhhdCdzIHVu
bmVjZXNzYXJ5IGtlZXBpbmcgeW91ciBvcmlnaW5hbCBhcHByb2FjaCBpcyBmaW5lDQo+IHdpdGgg
bWUgYXMgd2VsbC4NCg0KSSdtIGdvaW5nIHRvIGFzc3VtZSB1bm5lY2Vzc2FyeSB1bnRpbCBzb21l
b25lIHNwZWFrcyB1cCB3aXRoIHRoZWlyDQp3ZWlyZCBzcGVjaWZpYyBjYXNlIDstKQ0KDQpCUiwN
Ci1SDQoNCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+DQo+ID4gQlIsDQo+ID4gLVIN
Cj4gPg0KPiA+PiBDaHJpc3RpYW4uDQo+ID4+DQo+ID4+PiArew0KPiA+Pj4gKyAgICAgc3RydWN0
IGRtYV9mZW5jZV91bndyYXAgaXRlcjsNCj4gPj4+ICsgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmY7
DQo+ID4+PiArICAgICBpbnQgcmV0ID0gMDsNCj4gPj4+ICsNCj4gPj4+ICsgICAgIGRtYV9mZW5j
ZV91bndyYXBfZm9yX2VhY2ggKGYsICZpdGVyLCBmZW5jZSkgew0KPiA+Pj4gKyAgICAgICAgICAg
ICByZXQgPSBfYWRkX2RlcGVuZGVuY3koam9iLCBmKTsNCj4gPj4+ICsgICAgICAgICAgICAgaWYg
KHJldCkNCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBicmVhazsNCj4gPj4+ICsgICAgIH0N
Cj4gPj4+ICsNCj4gPj4+ICsgICAgIHJldHVybiByZXQ7DQo+ID4+PiArfQ0KPiA+Pj4gICAgRVhQ
T1JUX1NZTUJPTChkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5KTsNCj4gPj4+DQo+ID4+PiAg
ICAvKioNCj4gPj4+ICAgICAqIGRybV9zY2hlZF9qb2JfYWRkX3Jlc3ZfZGVwZW5kZW5jaWVzIC0g
YWRkIGFsbCBmZW5jZXMgZnJvbSB0aGUgcmVzdiB0byB0aGUgam9iDQo+ID4+PiAgICAgKiBAam9i
OiBzY2hlZHVsZXIgam9iIHRvIGFkZCB0aGUgZGVwZW5kZW5jaWVzIHRvDQo+ID4+PiAgICAgKiBA
cmVzdjogdGhlIGRtYV9yZXN2IG9iamVjdCB0byBnZXQgdGhlIGZlbmNlcyBmcm9tDQo+ID4+PiAg
ICAgKiBAdXNhZ2U6IHRoZSBkbWFfcmVzdl91c2FnZSB0byB1c2UgdG8gZmlsdGVyIHRoZSBmZW5j
ZXMNCj4gPj4+ICAgICAqDQo+ID4+PiAgICAgKiBUaGlzIGFkZHMgYWxsIGZlbmNlcyBtYXRjaGlu
ZyB0aGUgZ2l2ZW4gdXNhZ2UgZnJvbSBAcmVzdiB0byBAam9iLg0KPiA+Pj4gICAgICogTXVzdCBi
ZSBjYWxsZWQgd2l0aCB0aGUgQHJlc3YgbG9jayBoZWxkLg0KPg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
