Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJ8iDkxhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E098B532550
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7A78401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:32:26 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id DC7BC3F77F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 14:11:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=HfiHYnEs;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778595078;
	bh=ffnSOLr6GBRvN/RNrGZcqdQPL9WDigCoPM7fdgwRrkM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HfiHYnEsvlaGP8rXHMzyPOvqqCmbexRYDSqS7YdPq/NwKBFXqNQZucTJlKvSPvs6N
	 bQEhjDnFB5iHZ4TngCrePrDeNE6o6Bvgpxllw0d75usAc1NR6HvluYWni2NJopiDRI
	 86qPMBksnJSMJEmIc3ojTu/JVZgi9qGmlmiXngJlggUUebkB/TGJRfiBJwLD84rFDV
	 OnhnS4h4nXnGTF6iC75b1H6EoiUE3RyNWTM4C+t0TL2mN2b3Niq51V/iGCXGpEwWjk
	 52R8MJIdUqkeCRYwCPvihSkxBzJYZqA/D5pKKdhsATj+Rl5B7QS6Pp/8xc0d4UHxn6
	 V/S1XclaHmC1g==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 50EAF17E040C;
	Tue, 12 May 2026 16:11:17 +0200 (CEST)
Date: Tue, 12 May 2026 16:11:11 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Liviu Dudau <liviu.dudau@arm.com>
Message-ID: <20260512161111.0cb7000e@fedora>
In-Reply-To: <agMvb_jeRsO7tSS-@e142607>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
	<20260505140516.1372388-5-ketil.johnsen@arm.com>
	<20260505181523.49a3d85c@fedora>
	<afxVIuVVPisBQ9p_@e129842.arm.com>
	<20260507135356.5428d50d@fedora>
	<agMvb_jeRsO7tSS-@e142607>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XKSSB2RVZA36WKAY2CAF3HXD3Z4I62QU
