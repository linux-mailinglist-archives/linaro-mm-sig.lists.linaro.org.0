Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6H3TEWheBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:20:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A1E53212A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:20:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD4973F78E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:20:06 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 038853F70A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 May 2026 04:15:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ebbbgoaJ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=baohua@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6D9E9444BC
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 May 2026 04:15:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51DE4C2BCC6
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 May 2026 04:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777608914;
	bh=hwui33Gqc7TcxagOv3mfkPPBrPZLNR0VJUZ+uXQBFVM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ebbbgoaJfH0H2QNq/r3U5qQlj2If2T+VMqOAnQI2RngEcd26Ehz3a0R2RsQJ+Caq9
	 gDS9FCjUrCqVBZLytR+0XifERlMbUASZ+GTnVBxsyiRYKKcv69QbMdWHFT1JoX1ZtJ
	 cAVDceamM7V/dNSVQSCzGelYfYquATRv37/onb8tq+gRgIImRnBj/Kjj1fldbJ4U5l
	 Noht2LsBm+zSDTv1cK3d06V+w1yW03DDm3ngzP92gDfvOKsirlCYGgjH5U/Zaim8zt
	 pD4uNxLgWwp4nTEvrecHsDbo4eWI+0INwPIXyGHwM7Wu09dOXDl+220hDrHloF5bma
	 gnztHzGoNXlRw==
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8b45dff1eebso11201276d6.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 21:15:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ94PKZsJ93rODn3rIQt8A7rEIQBWV5MPo6rlm8cGjQNDcKgbXc0A7/dW3aEwk6WQpWLSJlBq1rcJq7r5zqB@lists.linaro.org
X-Gm-Message-State: AOJu0YyaZBZ8HPPW5Q2ZqZNdkc0yv8odRFRpiVCHrlxICQGQdtNLplv0
	kvWnHGIQvmGxOnELTaDChtST+szuR0cqTJBr4c9hvdRGfuffpo/AiBEJs5XmONxxWln6pL979Es
	jVCUChEF9653kIUq1pYPlpHLy5XybA04=
X-Received: by 2002:a05:6214:20c8:b0:8ac:8cbb:49bd with SMTP id
 6a1803df08f44-8b48200b722mr76592026d6.38.1777608913488; Thu, 30 Apr 2026
 21:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260406214938.24142-1-baohua@kernel.org> <a6d1c89a-3c71-4e06-adcb-56595071dcc2@amd.com>
 <CAGsJ_4xquCzQLbvpkC8arAN=9KhrAkdPdxnB=v85GvvQu23Xyg@mail.gmail.com> <9034246e-3971-4fad-94b7-80f4ad0e29db@amd.com>
