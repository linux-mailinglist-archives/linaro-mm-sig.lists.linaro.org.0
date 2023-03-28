Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3716CCCCD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 00:08:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF6603F8E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 22:08:24 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lists.linaro.org (Postfix) with ESMTPS id 6779B3EE12
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 22:08:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=FTjKF+3o;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.47 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id l39-20020a9d1b2a000000b006a121324abdso5640926otl.7
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 15:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680041292;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cu22PJorCWhuf4vPHhObfoBwmEd2pkkUaFILRb/wiso=;
        b=FTjKF+3odZjYuy9IbTp26OcP+mAuPS0ZT8jODp/+liFC+frLTEcXsn9i4Aip4lE90z
         BQnNxpTLIMOr34Ry8Tn69AMRkskwY/Tg8/FCWNDEe3TZbt080iyDLYbLQCA8M5P6G+Mb
         mxJ1Ur93lItChj9cK1eHf7XbWnfvZu4dJHIsM8s8igdZV2ACaTh88OjQUlD0h7MdoadR
         sThFmrWh3v2YvY83sussBXtb9eDWUUO61Crp4NQ/HwoHD+RZDOI0T3iTwdBxVPqHMoBz
         q/M3SwpdDcw7lHsDph0NBNt271QoXB4KcE1unW+BLDerWljXLbRoIzoJDdpbZ9KxkfbA
         EQGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680041292;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cu22PJorCWhuf4vPHhObfoBwmEd2pkkUaFILRb/wiso=;
        b=wPEFyA079N9bktuOyZ/XYBF8/wHaPosoOXqyiEfaXPwgSBbudRDk2ygvjNp8TozcXj
         60vdoczMiNZrZwKAWJ3zMrhypBxysZ0y/ASKsIQKkLRlH8gEAl06bAb1A2Yy+SOObyHo
         tZdsmKh/oEs0CERIZy+xU/BO9IRClwhTst1R9Az/MCqolhgOcuIzDw8rGJBPjCBjjEIP
         NAQ+1AwWqfswuad6RfWcM5IyLKweZyAI7YCNOKR1RmgmKyAEiaCTqRNe3UYuS3RmytSI
         flMHPiWTrPjcAuTvxfqLdHOQxOXmzZq6nkauV6b4zQ+e7OlvHnhuX5bQpDeGBT6YGrKi
         E7oA==
X-Gm-Message-State: AO0yUKU+S9dS6owcOTM30r5cg1gioPcXg4yG8acTJ3kicolKOS2F2snh
	rdnbBzYTdW1r39GeAux6XJwryQOF3i2tf+eEazDOxnY4JS8=
X-Google-Smtp-Source: AK7set9L8A9gT6WeQ9g/Jg/8NHmkFzpvmXfU+fIE8bnirz24mLvXhASqiQxTHsAGcPHDgXpxbBh2hxIfxipz3UZy6vg=
X-Received: by 2002:a9d:7301:0:b0:696:f275:a60d with SMTP id
 e1-20020a9d7301000000b00696f275a60dmr5342452otk.7.1680041292591; Tue, 28 Mar
 2023 15:08:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAF6AEGvoP9_FERdL6U8S2O-BVt-oAUgAytbE6RvygsoAOwOHvw@mail.gmail.com>
 <ZCMhhToEdWVAEtBh@phenom.ffwll.local>
