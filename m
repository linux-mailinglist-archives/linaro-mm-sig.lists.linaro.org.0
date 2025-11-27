Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2D/MOVIB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A87410E7D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1F834444E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:37 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 29C063F772
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 13:51:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=AE7unJJ9;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4dHHsd1yj1z9tHd;
	Thu, 27 Nov 2025 14:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764251509; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aAh7JsuhDwTA6puzFjLHmry2BMuVgc6R6juTrQrgIDM=;
	b=AE7unJJ9EOQPnAi6TAazDIz1H8bRe3kpfr2AeFzAgESqZiwAEGdMEwcmGwd9lP9QIprYgh
	+PMh8zg92MzpeUgxSx28dQ927sQ6NE4O47T8ZF3lEEBHHwgmkPlI2p8kwblFme8QlvxLdI
	Iz8kanTYpfmMBM6qMw9no4nwu2B0knIA9nw2FbiExLcEylLQ5ehjP826FrDzY8tJWsfLyj
	LlDOWYm9sCS7rYd5IcfyPmlQjaVxaXhYJipYOYd1Zx97lZVEH+jb12tn+HBH2J7TWr1/n4
	fUYiUEHM8WA6v1LZOWZnMGPjFLvi/mg2i2OBErArYZulsdATYMJGDtjk8NFB1g==
Message-ID: <63274dd281ac94f2680a4aa91f541de82435fda5.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Andi Shyti <andi.shyti@kernel.org>, Matthew Brost
 <matthew.brost@intel.com>
Date: Thu, 27 Nov 2025 14:51:39 +0100
In-Reply-To: <q2kvwmnxomqlcx7zgvlvyhupduytfubcu5vghuf6ztrdaq55pb@gq4tg7qughun>
References: <20251126131914.149445-2-phasta@kernel.org>
	 <20251126131914.149445-5-phasta@kernel.org>
	 <nrrk4kug6a42fztx7ryuz5bk6uy7roiszjhiivlvtrw3uvunps@wn44moyetzff>
	 <aSeTsINKklqqJyIs@lstrano-desk.jf.intel.com>
	 <q2kvwmnxomqlcx7zgvlvyhupduytfubcu5vghuf6ztrdaq55pb@gq4tg7qughun>
MIME-Version: 1.0
X-MBO-RS-ID: 63157739c600c3e8b1c
X-MBO-RS-META: 86chu8ma6etgk766suyxb85nfygh4osp
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L2UIFKC5VA6QHJNMPIJQU2FXHRHRK7SJ
X-Message-ID-Hash: L2UIFKC5VA6QHJNMPIJQU2FXHRHRK7SJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:18 +0000
CC: Philipp Stanner <phasta@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.free
 desktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 3/6] drm/gpu/xe: Ignore dma_fenc_signal() return code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L2UIFKC5VA6QHJNMPIJQU2FXHRHRK7SJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[3361];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,suse.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.free];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.942];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 89A87410E7D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE0OjM3ICswMTAwLCBBbmRpIFNoeXRpIHdyb3RlOg0KPiBI
aSBNYXR0LA0KPiANCj4gT24gV2VkLCBOb3YgMjYsIDIwMjUgYXQgMDM6NTY6MzJQTSAtMDgwMCwg
TWF0dGhldyBCcm9zdCB3cm90ZToNCj4gPiBPbiBXZWQsIE5vdiAyNiwgMjAyNSBhdCAxMTo1Njo1
N1BNICswMTAwLCBBbmRpIFNoeXRpIHdyb3RlOg0KPiA+ID4gPiBAQCAtODUsNyArODUsNiBAQCB2
b2lkIHhlX2h3X2ZlbmNlX2lycV9maW5pc2goc3RydWN0IHhlX2h3X2ZlbmNlX2lycSAqaXJxKQ0K
PiA+ID4gPiBAQCAtOTMsOSArOTIsOSBAQCB2b2lkIHhlX2h3X2ZlbmNlX2lycV9maW5pc2goc3Ry
dWN0IHhlX2h3X2ZlbmNlX2lycSAqaXJxKQ0KPiA+ID4gPiDCoAkJc3Bpbl9sb2NrX2lycXNhdmUo
JmlycS0+bG9jaywgZmxhZ3MpOw0KPiA+ID4gPiDCoAkJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZl
KGZlbmNlLCBuZXh0LCAmaXJxLT5wZW5kaW5nLCBpcnFfbGluaykgew0KPiA+ID4gPiDCoAkJCWxp
c3RfZGVsX2luaXQoJmZlbmNlLT5pcnFfbGluayk7DQo+ID4gPiA+IC0JCQllcnIgPSBkbWFfZmVu
Y2Vfc2lnbmFsX2xvY2tlZCgmZmVuY2UtPmRtYSk7DQo+ID4gPiANCj4gPiA+IHdoeSBkb24ndCB3
ZSBkbw0KPiA+ID4gDQo+ID4gPiBYRV9XQVJOX09OKGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKC4u
KSkNCg0KYmVjYXVzZSBpdCdzIGltcG9zc2libGUgYmVjYXVzZSB0aGUgc2VyaWVzIGlzIGFib3V0
IHJlbW92aW5nIHRoZSByZXR1cm4NCmNvZGVzIGZyb20gdGhlIGRtYV9mZW5jZV9zaWduYWxfKiBm
dW5jdGlvbnMuDQoNCj4gPiA+IA0KPiA+IA0KPiA+IElJUkMgdGhlIGFib3ZlIHN0YXRlbWVudCBj
YW4gY29tcGlsZSBvdXQuIFNvIHRoZSBwYXRjaCBsb29rcyBjb3JyZWN0IHRvIG1lLg0KPiANCj4g
eW91IGhhdmUgZGVmaW5lZCBYRV9XQVJOX09OIGFzIFdBUk5fT04gdGhhdCBzaG91bGQgYWx3YXlz
DQo+IGV2YWx1YXRlIHRoZSBjb250ZW50IGFuZCwgZGVwZW5kaW5nIG9uIHRoZSBjb25maWd1cmF0
aW9uLCBpdA0KPiBwcmludHMgdGhlIGxvZ3Mgb3Igbm90Lg0KPiANCj4gV2hhdCBJIGRvbid0IGxp
a2UgZnJvbSB0aGlzIHBhdGNoIGlzIHRoYXQgd2UgZW5kIHVwIGNoZWNraW5nDQo+IHR3aWNlIGZv
ciB0aGUgRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklUIGJpdC4NCg0KRGVwZW5kcyBvbiB3aGF0
IHlvdSBtZWFuIGJ5ICJ3ZSIuIFRoZSBYZSBjb2RlIGNoZWNrcyBpdCBvbmx5IG9uY2UsIHdpdGgN
CmRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoKS4gVGhlIGRtYV9mZW5jZSBiYWNrZW5kIGNo
ZWNrcyBpdCB5ZXQNCmFnYWluLCBhcyBpdCBhbHdheXMgZG9lcywgdG8gYXZvaWQgc2lnbmFsaW5n
IGEgc2lnbmFsZWQgZmVuY2UuDQoNClRoYXQncyBub3QgcmFjeSBoZXJlLCBob3dldmVyLCBiZWNh
dXNlIHRoZSBmZW5jZSBsb2NrIGlzIGFscmVhZHkgYmVpbmcNCmhlbGQsIGFzIGV2aWRlbmNlZCBi
eSB0aGUgY3VycmVudCB1c2FnZSBvZiBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZCgpLg0KDQoNClAu
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
