Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDLiJdpgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5A45324CB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50F873F7F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:30:33 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 28C533EC66
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:49:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=fPmUsP6B;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778154843;
	bh=6BJjaGOruHF5NtcX/6zf6Bu/wTeaT/tj56yBW3eKEjU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fPmUsP6Biz1SZnJghN6tCtUsycAXbfsN/MzfNobVHwNqgB9kUdtzRDrm7ogE3kUmV
	 1KDDDRUWg2fjogTnUTYzgF84lYdKCv6j/In8onWuNjag38GBGDvUnROplZj2yWZhfL
	 NkM1qmranfx0+bTAFnW3K5+3qzk/cZ6W9Vmu4X+KK7wK0pOHDN34U4vAiHVUfXeg6Z
	 VV+J44rQsAIf+Bk6E7Pe3FkLjB/Wl1R5/SFqZlP8qc3JfmltvLQveBlZNxBGuINO9h
	 +ICAiSORgAbWgWhwR5Dc7w958IByNyyynEWatcnxaomqoIEzijteBXQrJZekWZmmyG
	 cp7GXoQgAYdmA==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E4C6717E131F;
	Thu,  7 May 2026 13:54:02 +0200 (CEST)
Date: Thu, 7 May 2026 13:53:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Marcin =?UTF-8?B?xZpsdXNhcno=?= <marcin.slusarz@arm.com>
Message-ID: <20260507135356.5428d50d@fedora>
In-Reply-To: <afxVIuVVPisBQ9p_@e129842.arm.com>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
	<20260505140516.1372388-5-ketil.johnsen@arm.com>
	<20260505181523.49a3d85c@fedora>
	<afxVIuVVPisBQ9p_@e129842.arm.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: USO3JRHSFTLRANE4Z7O4RICSCKTZPYOX
X-Message-ID-Hash: USO3JRHSFTLRANE4Z7O4RICSCKTZPYOX
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/USO3JRHSFTLRANE4Z7O4RICSCKTZPYOX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 4C5A45324CB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[143];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[30];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.151];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

