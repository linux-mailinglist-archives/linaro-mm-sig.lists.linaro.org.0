Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Jo9zKIGQC2oCJgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 00:19:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2727457464E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 00:19:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F286406B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 22:19:43 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 88A6A40142
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 22:19:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qyZJUz3l;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=baohua@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F3E47444B7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 22:19:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D85A6C2BCFF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 22:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779142755;
	bh=QwPwsIbtmpQIwK98XGhoY5fkgFLxHo2PkgkWS665XEM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=qyZJUz3lOE231ha1IEgeYCxzXObaBETWrQBGKq7jiBGkIh4nlvzjaS1TAQZaKyghd
	 WDzrb3TUj0axyMqG43s65YrlArYPvTovp39xj+zWXlSEZkB/C3psRaH3ys+YFPYef6
	 5D60lPcDGQ9O33yd9uN09xwZPsQe9mQk8eG+BTp9LDFDDWUMfWG1b6yAGyIGkBv4Ag
	 qfkGTVH7AgNRJ9Zo2irgcAte/2WSIdAcFzDGVpK3u/VaQrHckAWehw9ObBZIUPSVkk
	 KAdRksrtZo+nB9IDEhi1kKHkcgOBBtfGXGlTzgrXAgWDx24Ws47LblQp1hDG5ZG9cU
	 mkTW/MSf1zlTQ==
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-6312bdd281eso2776833137.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 15:19:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9PV/vq+8FycnVMbDV0xvQ3yQb47YHzxDFDs9T738SSU9IJmBIJaJgFOT+j++gPCRBnEZ81rDxA09Eg949E@lists.linaro.org
X-Gm-Message-State: AOJu0YypUOSxZVAybOGhAnQnOaKirIZgBnRma0/MseBLIgeB6O3Tz9S4
	6DEGBXyRkQGdTDTNNE12Hw0V142LKcB3cDGynZB3b7m4zcqEZPa07hVAafufJyad0m12yqFBVXU
	EC2bezMjuf3Tb9wTAHuDcw8hrHfhP3f0=
X-Received: by 2002:a05:6102:6:b0:65a:fec7:137b with SMTP id
 ada2fe7eead31-65afec72d9emr1102084137.0.1779142755093; Mon, 18 May 2026
 15:19:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CAGsJ_4zjrFJYQQsLThTGXR6g+2PXzeAhjyDpLHfDFqVViWvyBQ@mail.gmail.com>
 <CABdmKX0gqg309hcXcOHSj_yTg0h1zwDL34GDk8mX3wp4YoyfDg@mail.gmail.com> <CABdmKX3wwgovwS-V8rVC3=+EZcTvPs_cttpQb1w6WemwLAVhsw@mail.gmail.com>