In-Reply-To: <9034246e-3971-4fad-94b7-80f4ad0e29db@amd.com>
From: Barry Song <baohua@kernel.org>
Date: Fri, 1 May 2026 12:15:01 +0800
X-Gmail-Original-Message-ID: <CAGsJ_4z5EZoNMBVnu6sCkThyi9VTCeCH29buVecuySuv_Ry8fw@mail.gmail.com>
X-Gm-Features: AVHnY4LHlyYebn_G01H7PE4heMOjmK8GdhdSAhmc9BNXcAEKzwaicCFdtdH3nd8
Message-ID: <CAGsJ_4z5EZoNMBVnu6sCkThyi9VTCeCH29buVecuySuv_Ry8fw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FU5DVZKFXIVJ3YR6XVVKYEKHAX7RU4IB
X-Message-ID-Hash: FU5DVZKFXIVJ3YR6XVVKYEKHAX7RU4IB
X-Mailman-Approved-At: Wed, 13 May 2026 11:19:38 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Xueyuan Chen <Xueyuan.chen21@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: Optimize sg_table-to-pages conversion in vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FU5DVZKFXIVJ3YR6XVVKYEKHAX7RU4IB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 93A1E53212A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[295];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,linaro.org,collabora.com,arm.com,google.com];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.571];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gV2VkLCBBcHIgMjIsIDIwMjYgYXQgMzoxMOKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA0LzcvMjYgMTM6MjksIEJhcnJ5
IFNvbmcgd3JvdGU6DQo+ID4gT24gVHVlLCBBcHIgNywgMjAyNiBhdCAzOjU44oCvUE0gQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPj4NCj4gPj4g
T24gNC82LzI2IDIzOjQ5LCBCYXJyeSBTb25nIChYaWFvbWkpIHdyb3RlOg0KPiA+Pj4gRnJvbTog
WHVleXVhbiBDaGVuIDxYdWV5dWFuLmNoZW4yMUBnbWFpbC5jb20+DQo+ID4+Pg0KPiA+Pj4gUmVw
bGFjZSB0aGUgaGVhdnkgZm9yX2VhY2hfc2d0YWJsZV9wYWdlKCkgaXRlcmF0b3IgaW4gc3lzdGVt
X2hlYXBfZG9fdm1hcCgpDQo+ID4+PiB3aXRoIGEgbW9yZSBlZmZpY2llbnQgbmVzdGVkIGxvb3Ag
YXBwcm9hY2guDQo+ID4+Pg0KPiA+Pj4gSW5zdGVhZCBvZiBpdGVyYXRpbmcgcGFnZSBieSBwYWdl
LCB3ZSBub3cgaXRlcmF0ZSB0aHJvdWdoIHRoZSBzY2F0dGVybGlzdA0KPiA+Pj4gZW50cmllcyB2
aWEgZm9yX2VhY2hfc2d0YWJsZV9zZygpLiBCZWNhdXNlIHBhZ2VzIHdpdGhpbiBhIHNpbmdsZSBz
ZyBlbnRyeQ0KPiA+Pj4gYXJlIHBoeXNpY2FsbHkgY29udGlndW91cywgd2UgY2FuIHBvcHVsYXRl
IHRoZSBwYWdlIGFycmF5IHdpdGggYSBpbiBhbg0KPiA+Pj4gaW5uZXIgbG9vcCB1c2luZyBzaW1w
bGUgcG9pbnRlciBtYXRoLiBUaGlzIHNhdmUgYSBsb3Qgb2YgdGltZS4NCj4gPj4+DQo+ID4+PiBU
aGUgV0FSTl9PTiBjaGVjayBpcyBhbHNvIHB1bGxlZCBvdXQgb2YgdGhlIGxvb3AgdG8gc2F2ZSBi
cmFuY2gNCj4gPj4+IGluc3RydWN0aW9ucy4NCj4gPj4+DQo+ID4+PiBQZXJmb3JtYW5jZSByZXN1
bHRzIG1hcHBpbmcgYSAyR0IgYnVmZmVyIG9uIFJhZHhhIE82Og0KPiA+Pj4gLSBCZWZvcmU6IH4x
NDQwMDAwIG5zDQo+ID4+PiAtIEFmdGVyOiAgfjIzMjAwMCBucw0KPiA+Pj4gKH44NCUgcmVkdWN0
aW9uIGluIGl0ZXJhdGlvbiB0aW1lLCBvciB+Ni4yeCBmYXN0ZXIpDQo+ID4+DQo+ID4+IFdlbGwg
cmVhbCBxdWVzdGlvbiBpcyB3aHkgZG8geW91IGNhcmUgYWJvdXQgdGhlIHZtYXAgcGVyZm9ybWFu
Y2U/DQo+ID4+DQo+ID4+IFRoYXQgc2hvdWxkIGJhc2ljYWxseSBvbmx5IGJlIHVzZWQgZm9yIGZi
ZGV2IGVtdWxhdGlvbiAoZXhjZXB0IGZvciBWTUdGWCkgYW5kIHdlIGFic29sdXRlbHkgZG9uJ3Qg
Y2FyZSBhYm91dCBwZXJmb3JtYW5jZSB0aGVyZS4NCj4gPg0KPiA+IEkgYWdyZWUgdGhhdCBpbiBt
YWlubGluZSwgZG1hX2J1Zl92bWFwIGlzIG5vdCB1c2VkIHZlcnkgb2Z0ZW4uDQo+ID4gSGVyZeKA
mXMgd2hhdCBJIHdhcyBhYmxlIHRvIGZpbmQ6DQo+ID4NCj4gPiAgIDEgICAxNjM4ICBkcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jIDw8ZG1hX2J1Zl92bWFwX3VubG9ja2VkPj4NCj4gPiAgICAgICAg
ICAgICAgcmV0ID0gZG1hX2J1Zl92bWFwKGRtYWJ1ZiwgbWFwKTsNCj4gPiAgICAyICAgIDM3NiAg
ZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMNCj4gPiA8PGRybV9nZW1fc2ht
ZW1fdm1hcF9sb2NrZWQ+Pg0KPiA+ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAob2Jq
LT5pbXBvcnRfYXR0YWNoLT5kbWFidWYsIG1hcCk7DQo+ID4gICAgMyAgICAgODUgIGRyaXZlcnMv
Z3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMNCj4gPiA8PGV0bmF2aXZfZ2VtX3By
aW1lX3ZtYXBfaW1wbD4+DQo+ID4gICAgICAgICAgICAgIHJldCA9IGRtYV9idWZfdm1hcChldG5h
dml2X29iai0+YmFzZS5pbXBvcnRfYXR0YWNoLT5kbWFidWYsICZtYXApOw0KPiA+ICAgIDQgICAg
NDMzICBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9ibGl0LmMgPDxtYXBfZXh0ZXJuYWw+
Pg0KPiA+ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAoYm8tPnRiby5iYXNlLmRtYV9i
dWYsIG1hcCk7DQo+ID4gICAgNSAgICAgODggIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4
X2dlbS5jIDw8dm13X2dlbV92bWFwPj4NCj4gPiAgICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl92
bWFwKG9iai0+aW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCBtYXApOw0KPiA+DQo+ID4gSG93ZXZlciwg
aW4gdGhlIEFuZHJvaWQgZWNvc3lzdGVtLCBzeXN0ZW1faGVhcCBhbmQgc2ltaWxhciBoZWFwcw0K
PiA+IGFyZSB3aWRlbHkgdXNlZCBhY3Jvc3MgY2FtZXJhLCBOUFUsIGFuZCBtZWRpYSBkcml2ZXJz
LiBNYW55IG9mIHRoZXNlDQo+ID4gZHJpdmVycyBhcmUgbm90IGluIG1haW5saW5lIGJ1dCBkbyB1
c2Ugdm1hcCgpIGluIHJlYWwgY29kZSBwYXRocy4NCj4NCj4gV2VsbCBvdXQgb2YgdHJlZSBkcml2
ZXJzIGFyZSBub3QgYSBqdXN0aWZpY2F0aW9uIHRvIG1ha2UgYW4gdXBzdHJlYW0gY2hhbmdlcy4N
Cj4NCj4gQXBhcnQgZnJvbSBhIGhhbmRmdWwgb2Ygd29ya2Fyb3VuZHMgd2hpY2ggbmVlZCB0byBD
UFUgYWNjZXNzIGFzIGZhbGxiYWNrIERNQS1idWYgdm1hcCBpcyBvbmx5IHVzZWQgdG8gcHJvdmlk
ZSBmYiBkZXYgZW11bGF0aW9uLg0KPg0KPiBUaGUgdm1hcCBpbnRlcmZhY2UgaGFzIGFscmVhZHkg
Z2l2ZW4gdXMgcXVpdGUgYSBoZWFkYWNoZSBpbiB0aGUgZmlyc3QgcGxhY2UgYW5kIHRoZXJlIGFy
ZSBhIGNvdXBsZSBvZiB1bnJlc29sdmVkIHByb2JsZW1zIHJlZ2FyZGluZyBzeW5jaHJvbml6YXRp
b24gYW5kIGNvaGVyZW5jeS4NCj4NCj4gV2hlbiBhIGRyaXZlciB3b3VsZCBiZSBwdXNoZWQgdXBz
dHJlYW0gd2hpY2ggbWFrZXMgc28gZnJlcXVlbnQgdXNlIG9mIHRoZSBkbWFfYnVmX3ZtYXAgZnVu
Y3Rpb24gdGhhdCBpdCBtYXR0ZXJzIGZvciB0aGUgcGVyZm9ybWFuY2UgSSB0aGluayB0aGVyZSB3
b3VsZCBiZSBwdXNoIGJhY2sgb24gdGhhdCBhbmQgdGhlIGRyaXZlciBkZXZlbG9wZXIgd291bGQg
cmVxdWlyZSBhIHZlcnkgZ29vZCBleHBsYW5hdGlvbiB3aHkgdGhhdCBpcyBuZWNlc3NhcnkuDQo+
DQo+IFNvIGZvciBub3cgSSBoYXZlIHRvIHJlamVjdCB0aGF0IHBhdGNoLg0KDQpXZWxsLCBpdCBk
b2VzbuKAmXQgc2VlbSB0byBpbmNyZWFzZSBjb21wbGV4aXR5LCBhbmQgdGhlIGNvZGUgaXMgcXVp
dGUgZWFzeQ0KdG8gdW5kZXJzdGFuZC4gSXQgd291bGQgYmUgZ3JlYXQgaWYgdGhlIGNvbW11bml0
eSBjb3VsZCBiZSBtb3JlIHdlbGNvbWluZw0KdG8gZGV2ZWxvcGVycyB3aG8gYXJlIGp1c3QgZ2V0
dGluZyBpbnZvbHZlZCwgcmF0aGVyIHRoYW4gZGlzY291cmFnaW5nIHRoZW0uDQoNCkFwcGFyZW50
bHksIG5vIG9uZSBjYW4gY29udHJvbCB3aGV0aGVyIHRoZSBzb3VyY2UgY29kZSBvZiB0aG9zZSBr
ZXJuZWwNCm1vZHVsZXMgd2lsbCBiZSB1cHN0cmVhbWVkIGV4Y2VwdCB0aGUgdmVuZG9ycyB0aGVt
c2VsdmVzLCBidXQgcHJvZHVjdHMNCmNhbiBzdGlsbCBiZW5lZml0IGZyb20gdGhlIGNvbW1vbiBr
ZXJuZWwuDQoNCj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+DQo+ID4gQXMgSSBj
YW4gc2hvdyB5b3Ugc29tZSBvZiB0aGVtIGZyb20gTVRLIHBsYXRmb3JtczoNCj4gPg0KPiA+IDE6
DQo+ID4gWyAgICA2LjY4OTg0OV0gc3lzdGVtX2hlYXBfdm1hcCsweDE3Yy8weDI1NCBbc3lzdGVt
X2hlYXANCj4gPiA4ZDM1ZDRjZTM1YmIzMGQ4YTYyM2YwYjk4NjM5OThhMjUyOGU0MTc1XQ0KPiA+
IFsgICAgNi42ODk4NTldIGRtYV9idWZfdm1hcF91bmxvY2tlZCsweGI4LzB4MTMwDQo+ID4gWyAg
ICA2LjY4OTg2MV0gYW92X2NvcmVfaW5pdCsweDMxMC8weDcxOCBbbXRrX2Fvdg0KPiA+IDk2ZTJl
NWU5NDU3ZGNkYWNjZTNhNzYyOWIwNjAwYzVkYmVjYTYyM2JdDQo+ID4gWyAgICA2LjY4OTg3M10g
bXRrX2Fvdl9wcm9iZSsweDQzNC8weDViNCBbbXRrX2Fvdg0KPiA+IDk2ZTJlNWU5NDU3ZGNkYWNj
ZTNhNzYyOWIwNjAwYzVkYmVjYTYyM2JdDQo+ID4NCj4gPiAyOg0KPiA+IFsgIDExNi4xODE2NDNd
IF9fdm1hcF9wYWdlc19yYW5nZV9ub2ZsdXNoKzB4N2M0LzB4ODE0DQo+ID4gWyAgMTE2LjE4MTY0
NV0gdm1hcCsweGI0LzB4MTQ4DQo+ID4gWyAgMTE2LjE4MTY0N10gc3lzdGVtX2hlYXBfdm1hcCsw
eDE3Yy8weDI1NCBbc3lzdGVtX2hlYXANCj4gPiA4ZDM1ZDRjZTM1YmIzMGQ4YTYyM2YwYjk4NjM5
OThhMjUyOGU0MTc1XQ0KPiA+IFsgIDExNi4xODE2NTFdIGRtYV9idWZfdm1hcF91bmxvY2tlZCsw
eGI4LzB4MTMwDQo+ID4gWyAgMTE2LjE4MTY1M10gbXRrX2NhbV92YjJfdmFkZHIrMHhhMC8weGZj
IFttdGtfY2FtX2lzcDhzDQo+ID4gMGNmOWJlNmM3NzNhOGYxNGFhYjlkYjllYmY1M2ZlYWNiNDk5
ODQ2YV0NCj4gPiBbICAxMTYuMTgxNjgyXSB2YjJfcGxhbmVfdmFkZHIrMHg1Yy8weDc4DQo+ID4g
WyAgMTE2LjE4MTY4NF0gbXRrX2NhbV9qb2JfZmlsbF9pcGlfZnJhbWUrMHhhOGMvMHgxMjhjIFtt
dGtfY2FtX2lzcDhzDQo+ID4gMGNmOWJlNmM3NzNhOGYxNGFhYjlkYjllYmY1M2ZlYWNiNDk5ODQ2
YV0NCj4gPg0KPiA+IDM6DQo+ID4gWyAgMTE2LjMwNjE3OF0gX192bWFwX3BhZ2VzX3JhbmdlX25v
Zmx1c2grMHg3YzQvMHg4MTQNCj4gPiBbICAxMTYuMzA2MTgzXSB2bWFwKzB4YjQvMHgxNDgNCj4g
PiBbICAxMTYuMzA2MTg3XSBzeXN0ZW1faGVhcF92bWFwKzB4MTdjLzB4MjU0IFtzeXN0ZW1faGVh
cA0KPiA+IDhkMzVkNGNlMzViYjMwZDhhNjIzZjBiOTg2Mzk5OGEyNTI4ZTQxNzVdDQo+ID4gWyAg
MTE2LjMwNjIwOV0gZG1hX2J1Zl92bWFwX3VubG9ja2VkKzB4YjgvMHgxMzANCj4gPiBbICAxMTYu
MzA2MjEyXSBhcHVfc3lzbWVtX2FsbG9jKzB4MTY4LzB4MzYwIFthcHVzeXMNCj4gPiA4ZmIzM2Ni
Y2UzYjg1OGQ2NTFiOWRhMjZmYzM3MDA5MGE2N2NmYjcwXQ0KPiA+IFsgIDExNi4zMDY0NjhdIG1k
d19tZW1fYWxsb2MrMHhkOC8weDMxNCBbYXB1c3lzDQo+ID4gOGZiMzNjYmNlM2I4NThkNjUxYjlk
YTI2ZmMzNzAwOTBhNjdjZmI3MF0NCj4gPiBbICAxMTYuMzA2NTkxXSBtZHdfbWVtX3Bvb2xfY2h1
bmtfYWRkKzB4MTFjLzB4NDAwIFthcHVzeXMNCj4gPiA4ZmIzM2NiY2UzYjg1OGQ2NTFiOWRhMjZm
YzM3MDA5MGE2N2NmYjcwXQ0KPiA+IFsgIDExNi4zMDY3MTJdIG1kd19tZW1fcG9vbF9jcmVhdGUr
MHgxOTAvMHgyYzggW2FwdXN5cw0KPiA+IDhmYjMzY2JjZTNiODU4ZDY1MWI5ZGEyNmZjMzcwMDkw
YTY3Y2ZiNzBdDQo+ID4gWyAgMTE2LjMwNjgzM10gbWR3X2Rydl9vcGVuKzB4MjFjLzB4NDdjIFth
cHVzeXMNCj4gPiA4ZmIzM2NiY2UzYjg1OGQ2NTFiOWRhMjZmYzM3MDA5MGE2N2NmYjcwXQ0KPiA+
DQo+ID4gV2hpbGUgd2UgbWF5IHdhbnQgdG8gZW5jb3VyYWdlIG1vcmUgb2YgdGhlc2UgZHJpdmVy
cyB0byB1cHN0cmVhbSwNCj4gPiBzb21lIGFzcGVjdHMgYXJlIGJleW9uZCBvdXIgY29udHJvbCAo
ZGlmZmVyZW50IFNvQyB2ZW5kb3JzKSwgYnV0IHdlDQo+ID4gY2FuIGF0IGxlYXN0IGNvbnRyaWJ1
dGUgdXBzdHJlYW0gb3Vyc2VsdmVzLg0KPiA+DQoNCkJlc3QgUmVnYXJkcw0KQmFycnkNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
