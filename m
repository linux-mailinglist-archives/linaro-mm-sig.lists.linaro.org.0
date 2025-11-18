Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFPbNLr94GnzoAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC204107B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AC98404F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:18:17 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 50FFA3F7EF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 07:10:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=owxjWkN5;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4d9bPB24ZPz9t1S;
	Tue, 18 Nov 2025 08:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1763449854; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m3Svf89VpHT2wQGwonxJQfHJCvpIpi34OCtA1IiIzKU=;
	b=owxjWkN5pULlF64dau2zdaypb2ZTg4jacy54mZzptXHJjvB8Cchj4Wd0i86nkjDF20Qd+e
	NQT25A6f8G4Rfm5gA3d1ba3Z296wZhRCpM9Lsw8TF0SXFksuss2yIcMNCFJO0BSEvY5l3E
	L8niiWscyhnyPxvIG4J90BdXQGqCjOfX/OA8/kRJfV6V3khbr30oYk2MS6qG4wKvpDlUUx
	N7r5Av2evV1mTEiXzem7Pck7SFouEcAvNKfY5AJVhVqYDMNcBVKhvOI8h1KGMhSfryyLmr
	4XTKD5KRcOrtC82HLqIY+QKlKEza7O6vRPzIyQDa/nhfV8gXWiwew4S7oSdvFg==
Message-ID: <5ada5c442d391173cd723270c3c1b15f375bf2f7.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 tursulin@ursulin.net, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org,  amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,  sumit.semwal@linaro.org
Date: Tue, 18 Nov 2025 08:10:49 +0100
In-Reply-To: <6862f4a8-a23f-4930-aef7-802bc65a4d36@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-9-christian.koenig@amd.com>
	 <cfa60e2d9902602c41b277fd8bd254576b2f4187.camel@mailbox.org>
	 <6862f4a8-a23f-4930-aef7-802bc65a4d36@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 7f302530e54e8814219
X-MBO-RS-META: koouwgisxzeuzkg53pikqhcz1kf8i4hm
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WRBCAUNLEDNYNMERXVNMPEWO7M3N5IAM
X-Message-ID-Hash: WRBCAUNLEDNYNMERXVNMPEWO7M3N5IAM
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:07 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 08/18] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WRBCAUNLEDNYNMERXVNMPEWO7M3N5IAM/>
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
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3584];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	NEURAL_HAM(-0.00)[-0.988];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mailbox.org:mid]
X-Rspamd-Queue-Id: 6EC204107B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI1LTExLTE3IGF0IDE2OjMyICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxMS8xMy8yNSAxNzoyMywgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+IE9uIFRo
dSwgMjAyNS0xMS0xMyBhdCAxNTo1MSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4g
PiA+IFVzaW5nIHRoZSBpbmxpbmUgbG9jayBpcyBub3cgdGhlIHJlY29tbWVuZGVkIHdheSBmb3Ig
ZG1hX2ZlbmNlDQo+ID4gPiBpbXBsZW1lbnRhdGlvbnMuDQo+ID4gPiANCj4gPiA+IFNvIHVzZSB0
aGlzIGFwcHJvYWNoIGZvciB0aGUgc2NoZWR1bGVyIGZlbmNlcyBhcyB3ZWxsIGp1c3QgaW4NCj4g
PiA+IGNhc2UgaWYNCj4gPiA+IGFueWJvZHkgdXNlcyB0aGlzIGFzIGJsdWVwcmludCBmb3IgaXRz
IG93biBpbXBsZW1lbnRhdGlvbi4NCj4gPiA+IA0KPiA+ID4gQWxzbyBzYXZlcyBhYm91dCA0IGJ5
dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQo+ID4gDQo+ID4gU28geW91IGNoYW5nZWQg
eW91ciBtaW5kIGFuZCB3YW50IHRvIGtlZXAgdGhpcyBwYXRjaD8NCj4gDQo+IEFjdHVhbGx5IGl0
IHdhcyB5b3Ugd2hvIGNoYW5nZWQgbXkgbWluZC4NCj4gDQo+IFdoZW4gd2Ugd2FudCB0byBkb2N1
bWVudCB0aGF0IHVzaW5nIHRoZSBpbnRlcm5hbCBsb2NrIGlzIG5vdyB0aGUgbm9ybQ0KPiBhbmQg
YWxsIGltcGxlbWVudGF0aW9ucyBzaG91bGQgc3dpdGNoIHRvIHRoYXQgaWYgcG9zc2libGUgd2Ug
c2hvdWxkDQo+IHB1c2ggYXMgbXVjaCBhcyBwb3NzaWJsZSBmb3IgdXNpbmcgdGhpcyBpbiB0aGUg
ZHJpdmVyIGNvbW1vbiBjb2RlIGFzDQo+IHdlbGwuDQoNCk1lbnRpb25pbmcgdGhhdCBpbiBhIGNo
YW5nZWxvZyB3b3VsZCBiZSBuZWF0LiBIb3cgaXMgYW55b25lIGVsc2UNCnN1cHBvc2VkIHRvIGtu
b3cgd2hldGhlciB5b3UgZm9yZ290IG9yIGNoYW5nZWQgeW91ciBtaW5kPw0KDQoNCkFuZCBoYXZl
IHlvdSB0ZXN0ZWQgdGhpcz8gS2VybmVsIGJ1aWxkIGJvdCBpcyBmaXJpbmcgd2FybmluZ3MuIEFu
ZA0KdG91Y2hpbmcgdGhlIHNjaGVkdWxlcidzIHNwaW5sb2NrcyBtYWtlcyBtZSBuZXJ2b3VzIGlu
IGdlbmVyYWwgPC48DQoNCg0KUC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