In-Reply-To: <CABdmKX3wwgovwS-V8rVC3=+EZcTvPs_cttpQb1w6WemwLAVhsw@mail.gmail.com>
From: Barry Song <baohua@kernel.org>
Date: Tue, 19 May 2026 06:19:03 +0800
X-Gmail-Original-Message-ID: <CAGsJ_4y=Gsv=FSUjJ5+99Gg6ULUnv0LRexCGOGetzChR3YA44Q@mail.gmail.com>
X-Gm-Features: AVHnY4I1qEOEZQdYFnOfKNfIzm2SBPuZfZoateaLto4Ne3PZjITQyUeamdYuj98
Message-ID: <CAGsJ_4y=Gsv=FSUjJ5+99Gg6ULUnv0LRexCGOGetzChR3YA44Q@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: KC2VHZIPSJ44MSG2QWC5DWOU5VP3GO4C
X-Message-ID-Hash: KC2VHZIPSJ44MSG2QWC5DWOU5VP3GO4C
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.or
 g, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KC2VHZIPSJ44MSG2QWC5DWOU5VP3GO4C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[36];
	FREEMAIL_CC(0.00)[amd.com,redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,vger.kernel.or,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,android.com:url,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 2727457464E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgNToxN+KAr0FNIFQuSi4gTWVyY2llciA8dGptZXJjaWVy
QGdvb2dsZS5jb20+IHdyb3RlOg0KWy4uLl0NCj4gPiA+ID4gWWVhaCBJIHRoaW5rIHRoaXMgbWln
aHQgd29yay4gSSBrbm93IG9mIDMgY2FzZXMsIGFuZCBpdCB0cml2aWFsbHkNCj4gPiA+ID4gc29s
dmVzIHRoZSBmaXJzdCB0d28uIFRoZSB0aGlyZCByZXF1aXJlcyBzb21lIHdvcmsgb24gb3VyIGVu
ZCB0bw0KPiA+ID4gPiBleHRlbmQgb3VyIHVzZXJzcGFjZSBpbnRlcmZhY2VzIHRvIGluY2x1ZGUg
dGhlIHBpZGZkIGJ1dCBpdCBzZWVtcw0KPiA+ID4gPiBkb2FibGUuIEknbSBjaGVja2luZyB3aXRo
IG91ciBncmFwaGljcyBmb2xrcy4NCj4gPiA+ID4NCj4gPiA+ID4gMSkgRGlyZWN0IGFsbG9jYXRp
b24gZnJvbSB1c2VyIChlLmcuIGFwcCAtPiBhbGxvY2F0aW9uIGlvY3RsIG9uDQo+ID4gPiA+IC9k
ZXYvZG1hX2hlYXAvZm9vKQ0KPiA+ID4gPiBObyBjaGFuZ2VzIHJlcXVpcmVkIHRvIHVzZXJzcGFj
ZS4gbWVtX2FjY291bnRpbmc9MSBjaGFyZ2VzIHRoZSBhcHAuDQo+ID4gPiA+DQo+ID4gPiA+IDIp
IFNpbmdsZSBob3AgcmVtb3RlIGFsbG9jYXRpb24gKGUuZy4gYXBwIC0+IEFIYXJkd2FyZUJ1ZmZl
cl9hbGxvY2F0ZQ0KPiA+ID4gPiAtPiBncmFsbG9jKQ0KPiA+ID4gPiBncmFsbG9jIGhhcyB0aGUg
Y2FsbGVyJ3MgcGlkIGFzIGRlc2NyaWJlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuIE9wZW4NCj4g
PiA+ID4gYSBwaWRmZCBhbmQgcGFzcyBpdCBpbiB0aGUgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRh
Lg0KPiA+ID4gPg0KPiA+ID4gPiAzKSBEb3VibGUgaG9wIHJlbW90ZSBhbGxvY2F0aW9uIChlLmcu
IGFwcCAtPiBkZXF1ZXVlQnVmZmVyIC0+DQo+ID4gPiA+IFN1cmZhY2VGbGluZ2VyIC0+IGdyYWxs
b2MpDQo+ID4gPiA+IEluIHRoaXMgY2FzZSBncmFsbG9jIGtub3dzIFN1cmZhY2VGbGluZ2VyJ3Mg
cGlkLCBidXQgbm90IHRoZSBhcHAncy4gU28NCj4gPiA+ID4gd2UgbmVlZCB0byBhZGQgdGhlIGFw
cCdzIHBpZGZkIHRvIHRoZSBTdXJmYWNlRmxpbmdlciAtPiBncmFsbG9jDQo+ID4gPiA+IGludGVy
ZmFjZSwgb3IgdHJhbnNmZXIgdGhlIG1lbWNnIGNoYXJnZSBmcm9tIFN1cmZhY2VGbGluZ2VyIHRv
IHRoZSBhcHANCj4gPiA+ID4gYWZ0ZXIgdGhlIGFsbG9jYXRpb24uDQo+ID4gPiA+IEl0J2QgYmUg
bmljZSB0byBhdm9pZCB0aGUgY2hhcmdlIHRyYW5zZmVyIG9wdGlvbiBlbnRpcmVseSwgYnV0IGlm
IHdlDQo+ID4gPiA+IG5lZWQgaXQgdGhhdCBkb2Vzbid0IHNlZW0gc28gYmFkIGluIHRoaXMgY2Fz
ZSBiZWNhdXNlIGl0J3MgYSBidWxrDQo+ID4gPiA+IGNoYXJnZSBmb3IgdGhlIGVudGlyZSBkbWFi
dWYgcmF0aGVyIHRoYW4gcGVyLXBhZ2UuIFNvIHRoZSBleHBvcnRlcg0KPiA+ID4gPiBkb2Vzbid0
IG5lZWQgdG8gZ2V0IGludm9sdmVkICh3ZSB3b3VsZG4ndCBuZWVkIGEgbmV3IGRtYV9idWZfb3Ap
IGFuZA0KPiA+ID4gPiB3ZSB3b3VsZG4ndCBoYXZlIHRvIHdvcnJ5IGFib3V0IGxvb3BpbmcgYW5k
IGxvY2tpbmcgZm9yIGVhY2ggcGFnZS4NCj4gPiA+ID4NCj4gPiA+DQo+ID4gPiBIaSBULkouLA0K
PiA+ID4NCj4gPiA+IFlvdXIgZGVzY3JpcHRpb24gb2YgdGhlIHRocmVlIGRpZmZlcmVudCBjYXNl
cyBzb3VuZHMgdmVyeSBpbnRlcmVzdGluZy4NCj4gPiA+IEl0IGhlbHBzIG1lIHVuZGVyc3RhbmQg
aG93IGRpZmZpY3VsdCBpdCBjYW4gYmUgdG8gY29ycmVjdGx5IGNoYXJnZQ0KPiA+ID4gZG1hLWJ1
ZiBpbiB0aGUgY3VycmVudCB1c2VyIHNjZW5hcmlvcy4NCj4gPiA+DQo+ID4gPiBJ4oCZbSB3b25k
ZXJpbmcgd2hlcmUgSSBjYW4gZmluZCBBbmRyb2lkIHVzZXJzcGFjZSBjb2RlIHRoYXQgdHJhbnNm
ZXJzDQo+ID4gPiB0aGUgUElEIG9mIFJQQyBjYWxsZXJzLiBEbyB3ZSBoYXZlIGFueSBleGlzdGlu
ZyBzYW1wbGUgY29kZSBpbiBBbmRyb2lkDQo+ID4gPiBmb3IgdGhpcz8NCj4gPg0KPiA+IEhpIEJh
cnJ5LA0KPiA+DQo+ID4gSW4gSmF2YSBhbmRyb2lkLm9zLkJpbmRlci5nZXRDYWxsaW5nUGlkKCkg
d2lsbCBwcm92aWRlIGl0LiBIZXJlDQo+DQo+IC4uLiBsZXQgbWUgdHJ5IGFnYWluDQo+DQo+IEhl
cmUgYXJlIHNvbWUgZXhhbXBsZXMgZnJvbSB0aGUgZnJhbWV3b3JrIGNvZGU6DQo+DQo+IGh0dHBz
Oi8vY3MuYW5kcm9pZC5jb20vc2VhcmNoP3E9Z2V0Q2FsbGluZ1BpZCUyMGY6QWN0aXZpdHlNYW5h
Z2VyJnNxPSZzcz1hbmRyb2lkJTJGcGxhdGZvcm0lMkZzdXBlcnByb2plY3QNCj4NCj4gSW4gbmF0
aXZlIGNvZGUgd2UgaGF2ZSBBSUJpbmRlcl9nZXRDYWxsaW5nUGlkIGFuZA0KPiBhbmRyb2lkOjpJ
UENUaHJlYWRTdGF0ZTo6c2VsZigpLT5nZXRDYWxsaW5nUGlkKCkgKG9yDQo+IGFuZHJvaWQ6Omhh
cmR3YXJlOjpJUENUaHJlYWRTdGF0ZTo6c2VsZigpLT5nZXRDYWxsaW5nUGlkKCkgZm9yIEhJREwp
DQo+DQo+IGh0dHBzOi8vY3MuYW5kcm9pZC5jb20vc2VhcmNoP3E9Z2V0Q2FsbGluZ1BpZCUyMGw6
Y3BwJTIwLWY6cHJlYnVpbHQmc3M9YW5kcm9pZCUyRnBsYXRmb3JtJTJGc3VwZXJwcm9qZWN0DQoN
ClRoYW5rcyB2ZXJ5IG11Y2gsIFQuSi4gVGhhdCBpcyB2ZXJ5IGhlbHBmdWwuIEkgZ3Vlc3MNCnRo
YXQgd291bGQgcmVxdWlyZSB1c2VyIHNwYWNlIHRvIHVuZGVyc3RhbmQgdGhlIFJQQw0KcHJvY2Vk
dXJlLCBpbmNsdWRpbmcgc2luZ2xlLWhvcCBhbmQgdHdvLWhvcCBjYXNlcywgYW5kDQptYWtlIHRo
ZSBjb3JyZXNwb25kaW5nIGNoYW5nZXMuDQoNCllvdSBwb2ludGVkIG91dCB0aGUgU3VyZmFjZUZs
aW5nZXIgY2FzZXMsIHdoaWNoIGFyZQ0KdHdvIGhvcHMuIEl0IHNlZW1zIHRoYXQgQUkgbW9kZWxz
IGFyZSBhbHNvIHVzaW5nDQpkbWFfaGVhcCwgYXQgbGVhc3QgZnJvbSB3aGF0IEkgaGF2ZSBvYnNl
cnZlZCBvbiBNVEsNCmFuZCBRdWFsY29tbSBwaG9uZXMuIExpa2VseSwgd2UgbmVlZCB0byB1bmRl
cnN0YW5kDQp0aG9zZSBSUEMgcmVsYXRpb25zaGlwcyBpbiB1c2Vyc3BhY2UgYW5kIG1ha2UgdGhl
DQpjb3JyZXNwb25kaW5nIGNoYW5nZXMuDQpJIGFzc3VtZSBBSSBtb2RlbHMgYXJlIGEgc2luZ2xl
LWhvcCBjYXNlPw0KDQpCZXN0IFJlZ2FyZHMNCkJhcnJ5DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
