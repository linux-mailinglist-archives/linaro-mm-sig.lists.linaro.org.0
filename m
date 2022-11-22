Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DE1634398
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 19:27:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38D853EC65
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 18:27:09 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 93ED73EC65
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 18:27:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=NTmJC5lX;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.208.43) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f43.google.com with SMTP id e13so21807473edj.7
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 10:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YuLHzdnVezmbIpehx2h6/dnqYAu8v7KYMyvH9VaugYw=;
        b=NTmJC5lXXDteO1TzcKFiDAE31oHTlG2RVx8+4ouCu6VQpBiKSqzmPJVHgZZPDWyYM6
         t8VlohS/Vl+ltOKCphTGumZH5BN97tmZJrmEqAo8XwD/iY2GICsL+PDs7jQTW3/RzGNe
         cDngWYnxHhno1/NSakx58Y2rfBECXaGV4fbZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YuLHzdnVezmbIpehx2h6/dnqYAu8v7KYMyvH9VaugYw=;
        b=zgDkC1uCjz7gwv3y3oa0nxNY6j1ihMS+7x/NApQ6Dx6QRb7ct6+PZTkTCJ7Ly4zOGL
         n9+2yNT/EeRr4v0EaT2/9dhkPaJVZzHQzkie6UOvYk1Rq8vofv1N5OG86DOC+s9iBtJ7
         zepNGnb56WbT9UYK1UdVRZ++7pu+cZGnmEodFEGykRrHLiqCrFNphqEclRz0Sp1jtkco
         J8yj07ts2J40HKx9oacty8/kSzMY9hIpigXA7v/etKtb+sputRDix3M0Tj7V5lNYT2Yb
         Lkf7fxVXhoHgwjUcdsgssO6L3XLatDEVk3RruhiC+pvnE/7K4DTArRaixlSaXZAL/JN3
         4fCw==
X-Gm-Message-State: ANoB5pmSpvb5bz2Q7QgtGgutFeR8pSWJXzwW6V87qer6QuDqigcbyJ6A
	e5WY5Cu9Yy6CPFMBovedtSlkgjQSL6qRsec4WnlW4g==
X-Google-Smtp-Source: AA0mqf7uKugj4+VjnLOmVFqxL1s4AavX/tb4mgqzPy0yRNKjQpkiLy6jrFkvnCfcaczhmidwseHJJXO71t3tQNMli/Q=
X-Received: by 2002:a05:6402:28a9:b0:461:f5ce:a478 with SMTP id
 eg41-20020a05640228a900b00461f5cea478mr22062611edb.304.1669141619619; Tue, 22
 Nov 2022 10:26:59 -0800 (PST)
MIME-Version: 1.0
References: <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com> <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com> <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com> <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com> <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
 <Y3zeYnufgXJHQAbN@phenom.ffwll.local> <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