T24gVGh1LCA3IE1heSAyMDI2IDExOjAyOjI2ICswMjAwDQpNYXJjaW4gxZpsdXNhcnogPG1hcmNp
bi5zbHVzYXJ6QGFybS5jb20+IHdyb3RlOg0KDQo+IE9uIFR1ZSwgTWF5IDA1LCAyMDI2IGF0IDA2
OjE1OjIzUE0gKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4gPiA+IEBAIC0yNzcsOSAr
Mjg2LDIxIEBAIGludCBwYW50aG9yX2RldmljZV9pbml0KHN0cnVjdCBwYW50aG9yX2RldmljZSAq
cHRkZXYpDQo+ID4gPiAgCQkJcmV0dXJuIHJldDsNCj4gPiA+ICAJfQ0KPiA+ID4gIA0KPiA+ID4g
KwkvKiBJZiBhIHByb3RlY3RlZCBoZWFwIG5hbWUgaXMgc3BlY2lmaWVkIGJ1dCBub3QgZm91bmQs
IGRlZmVyIHRoZSBwcm9iZSB1bnRpbCBjcmVhdGVkICovDQo+ID4gPiArCWlmIChwcm90ZWN0ZWRf
aGVhcF9uYW1lICYmIHN0cmxlbihwcm90ZWN0ZWRfaGVhcF9uYW1lKSkgeyAgDQo+ID4gDQo+ID4g
RG8gd2UgcmVhbGx5IG5lZWQgdGhpcyBzdHJsZW4oKSA+IDA/IFdvbid0IGRtYV9oZWFwX2ZpbmQo
KSBmYWlsIGlzIHRoZQ0KPiA+IG5hbWUgaXMgIiIgYWxyZWFkeT8gIA0KPiANCj4gSWYgZG1hX2hl
YXBfZmluZCgpIHdpbGwgZmFpbCwgdGhlbiB0aGUgd2hvbGUgcHJvYmUgd2l0aCBmYWlsIHRvby4N
Cj4gVGhpcyBjaGVjayBwcmV2ZW50cyB0aGF0Lg0KDQpZZWFoLCB0aGF0J3MgYWxzbyBhIHF1ZXN0
aW9uYWJsZSBkZXNpZ24gY2hvaWNlLiBJIG1lYW4sIHdlIGNhbg0KY3VycmVudGx5IHByb2JlIGFu
ZCBib290IHRoZSBGVyBldmVuIHRob3VnaCB3ZSBuZXZlciBzZXR1cCB0aGUNCnByb3RlY3RlZCBG
VyBzZWN0aW9ucywgc28gd2h5IHNob3VsZCB3ZSBkZWZlciB0aGUgcHJvYmUgaGVyZT8gQ2FuJ3Qg
d2UNCmp1c3QgcmV0cnkgdGhlIG5leHQgdGltZSBhIGdyb3VwIHdpdGggdGhlIHByb3RlY3RlZCBi
aXQgaXMgY3JlYXRlZCBhbmQNCmZhaWwgaWYgd2UgY2FuIGZpbmQgYSBwcm90ZWN0ZWQgaGVhcD8N
Cg0KPiBJJ20gbm90IHN1cmUgd2h5IGl0J3MgbmVlZGVkIGF0IGFsbCwgYnV0IGlmDQo+IGl0IGlz
IHJlYWxseSBuZWVkZWQsIHRoZW4gcy9zdHJsZW4ocHJvdGVjdGVkX2hlYXBfbmFtZSkvcHJvdGVj
dGVkX2hlYXBfbmFtZVswXS8NCj4gd291bGQgc2ltcGxpZnkgdGhpcy4NCg0KSXQncyBub3Qgc28g
bXVjaCBhYm91dCBob3cgeW91IGRvIHRoZSB0ZXN0LCBhbmQgbW9yZSBhYm91dCB0aGUgY2FzZQ0K
eW91J3JlIHRyeWluZyB0byBwcm90ZWN0IGFnYWluc3QuIEkgZ3Vlc3MgaGVyZSB5b3UgYXNzdW1l
IHRoYXQNCnBhbnRob3IucHJvdGVjdGVkX2hlYXBfbmFtZT0iIiBtZWFucyAiSSBkb24ndCBoYXZl
IGEgcHJvdGVjdGVkIGhlYXAgZm9yDQp5b3UiLiBJZiBpdCdzIGRlZW1lZCBhY2NlcHRhYmxlLCB0
aGlzIHNob3VsZCBtb3N0IGNlcnRhaW5seSBiZQ0KZGVzY3JpYmVkIHNvbWV3aGVyZS4NCg0KPiAN
Cj4gPiA+ICsJCXB0ZGV2LT5wcm90bS5oZWFwID0gZG1hX2hlYXBfZmluZChwcm90ZWN0ZWRfaGVh
cF9uYW1lKTsNCj4gPiA+ICsJCWlmICghcHRkZXYtPnByb3RtLmhlYXApIHsNCj4gPiA+ICsJCQlk
cm1fd2FybigmcHRkZXYtPmJhc2UsDQo+ID4gPiArCQkJCSAiUHJvdGVjdGVkIGhlYXAgXCclc1wn
IG5vdCAoeWV0KSBhdmFpbGFibGUgLSBkZWZlcnJpbmcgcHJvYmUiLA0KPiA+ID4gKwkJCQkgcHJv
dGVjdGVkX2hlYXBfbmFtZSk7DQo+ID4gPiArCQkJcmV0ID0gLUVQUk9CRV9ERUZFUjsNCj4gPiA+
ICsJCQlnb3RvIGVycl9ycG1fcHV0OyAgDQo+ID4gDQo+ID4gSWYgeW91IG1vdmUgdGhlIGhlYXAg
cmV0cmlldmFsIGJlZm9yZSB0aGUgcnBtIGVuYWJsZW1lbnQsIHlvdSBjYW4gZ2V0DQo+ID4gcmlk
IG9mIHRoaXMgZ290byBlcnJfcnBtX3B1dC4NCj4gPiAgIA0KPiA+ID4gKwkJfQ0KPiA+ID4gKwl9
DQo+ID4gPiArDQo+ID4gPiAgCXJldCA9IHBhbnRob3JfaHdfaW5pdChwdGRldik7DQo+ID4gPiAg
CWlmIChyZXQpDQo+ID4gPiAtCQlnb3RvIGVycl9ycG1fcHV0Ow0KPiA+ID4gKwkJZ290byBlcnJf
ZG1hX2hlYXBfcHV0Ow0KPiA+ID4gIA0KPiA+ID4gIAlyZXQgPSBwYW50aG9yX3B3cl9pbml0KHB0
ZGV2KTsNCj4gPiA+ICAJaWYgKHJldCkgIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