X-Message-ID-Hash: XKSSB2RVZA36WKAY2CAF3HXD3Z4I62QU
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:11 +0000
CC: Marcin =?UTF-8?B?xZpsdXNhcno=?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm
 -sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XKSSB2RVZA36WKAY2CAF3HXD3Z4I62QU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: E098B532550
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.166];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,arm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gVHVlLCAxMiBNYXkgMjAyNiAxNDo0NzoyNyArMDEwMA0KTGl2aXUgRHVkYXUgPGxpdml1LmR1
ZGF1QGFybS5jb20+IHdyb3RlOg0KDQo+IE9uIFRodSwgTWF5IDA3LCAyMDI2IGF0IDAxOjUzOjU2
UE0gKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4gPiBPbiBUaHUsIDcgTWF5IDIwMjYg
MTE6MDI6MjYgKzAyMDANCj4gPiBNYXJjaW4gxZpsdXNhcnogPG1hcmNpbi5zbHVzYXJ6QGFybS5j
b20+IHdyb3RlOg0KPiA+ICAgDQo+ID4gPiBPbiBUdWUsIE1heSAwNSwgMjAyNiBhdCAwNjoxNToy
M1BNICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6ICANCj4gPiA+ID4gPiBAQCAtMjc3LDkg
KzI4NiwyMSBAQCBpbnQgcGFudGhvcl9kZXZpY2VfaW5pdChzdHJ1Y3QgcGFudGhvcl9kZXZpY2Ug
KnB0ZGV2KQ0KPiA+ID4gPiA+ICAJCQlyZXR1cm4gcmV0Ow0KPiA+ID4gPiA+ICAJfQ0KPiA+ID4g
PiA+ICANCj4gPiA+ID4gPiArCS8qIElmIGEgcHJvdGVjdGVkIGhlYXAgbmFtZSBpcyBzcGVjaWZp
ZWQgYnV0IG5vdCBmb3VuZCwgZGVmZXIgdGhlIHByb2JlIHVudGlsIGNyZWF0ZWQgKi8NCj4gPiA+
ID4gPiArCWlmIChwcm90ZWN0ZWRfaGVhcF9uYW1lICYmIHN0cmxlbihwcm90ZWN0ZWRfaGVhcF9u
YW1lKSkgeyAgICANCj4gPiA+ID4gDQo+ID4gPiA+IERvIHdlIHJlYWxseSBuZWVkIHRoaXMgc3Ry
bGVuKCkgPiAwPyBXb24ndCBkbWFfaGVhcF9maW5kKCkgZmFpbCBpcyB0aGUNCj4gPiA+ID4gbmFt
ZSBpcyAiIiBhbHJlYWR5PyAgICANCj4gPiA+IA0KPiA+ID4gSWYgZG1hX2hlYXBfZmluZCgpIHdp
bGwgZmFpbCwgdGhlbiB0aGUgd2hvbGUgcHJvYmUgd2l0aCBmYWlsIHRvby4NCj4gPiA+IFRoaXMg
Y2hlY2sgcHJldmVudHMgdGhhdC4gIA0KPiA+IA0KPiA+IFllYWgsIHRoYXQncyBhbHNvIGEgcXVl
c3Rpb25hYmxlIGRlc2lnbiBjaG9pY2UuIEkgbWVhbiwgd2UgY2FuDQo+ID4gY3VycmVudGx5IHBy
b2JlIGFuZCBib290IHRoZSBGVyBldmVuIHRob3VnaCB3ZSBuZXZlciBzZXR1cCB0aGUNCj4gPiBw
cm90ZWN0ZWQgRlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2UgZGVmZXIgdGhlIHByb2JlIGhl
cmU/IENhbid0IHdlDQo+ID4ganVzdCByZXRyeSB0aGUgbmV4dCB0aW1lIGEgZ3JvdXAgd2l0aCB0
aGUgcHJvdGVjdGVkIGJpdCBpcyBjcmVhdGVkIGFuZA0KPiA+IGZhaWwgaWYgd2UgY2FuIGZpbmQg
YSBwcm90ZWN0ZWQgaGVhcD8gIA0KPiANCj4gVGhlIHByb2JsZW0gd2UgaGF2ZSB3aXRoIHRoZSBj
dXJyZW50IGZpcm13YXJlIGlzIHRoYXQgaXQgZG9lcyBhIG51bWJlciBvZiBzZXR1cCBzdGVwcyBh
dCAiYm9vdCINCj4gdGltZSBvbmx5LiBPbmUgb2YgdGhlIHN0ZXBzIGlzIHByZXBhcmluZyBpdHMg
aW50ZXJuYWwgc3RydWN0dXJlcyBmb3Igd2hlbiBpdCBlbnRlcnMgcHJvdGVjdGVkDQo+IG1vZGUg
YW5kIGl0IHN0b3JlcyB0aGVtIGluIHRoZSBidWZmZXIgcGFzc2VkIGluIGF0IGZpcm13YXJlIGxv
YWRpbmcuIFdlIGNhbm5vdCBsYXRlciBydW4gdGhlDQo+IHByb2Nlc3Mgd2hlbiB3ZSBoYXZlIGEg
Z3JvdXAgd2l0aCBwcm90ZWN0ZWQgbW9kZSBzZXQuDQoNCk5vLCBidXQgd2UgY2FuIGZvcmNlIGEg
ZnVsbC9zbG93IHJlc2V0IGFuZCBoYXZlIHRoYXQgdGhpbmcNCnJlLWluaXRpYWxpemVkLCBjYW4n
dCB3ZT8gSSBtZWFuLCB0aGF0J3MgYmFzaWNhbGx5IHdoYXQgd2UgZG8gd2hlbiBhDQpmYXN0IHJl
c2V0IGZhaWxzOiB3ZSByZS1pbml0aWFsaXplIGFsbCB0aGUgc2VjdGlvbnMgYW5kIHJlc2V0IGFn
YWluLCBhdA0Kd2hpY2ggcG9pbnQgdGhlIEZXIHNob3VsZCBzdGFydCBmcm9tIGEgZnJlc2ggc3Rh
dGUsIGFuZCBiZSBhYmxlIHRvDQpwcm9wZXJseSBpbml0aWFsaXplIHRoZSBwcm90ZWN0ZWQtcmVs
YXRlZCBzdHVmZiBpZiBwcm90ZWN0ZWQgc2VjdGlvbnMNCmFyZSBwb3B1bGF0ZWQuIEFtIEkgbWlz
c2luZyBzb21ldGhpbmc/DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