In-Reply-To: <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 22 Nov 2022 19:26:47 +0100
Message-ID: <CAKMK7uFdvMoonvmgKDeMTksRfN8r797AYm2JJAWBEazgK8BFvA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 93ED73EC65
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_SENDER(0.30)[daniel@ffwll.ch,daniel.vetter@ffwll.ch];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[gmail.com,ndufresne.ca,chromium.org,pengutronix.de,fooishbar.org,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.972];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_NEQ_ENVFROM(0.00)[daniel@ffwll.ch,daniel.vetter@ffwll.ch];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YUMO3OH424GYRJZMC233GLKD3BRUDY2E
X-Message-ID-Hash: YUMO3OH424GYRJZMC233GLKD3BRUDY2E
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@gmail.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YUMO3OH424GYRJZMC233GLKD3BRUDY2E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAyMiBOb3YgMjAyMiBhdCAxODozNCwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gQW0gMjIuMTEuMjIgdW0gMTU6MzYgc2NocmllYiBE
YW5pZWwgVmV0dGVyOg0KPiA+IE9uIEZyaSwgTm92IDE4LCAyMDIyIGF0IDExOjMyOjE5QU0gLTA4
MDAsIFJvYiBDbGFyayB3cm90ZToNCj4gPj4gT24gVGh1LCBOb3YgMTcsIDIwMjIgYXQgNzozOCBB
TSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6DQo+ID4+PiBM
ZSBqZXVkaSAxNyBub3ZlbWJyZSAyMDIyIMOgIDEzOjEwICswMTAwLCBDaHJpc3RpYW4gS8O2bmln
IGEgw6ljcml0IDoNCj4gPj4+Pj4+IERNQS1CdWYgbGV0J3MgdGhlIGV4cG9ydGVyIHNldHVwIHRo
ZSBETUEgYWRkcmVzc2VzIHRoZSBpbXBvcnRlciB1c2VzIHRvDQo+ID4+Pj4+PiBiZSBhYmxlIHRv
IGRpcmVjdGx5IGRlY2lkZWQgd2hlcmUgYSBjZXJ0YWluIG9wZXJhdGlvbiBzaG91bGQgZ28uIEUu
Zy4gd2UNCj4gPj4+Pj4+IGhhdmUgY2FzZXMgd2hlcmUgZm9yIGV4YW1wbGUgYSBQMlAgd3JpdGUg
ZG9lc24ndCBldmVuIGdvIHRvIG1lbW9yeSwgYnV0DQo+ID4+Pj4+PiByYXRoZXIgYSBkb29yYmVs
bCBCQVIgdG8gdHJpZ2dlciBhbm90aGVyIG9wZXJhdGlvbi4gVGhyb3dpbmcgaW4gQ1BVDQo+ID4+
Pj4+PiByb3VuZCB0cmlwcyBmb3IgZXhwbGljaXQgb3duZXJzaGlwIHRyYW5zZmVyIGNvbXBsZXRl
bHkgYnJlYWtzIHRoYXQNCj4gPj4+Pj4+IGNvbmNlcHQuDQo+ID4+Pj4+IEl0IHNvdW5kcyBsaWtl
IHdlIHNob3VsZCBoYXZlIGEgZG1hX2Rldl9pc19jb2hlcmVudF93aXRoX2RldigpIHdoaWNoDQo+
ID4+Pj4+IGFjY2VwdHMgdHdvIChvciBhbiBhcnJheT8pIG9mIGRldmljZXMgYW5kIHRlbGxzIHRo
ZSBjYWxsZXIgd2hldGhlciB0aGUNCj4gPj4+Pj4gZGV2aWNlcyBuZWVkIGV4cGxpY2l0IG93bmVy
c2hpcCB0cmFuc2Zlci4NCj4gPj4+PiBObywgZXhhY3RseSB0aGF0J3MgdGhlIGNvbmNlcHQgSSdt
IHB1c2hpbmcgYmFjayBvbiB2ZXJ5IGhhcmQgaGVyZS4NCj4gPj4+Pg0KPiA+Pj4+IEluIG90aGVy
IHdvcmRzIGV4cGxpY2l0IG93bmVyc2hpcCB0cmFuc2ZlciBpcyBub3Qgc29tZXRoaW5nIHdlIHdv
dWxkDQo+ID4+Pj4gd2FudCBhcyByZXF1aXJlbWVudCBpbiB0aGUgZnJhbWV3b3JrLCBjYXVzZSBv
dGhlcndpc2Ugd2UgYnJlYWsgdG9ucyBvZg0KPiA+Pj4+IHVzZSBjYXNlcyB3aGljaCByZXF1aXJl
IGNvbmN1cnJlbnQgYWNjZXNzIHRvIHRoZSB1bmRlcmx5aW5nIGJ1ZmZlci4NCj4gPj4+IEknbSBu
b3QgcHVzaGluZyBmb3IgdGhpcyBzb2x1dGlvbiwgYnV0IHJlYWxseSBmZWx0IHRoZSBuZWVkIHRv
IGNvcnJlY3QgeW91IGhlcmUuDQo+ID4+PiBJIGhhdmUgcXVpdGUgc29tZSBleHBlcmllbmNlIHdp
dGggb3duZXJzaGlwIHRyYW5zZmVyIG1lY2hhbmlzbSwgYXMgdGhpcyBpcyBob3cNCj4gPj4+IEdT
dHJlYW1lciBmcmFtZXdvcmsgd29ya3Mgc2luY2UgMjAwMC4gQ29uY3VycmVudCBhY2Nlc3MgaXMg
YSByZWFsbHkgY29tbW9uIHVzZQ0KPiA+Pj4gY2FzZXMgYW5kIGl0IGlzIHF1aXRlIHdlbGwgZGVm
aW5lZCBpbiB0aGF0IGNvbnRleHQuIFRoZSBicmFja2V0aW5nIHN5c3RlbSAoaW4NCj4gPj4+IHRo
aXMgY2FzZSBjYWxsZWQgbWFwKCkgdW5tYXAoKSwgd2l0aCBmbGFnIHN0YXRpbmcgdGhlIHVzYWdl
IGludGVudGlvbiBsaWtlIHJlYWRzDQo+ID4+PiBhbmQgd3JpdGUpIGlzIGNvbWJpbmVkIHRoZSB0
aGUgcmVmY291bnQuIFRoZSBiYXNpYyBydWxlcyBhcmUgc2ltcGxlOg0KPiA+PiBUaGlzIGlzIGFs
bCBDUFUgb3JpZW50ZWQsIEkgdGhpbmsgQ2hyaXN0aWFuIGlzIHRhbGtpbmcgYWJvdXQgdGhlIGNh
c2UNCj4gPj4gd2hlcmUgb3duZXJzaGlwIHRyYW5zZmVyIGhhcHBlbnMgd2l0aG91dCBDUFUgaW52
b2x2ZW1lbnQsIHN1Y2ggYXMgdmlhDQo+ID4+IEdQVSB3YWl0aW5nIG9uIGEgZmVuY2UNCj4gPiBZ
ZWFoIGZvciBwdXJlIGRldmljZTJkZXZpY2UgaGFuZG92ZXIgdGhlIHJ1bGUgcHJldHR5IG11Y2gg
aGFzIHRvIGJlIHRoYXQNCj4gPiBhbnkgY29oZXJlbmN5IG1hbmFnZW1lbnQgdGhhdCBuZWVkcyB0
byBiZSBkb25lIG11c3QgYmUgZG9uZSBmcm9tIHRoZQ0KPiA+IGRldmljZSBzaWRlIChmbHVzaGlu
ZyBkZXZpY2Ugc2lkZSBjYWNoZXMgYW5kIHN0dWZmIGxpa2UgdGhhdCkgb25seS4gQnV0DQo+ID4g
dW5kZXIgdGhlIGFzc3VtcHRpb24gdGhhdCBfYWxsXyBjcHUgc2lkZSBtYW5hZ2VtZW50IGhhcyBi
ZWVuIGRvbmUgYWxyZWFkeQ0KPiA+IGJlZm9yZSB0aGUgZmlyc3QgZGV2aWNlIGFjY2VzcyBzdGFy
dGVkLg0KPiA+DQo+ID4gQW5kIHRoZW4gdGhlIG1hcC91bm1hcCByZXNwZWN0aXZlbHkgYmVnaW4v
ZW5kX2NwdV9hY2Nlc3MgY2FuIGJlIHVzZWQgd2hhdA0KPiA+IGl0IHdhcyBtZWFudCBmb3Igd2l0
aCBjcHUgc2lkZSBpbnZhbGlkYXRpb24vZmx1c2hpbmcgYW5kIHN0dWZmIGxpa2UgdGhhdCwNCj4g
PiB3aGlsZSBoYXZpbmcgcHJldHR5IGNsZWFyIGhhbmRvdmVyL293bmVyc2hpcCBydWxlcyBhbmQg
aG9wZWZ1bGx5IG5vdCBkb2luZw0KPiA+IG5vIHVuZWNlc3NhcnkgZmx1c2hlcy4gQW5kIGFsbCB0
aGF0IHdoaWxlIGFsbG93aW5nIGRldmljZSBhY2NlcyB0byBiZQ0KPiA+IHBpcGVsaW5lZC4gV29y
c3QgY2FzZSB0aGUgZXhwb3J0ZXIgaGFzIHRvIGluc2VydCBzb21lIHBpcGVsaW5lZCBjYWNoZQ0K
PiA+IGZsdXNoZXMgYXMgYSBkbWFfZmVuY2UgcGlwZWxpbmVkIHdvcmsgb2YgaXRzIG93biBiZXR3
ZWVuIHRoZSBkZXZpY2UgYWNjZXNzDQo+ID4gd2hlbiBtb3ZpbmcgZnJvbSBvbmUgZGV2aWNlIHRv
IHRoZSBvdGhlci4gVGhhdCBsYXN0IHBhcnQgc3Vja3MgYSBiaXQgcmlnaHQNCj4gPiBub3csIGJl
Y2F1c2Ugd2UgZG9uJ3QgaGF2ZSBhbnkgZG1hX2J1Zl9hdHRhY2htZW50IG1ldGhvZCB3aGljaCBk
b2VzIHRoaXMNCj4gPiBzeW5jaW5nIHdpdGhvdXQgcmVjcmVhdGluZyB0aGUgbWFwcGluZywgYnV0
IGluIHJlYWxpdHkgdGhpcyBpcyBzb2x2ZWQgYnkNCj4gPiBjYWNoaW5nIG1hcHBpbmdzIGluIHRo
ZSBleHBvcnRlciAod2VsbCBkbWEtYnVmIGxheWVyKSBub3dhZGF5cy4NCj4gPg0KPiA+IFRydWUg
Y29uY3VycmVudCBhY2Nlc3MgbGlrZSB2ay9jb21wdXRlIGV4cGVjdHMgaXMgc3RpbGwgYSBtb2Rl
bCB0aGF0DQo+ID4gZG1hLWJ1ZiBuZWVkcyB0byBzdXBwb3J0IG9uIHRvcCwgYnV0IHRoYXQncyBh
IHNwZWNpYWwgY2FzZSBhbmQgcHJldHR5IG11Y2gNCj4gPiBuZWVkcyBodyB0aGF0IHN1cHBvcnRz
IHN1Y2ggY29uY3VycmVudCBhY2Nlc3Mgd2l0aG91dCBleHBsaWNpdCBoYW5kb3Zlcg0KPiA+IGFu
ZCBmZW5jaW5nLg0KPiA+DQo+ID4gQXNpZGUgZnJvbSBzb21lIGhpc3RvcmljYWwgYWNjaWRlbnRz
IGFuZCBzdGlsbCBhIGZldyB3YXJ0cywgSSBkbyB0aGluaw0KPiA+IGRtYS1idWYgZG9lcyBzdXBw
b3J0IGJvdGggb2YgdGhlc2UgbW9kZWxzLg0KPg0KPiBXZSBzaG91bGQgaGF2ZSBjb21lIHVwIHdp
dGggZG1hLWhlYXBzIGVhcmxpZXIgYW5kIG1ha2UgaXQgY2xlYXIgdGhhdA0KPiBleHBvcnRpbmcg
YSBETUEtYnVmIGZyb20gYSBkZXZpY2UgZ2l2ZXMgeW91IHNvbWV0aGluZyBkZXZpY2Ugc3BlY2lm
aWMNCj4gd2hpY2ggbWlnaHQgb3IgbWlnaHQgbm90IHdvcmsgd2l0aCBvdGhlcnMuDQoNClllYWgs
IGJ1dCBlbmdpbmVlcmluZyBwcmFjdGljYWxpdGllcyB3ZXJlIHByZXR0eSBjbGVhciB0aGF0IG5v
IG9uZQ0Kd291bGQgcmV3cml0ZSB0aGUgZW50aXJlIFhvcmcgc3RhY2sgYW5kIGFsbCB0aGUgZHJp
dmVycyBqdXN0IHRvIG1ha2UNCnRoYXQgaGFwcGVuIGZvciBwcmltZS4NCg0KPiBBcGFydCBmcm9t
IHRoYXQgSSBhZ3JlZSwgRE1BLWJ1ZiBzaG91bGQgYmUgY2FwYWJsZSBvZiBoYW5kbGluZyB0aGlz
Lg0KPiBRdWVzdGlvbiBsZWZ0IGlzIHdoYXQgZG9jdW1lbnRhdGlvbiBpcyBtaXNzaW5nIHRvIG1h
a2UgaXQgY2xlYXIgaG93DQo+IHRoaW5ncyBhcmUgc3VwcG9zZWQgdG8gd29yaz8NCg0KR2l2ZW4g
dGhlIGhpc3RvcmljYWwgYmFnZ2FnZSBvZiBleGlzdGluZyB1c2UtY2FzZSwgSSB0aGluayB0aGUg
b25seQ0Kd2F5IG91dCBpcyB0aGF0IHdlIGxvb2sgYXQgY29uY3JldGUgZXhhbXBsZXMgZnJvbSBy
ZWFsIHdvcmxkIHVzZXJzDQp0aGF0IGJyZWFrLCBhbmQgZmlndXJlIG91dCBob3cgdG8gZml4IHRo
ZW0uIFdpdGhvdXQgYnJlYWtpbmcgYW55IG9mDQp0aGUgZXhpc3RpbmcgbWVzcy4NCg0KT25lIGlk
ZWEgbWlnaHQgYmUgdGhhdCB3ZSBoYXZlIGEgcGVyLXBsYXRmb3JtDQpkbWFfYnVmX2xlZ2FjeV9j
b2hlcmVuY3lfbW9kZSgpLCB3aGljaCB0ZWxscyB5b3Ugd2hhdCBtb2RlIChjcHUgY2FjaGUNCnNu
b29waW5nIG9yIHVuY2FjaGVkIG1lbW9yeSkgeW91IG5lZWQgdG8gdXNlIHRvIG1ha2Ugc3VyZSB0
aGF0IGFsbA0KZGV2aWNlcyBhZ3JlZS4gT24geDg2IHRoZSBydWxlIG1pZ2h0IGJlIHRoYXQgaXQn
cyBjcHUgY2FjaGUgc25vb3BpbmcNCmJ5IGRlZmF1bHQsIGJ1dCBpZiB5b3UgaGF2ZSBhbiBpbnRl
Z3JhdGVkIGdwdSB0aGVuIGV2ZXJ5b25lIG5lZWRzIHRvDQp1c2UgdW5jYWNoZWQuIFRoYXQgc3Vj
a3MsIGJ1dCBhdCBsZWFzdCB3ZSBjb3VsZCBrZWVwIHRoZSBleGlzdGluZyBtZXNzDQpnb2luZyBh
bmQgY2xlYW4gaXQgdXAuIEV2ZXJ5b25lIGVsc2Ugd291bGQgYmUgdW5jYWNoZWQsIGV4Y2VwdCBt
YXliZQ0KYXJtNjQgc2VydmVycyB3aXRoIHBjaWUgY29ubmVjdG9ycy4gRXNzZW50aWFsbHkgbGVh
c3QgY29tbW9uDQpkZW5vbWluYXRvciB0byBtYWtlIHRoaXMgd29yay4gTm90ZSB0aGF0IHVuY2Fj
aGVkIGFjdHVhbGx5IG1lYW5zDQpkZXZpY2UgYWNjZXNzIGRvZXNuJ3Qgc25vb3AsIHRoZSBjcHUg
c2lkZSB5b3UgY2FuIGhhbmRsZSB3aXRoIGVpdGhlcg0KdWMvd2MgbWFwcGluZ3Mgb3IgZXhwbGlj
aXQgZmx1c2hpbmcuDQoNClRoZW4gb25jZSB3ZSBoYXZlIHRoYXQgd2UgY291bGQgaW1wbGVtZW50
IHRoZSBjb2hlcmVuY3kgbmVnb3RpYXRpb24NCnByb3RvY29sIG9uIHRvcCBhcyBhbiBleHBsaWNp
dCBvcHQtaW4sIHNvIHRoYXQgeW91IGNhbiBzdGlsbCB1c2UNCmNvaGVyZW50IGJ1ZmZlcnMgYWNy
b3NzIHR3byBwY2llIGdwdXMgZXZlbiBpZiB5b3UgYWxzbyBoYXZlIGFuDQppbnRlZ3JhdGVkIGdw
dS4NCg0KRG9pbmcgb25seSB0aGUgbmV3IHByb3RvY29sIHdpdGhvdXQgc29tZSBtZWFucyB0byBr
ZWVwIHRoZSBleGlzdGluZw0KcGlsZSBvZiBjYXJlZnVsbHkgaGFja2VkIHVwIGFzc3VtcHRpb25z
IHdvdWxkIGJyZWFrIHRoaW5ncywgYW5kIHdlDQpjYW4ndCBkbyB0aGF0LiBBbHNvIEkgaGF2ZSBu
byBpZGVhIHdoZXRoZXIgdGhhdCBnbG9iYWwgbGVnYWN5IGRldmljZQ0KY29oZXJlbmN5IG1vZGUg
d291bGQgd29yay4gQWxzbyB3ZSBtaWdodCBtb3JlIHRoYW4ganVzdA0Kc25vb3BlZC91bnNub29w
LCBzaW5jZSBkZXBlbmRpbmcgdXBvbiBhcmNoaXRlY3R1cmUgeW91IG1pZ2h0IHdhbnQgdG8NCm9u
bHkgc25vb3Agb25lIHRyYW5zYWN0aW9uIChyZWFkcyB2cyB3cml0ZXMpIGluc3RlYWQgb2YgYm90
aCBvZiB0aGVtOg0KSWYgd3JpdGVzIHNub29wIHRoZW4gY3B1IHJlYWRzIHdvdWxkIG5ldmVyIG5l
ZWQgdG8gaW52YWxpZGF0ZSBjYWNoZXMNCmJlZm9yZWhhbmQsIGJ1dCB3cml0ZXMgd291bGQgc3Rp
bGwgbmVlZCB0byBmbHVzaCAoYW5kIHdvdWxkIGdpdmUgeW91DQpmYXN0ZXIgcmVhZHMgb24gdGhl
IGRldmljZSBzaWRlIHNpbmNlIHRob3NlIGNhbiBzdGlsbCBieXBhc3MNCnNub29waW5nKS4gU29t
ZSBpZ3B1IHBsYXRmb3JtcyB3b3JrIGxpa2UgdGhhdCwgYnV0IEknbSBub3Qgc3VyZQ0Kd2hldGhl
ciB0aGVyZSdzIGFueSBvdGhlciBkZXZpY2UgdGhhdCB3b3VsZCBjYXJlIGVub3VnaCBhYm91dCB0
aGVzZQ0KZm9yIHRoaXMgdG8gbWF0dGVyLiBZZXMgaXQncyBhIGh3IG1pcy1kZXNpZ24gKHdlbGwg
SSBkb24ndCBsaWtlIGl0DQpwZXJzb25hbGx5KSwgdGhleSBmaXhlZCBpdCA6LSkNCg0KQ2hlZXJz
LCBEYW5pZWwNCi0tIA0KRGFuaWVsIFZldHRlcg0KU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uDQpodHRwOi8vYmxvZy5mZndsbC5jaA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