In-Reply-To: <ZCMhhToEdWVAEtBh@phenom.ffwll.local>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 28 Mar 2023 15:08:01 -0700
Message-ID: <CAF6AEGsukWdjzwvcjAk8mqo4CMRvp6Q+K9K=UuJyUEO-y6wa7A@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6779B3EE12
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.47:from];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:url,ffwll.ch:email,gitlab.freedesktop.org:url];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,linux.intel.com,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: XRSILUH3R3CBO2N5RCFDZF2G2ZLYWQBB
X-Message-ID-Hash: XRSILUH3R3CBO2N5RCFDZF2G2ZLYWQBB
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel <dri-devel@lists.freedesktop.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [pull] drm: dma-fence-deadline-core for v6.4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XRSILUH3R3CBO2N5RCFDZF2G2ZLYWQBB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTA6MTnigK9BTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxA
ZmZ3bGwuY2g+IHdyb3RlOg0KPg0KPiBPbiBTYXQsIE1hciAyNSwgMjAyMyBhdCAxMToyNDo1NkFN
IC0wNzAwLCBSb2IgQ2xhcmsgd3JvdGU6DQo+ID4gSGkgRGF2ZSBhbmQgRGFuaWVsLA0KPiA+DQo+
ID4gSGVyZSBpcyB0aGUgc2VyaWVzIGZvciBkbWEtZmVuY2UgZGVhZGxpbmUgaGludCwgd2l0aG91
dCBkcml2ZXINCj4gPiBzcGVjaWZpYyBwYXRjaGVzLCB3aXRoIHRoZSBpbnRlbnQgdGhhdCBpdCBj
YW4gYmUgbWVyZ2VkIGludG8gZHJtLW5leHQNCj4gPiBhcyB3ZWxsIGFzIC1kcml2ZXIgbmV4dCB0
cmVlcyB0byBlbmFibGUgbGFuZGluZyBkcml2ZXIgc3BlY2lmaWMNCj4gPiBzdXBwb3J0IHRocm91
Z2ggdGhlaXIgY29ycmVzcG9uZGluZyAtbmV4dCB0cmVlcy4NCj4gPg0KPiA+IFRoZSBmb2xsb3dp
bmcgY2hhbmdlcyBzaW5jZSBjb21taXQgZWVhYzhlZGUxNzU1NzY4MDg1NTAzMWM2ZjMwNWVjZTIz
NzhhZjMyNjoNCj4gPg0KPiA+ICAgTGludXggNi4zLXJjMiAoMjAyMy0wMy0xMiAxNjozNjo0NCAt
MDcwMCkNCj4gPg0KPiA+IGFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Og0K
PiA+DQo+ID4gICBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL21zbS5naXQgdGFn
cy9kbWEtZmVuY2UtZGVhZGxpbmUtY29yZQ0KPiA+DQo+ID4gZm9yIHlvdSB0byBmZXRjaCBjaGFu
Z2VzIHVwIHRvIDBiY2M4ZjUyYThkOWQxZjljZDVhZjdmODhjNjU5OWE4OWU2NDI4NGE6DQo+ID4N
Cj4gPiAgIGRybS9hdG9taWMtaGVscGVyOiBTZXQgZmVuY2UgZGVhZGxpbmUgZm9yIHZibGFuayAo
MjAyMy0wMy0yNSAxMDo1NTowOCAtMDcwMCkNCj4NCj4gT2sgYXBwYXJlbnRseSB0aGVyZSdzIG9u
bHkgaWd0cyBmb3IgdGhlIHN5bmNfZmlsZSB1YWJpIGFuZCB0aGUgb25seSBvbmx5DQo+IHVzZXJz
cGFjZSBmb3Igc3luY29iaiBpcyB0aGUgbWVzYSBtciB0aGF0IGlzIHN0aWxsIHVuZGVyIGRpc2N1
c3Npb24gOi0vDQo+DQo+IFllcyBJIGtub3cgdGhlcmUncyBhIGNsZWFybHkgZXN0YWJsaXNoZWQg
bmVlZCBmb3Igc29tZXRoaW5nIGxpa2UgdGhpcywgYnV0DQo+IGFsc28gaW4gZHJtIHdlIGRvbid0
IG1lcmdlIGNvbmplY3R1cmVkIHVhYmkuIEVzcGVjaWFsbHkgd2l0aCB0cmlja3kgc3R1ZmYNCj4g
dGhhdCdzIG1lYW50IHRvIGltcHJvdmUgYmVzdCBlZmZvcnQgcGVyZm9ybWFuY2UvdHVuaW5nIHBy
b2JsZW1zLCB3aGVyZSB5b3UNCj4gcmVhbGx5IGhhdmUgdG8gYmVuY2htYXJrIHRoZSBlbnRpcmUg
dGhpbmcgYW5kIG1ha2Ugc3VyZSB5b3UgZGlkbid0IHNjcmV3DQo+IHVwIHNvbWUgaW50ZXJhY3Rp
b24uDQo+DQo+IFRvIG1ha2Ugc3VyZSB0aGlzIGlzbid0IHN0dWNrIGFub3RoZXIgZnVsbCBjeWNs
ZSwgaXMgdGhlcmUgYSB3YXkgdG8gd2l0dGxlDQo+IHRoaXMganVzdCBkb3duIHRvIHRoZSBrbXMg
YXRvbWljIGZsaXAgYm9vc3RpbmcgcGFydHM/IFRoYXQgd2F5IHdlIGNvdWxkIGF0DQo+IGxlYXN0
IHN0YXJ0IGxhbmRpbmcgdGhlIGNvcmUmZHJpdmVyIGJpdHMgLi4uDQoNCkkgY2FuIGRyb3AgdGhl
IHN5bmNfZmlsZSBwYXJ0IGZvciBub3cuICBJJ20gbm90IHN1cmUgdGhhdCB0aGVyZSBpcw0KcmVh
bGx5IGFueSBkaXNjdXNzaW9uIG9uIHRoZSBtZXNhIE1SIHdoaWNoIHdvdWxkIGNoYW5nZSB0aGUg
a2VybmVsIG9yDQp1YXBpIHNpZGUgb2YgdGhpcywgYnV0IEkgY2FuIHJlLW9yZGVyIHRoaW5ncyBz
byB0aGUgc3luY29iaiBwYXRjaCBpcw0KbGFzdCBpbiBjYXNlIHlvdSB3YW50IHRvIHB1bGwgSEVB
RH4xIGFuZCBob2xkIG9mZiBmb3IgYSBmZXcgZGF5cyBvbg0KdGhlIHN5bmNvYmogcGF0Y2gNCg0K
QlIsDQotUg0KDQoNCj4gLURhbmllbA0KPg0KPiA+DQo+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+IEltbXV0YWJs
ZSBicmFuY2ggd2l0aCBkbWEtZmVuY2UgZGVhZGxpbmUgaGludCBzdXBwb3J0IGJldHdlZW4gZHJt
LW5leHQNCj4gPiBhbmQgZHJpdmVyIC1uZXh0IHRyZWVzLg0KPiA+DQo+ID4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+
IFJvYiBDbGFyayAoMTEpOg0KPiA+ICAgICAgIGRtYS1idWYvZG1hLWZlbmNlOiBBZGQgZGVhZGxp
bmUgYXdhcmVuZXNzDQo+ID4gICAgICAgZG1hLWJ1Zi9mZW5jZS1hcnJheTogQWRkIGZlbmNlIGRl
YWRsaW5lIHN1cHBvcnQNCj4gPiAgICAgICBkbWEtYnVmL2ZlbmNlLWNoYWluOiBBZGQgZmVuY2Ug
ZGVhZGxpbmUgc3VwcG9ydA0KPiA+ICAgICAgIGRtYS1idWYvZG1hLXJlc3Y6IEFkZCBhIHdheSB0
byBzZXQgZmVuY2UgZGVhZGxpbmUNCj4gPiAgICAgICBkbWEtYnVmL3N5bmNfZmlsZTogU3VyZmFj
ZSBzeW5jLWZpbGUgdUFCSQ0KPiA+ICAgICAgIGRtYS1idWYvc3luY19maWxlOiBBZGQgU0VUX0RF
QURMSU5FIGlvY3RsDQo+ID4gICAgICAgZG1hLWJ1Zi9zd19zeW5jOiBBZGQgZmVuY2UgZGVhZGxp
bmUgc3VwcG9ydA0KPiA+ICAgICAgIGRybS9zY2hlZHVsZXI6IEFkZCBmZW5jZSBkZWFkbGluZSBz
dXBwb3J0DQo+ID4gICAgICAgZHJtL3N5bmNvYmo6IEFkZCBkZWFkbGluZSBzdXBwb3J0IGZvciBz
eW5jb2JqIHdhaXRzDQo+ID4gICAgICAgZHJtL3ZibGFuazogQWRkIGhlbHBlciB0byBnZXQgbmV4
dCB2YmxhbmsgdGltZQ0KPiA+ICAgICAgIGRybS9hdG9taWMtaGVscGVyOiBTZXQgZmVuY2UgZGVh
ZGxpbmUgZm9yIHZibGFuaw0KPiA+DQo+ID4gIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEt
YnVmLnJzdCAgICB8IDE2ICsrKysrKy0NCj4gPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1h
cnJheS5jICAgICAgIHwgMTEgKysrKysNCj4gPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1j
aGFpbi5jICAgICAgIHwgMTIgKysrKysNCj4gPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
ICAgICAgICAgICAgIHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtcmVzdi5jICAgICAgICAgICAgICB8IDIyICsrKysrKysrKw0KPiA+ICBkcml2
ZXJzL2RtYS1idWYvc3dfc3luYy5jICAgICAgICAgICAgICAgfCA4MSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysNCj4gPiAgZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaCAgICAg
ICAgICAgIHwgIDIgKw0KPiA+ICBkcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgICAgICAgICAg
ICAgfCAxOSArKysrKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19oZWxwZXIu
YyAgICAgfCAzNyArKysrKysrKysrKysrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9zeW5j
b2JqLmMgICAgICAgICAgIHwgNjQgKysrKysrKysrKysrKysrKysrKystLS0tLS0NCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2RybV92YmxhbmsuYyAgICAgICAgICAgIHwgNTMgKysrKysrKysrKysrKysr
KystLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDQ2
ICsrKysrKysrKysrKysrKysrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9tYWluLmMgIHwgIDIgKy0NCj4gPiAgaW5jbHVkZS9kcm0vZHJtX3ZibGFuay5oICAgICAgICAg
ICAgICAgIHwgIDEgKw0KPiA+ICBpbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmggICAgICAgICAg
ICAgfCAxNyArKysrKysrDQo+ID4gIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggICAgICAgICAg
ICAgICB8IDIyICsrKysrKysrKw0KPiA+ICBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggICAgICAg
ICAgICAgICAgfCAgMiArDQo+ID4gIGluY2x1ZGUvdWFwaS9kcm0vZHJtLmggICAgICAgICAgICAg
ICAgICB8IDE3ICsrKysrKysNCj4gPiAgaW5jbHVkZS91YXBpL2xpbnV4L3N5bmNfZmlsZS5oICAg
ICAgICAgIHwgNTkgKysrKysrKysrKysrKysrLS0tLS0tLS0tDQo+ID4gIDE5IGZpbGVzIGNoYW5n
ZWQsIDQ5NiBpbnNlcnRpb25zKCspLCA0NyBkZWxldGlvbnMoLSkNCj4NCj4gLS0NCj4gRGFuaWVs
IFZldHRlcg0KPiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24NCj4gaHR0cDov
L2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
