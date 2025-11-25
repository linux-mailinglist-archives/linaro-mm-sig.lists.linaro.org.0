Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHE7FEIA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4E2410C7C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26E1E404EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:29:05 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id 283963F806
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 10:56:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=M3NlxZip;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dG04j1pT6z9sCb;
	Tue, 25 Nov 2025 11:56:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764068213; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+O5zZ+LqqrhBUh4ai6db4CiF8tuUSJP4/Ddj1attmxw=;
	b=M3NlxZipx3kGc+a1SZogWZCbG96ZLWsLB42MOUsyZckznRYvC3Axd6be59sVbLyU5C33G2
	JQUC8lOv5anaAOpYtMHrCHxdzp95XP6R6esRq0DxHfAr5EuW9/MLnbYvenGe5LeazcVvLW
	86vs9w0Az1gvrGLMLX77HgCSOCmKUE/7mlGUuPoc7U7JcO6CQWDWZaMtS+G6mhZxWohObr
	9yTEoPmelC6r9J20BuDWbOV4fAlD69Wmlp0qMgyzeEZL62Qyx46SuAadv3YtlLcnz3dHrR
	w/sWEivMLzz6BySkhLjz/bwsqKaMJrsqomwL/rgBkpebHTEwtEZVyxvoykMF1w==
Message-ID: <c2b571a7e74f86c6cb95bebd11274447c3080df9.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Tue, 25 Nov 2025 11:56:49 +0100
In-Reply-To: <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-2-christian.koenig@amd.com>
	 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
	 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
	 <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
	 <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 8e8338e975b5ed4736f
X-MBO-RS-META: jpuqkyws15mjiz69i1t7se4x1bg3xkbg
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7WO3N3YQA6UJ2UU2L4J2E4MOZSYJMYXF
X-Message-ID-Hash: 7WO3N3YQA6UJ2UU2L4J2E4MOZSYJMYXF
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:55 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7WO3N3YQA6UJ2UU2L4J2E4MOZSYJMYXF/>
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
	DATE_IN_PAST(1.00)[3412];
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
	FREEMAIL_TO(0.00)[amd.com,kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	NEURAL_HAM(-0.00)[-0.986];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1A4E2410C7C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI1LTExLTI1IGF0IDA5OjQ4ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxMS8yNS8yNSAwOToxMywgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+IE9uIFR1
ZSwgMjAyNS0xMS0yNSBhdCAwOTowMyArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4g
PiA+IE9uIDExLzI1LzI1IDA4OjU1LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4gPiA+ID4g
wqANCj4gPiA+ID4gPiANCg0KW+KApl0NCg0KPiA+ID4gPiANCj4gPiA+ID4gSFogY2FuIGNoYW5n
ZSBkZXBlbmRpbmcgb24gdGhlIGNvbmZpZy4gSXMgdGhhdCByZWFsbHkgYSBnb29kIGNob2ljZT8g
SQ0KPiA+ID4gPiBjb3VsZCBzZWUgcmFjeSBzaXR1YXRpb25zIGFyaXNpbmcgaW4gc29tZSBjb25m
aWdzIHZzIG90aGVycw0KPiA+ID4gDQo+ID4gPiAyKkhaIGlzIGFsd2F5cyB0d28gc2Vjb25kcyBl
eHByZXNzZWQgaW4gbnVtYmVyIG9mIGppZmZpZXMsIEkgY2FuIHVzZSBtc2Vjc190b19qaWZmaWVz
KDIwMDApIHRvIG1ha2UgdGhhdCBtb3JlIG9idmlvdXMuDQo+ID4gDQo+ID4gT24gQU1ENjQgbWF5
YmUuIFdoYXQgYWJvdXQgdGhlIG90aGVyIGFyY2hpdGVjdHVyZXM/DQo+IA0KPiBIWiBpcyBkZWZp
bmVkIGFzIGppZmZpZXMgcGVyIHNlY29uZCwgU28gZXZlbiBpZiBpdCBjaGFuZ2VzIHRvIDEwLDEw
MCBvciAxMDAwIGRlcGVuZGluZyBvbiB0aGUgYXJjaGl0ZWN0dXJlIDIqSFogaXMgYWx3YXlzIHR3
byBzZWNvbmRzIGV4cHJlc3NlZCBpbiBqaWZmaWVzLg0KPiANCj4gVGhlIEhaIGRlZmluZSBpcyBh
Y3R1YWxseSB0aGVyZSB0byBtYWtlIGl0IGFyY2hpdGVjdHVyZSBpbmRlcGVuZGVudC4NCg0KPGdl
cm1hbiBFbmdsaXNoPiBBZ2FpbiB3aGF0IGxlYXJuZWQgPC9nZXJtYW4gRW5sZ2lzaD4NCg0KQWx0
aG91Z2ggdGhlIGFtb3VudCBvZiBkb2N1bWVudGF0aW9uIGZvciBzdWNoIGEgY2VudHJhbCBmZWF0
dXJlIGlzIGENCmJpdCB0aGluLiBBbnl3YXlzLiBtc2Vjc190b19qaWZmaWVzKCkgaXMgbW9yZSBy
ZWFkYWJsZSwgeWVzLiBNYW55DQpkcml2ZXJzIHByZWZlciBpdCwgdG9vDQoNCg0KPiANCj4gPiA+
IA0KPiA+ID4gVGhlIEdQVSBzY2hlZHVsZXIgaGFzIGEgdmVyeSBzaW1pbGFyIGRlZmluZSwgTUFY
X1dBSVRfU0NIRURfRU5USVRZX1FfRU1QVFkgd2hpY2ggaXMgY3VycmVudGx5IGp1c3QgMSBzZWNv
bmQuDQo+ID4gPiANCj4gPiA+IFRoZSByZWFsIHF1ZXN0aW9uIGlzIHdoYXQgaXMgdGhlIG1heGlt
dW0gYW1vdW50IG9mIHRpbWUgd2UgY2FuIHdhaXQgZm9yIHRoZSBIVyBiZWZvcmUgd2Ugc2hvdWxk
IHRyaWdnZXIgYSB0aW1lb3V0Pw0KPiA+IA0KPiA+IFRoYXQncyBhIHF1ZXN0aW9uIG9ubHkgdGhl
IGRyaXZlcnMgY2FuIGFuc3dlciwgd2hpY2ggaXMgd2h5IEkgbGlrZSB0bw0KPiA+IHRoaW5rIHRo
YXQgc2V0dGluZyBnbG9iYWwgY29uc3RhbnRzIGNvbnN0cmFpbmluZyBhbGwgcGFydGllcyBpcyBu
b3QgdGhlDQo+ID4gcmlnaHQgdGhpbmcgdG8gZG8uDQo+IA0KPiBFeGFjdGx5IHRoYXQncyB0aGUg
cmVhc29uIHdoeSBJIGJyaW5nIHRoYXQgdXAuIEkgdGhpbmsgdGhhdCBkcml2ZXJzIHNob3VsZCBi
ZSBpbiBjaGFyZ2Ugb2YgdGltZW91dHMgaXMgdGhlIHdyb25nIGFwcHJvYWNoLg0KPiANCj4gU2Vl
IHRoZSByZWFzb24gd2h5IHdlIGhhdmUgdGhlIHRpbWVvdXQgKGFuZCBkb2N1bWVudGVkIHRoYXQg
aXQgaXMgYSBtdXN0IGhhdmUpIGlzIGJlY2F1c2Ugd2UgaGF2ZSBib3RoIGNvcmUgbWVtb3J5IG1h
bmFnZW1lbnQgYXMgd2VsbCBhIGRlc2t0b3AgcmVzcG9uc2l2ZW5lc3MgZGVwZW5kIG9uIGl0Lg0K
DQpHb29kIGFuZCB3ZWxsLCBidXQgdGhlbiBwYXRjaCA0IGJlY29tZXMgZXZlbiBtb3JlIHByb2Js
ZW1hdGljOg0KDQpTbyB3ZSdkIGp1c3QgaGF2ZSBkcml2ZXJzIGZpcmUgd2FybmluZ3MsIGFuZCB0
aGVuIHRoZXkgd291bGQgc3RpbGwgaGF2ZQ0KdGhlIGZyZWVkb20gdG8gc2V0IHRpbWVvdXRzIGZv
ciBkcm0vc2NoZWQsIGFzIGxvbmcgYXMgdGhvc2UgdGltZW91dHMNCmFyZSBzbWFsbGVyIHRoYW4g
eW91ciBuZXcgZ2xvYmFsIGNvbnN0YW50Lg0KDQpXaHkgdGhlbiBub3QgcmVtb3ZlIGRybS9zY2hl
ZCdzIHRpbWVvdXQgcGFyYW1ldGVyIEFQSSBjb21wbGV0ZWx5IGFuZA0KYWx3YXlzIHVzZSB5b3Vy
IG1heGltdW0gdmFsdWUgaW50ZXJuYWxseSBpbiBkcm0vc2NoZWQ/IE9yIG1heWJlDQp0cnVuY2F0
ZSBpdCB3aXRoIGEgd2FybmluZz8NCg0KIk1heGltdW0gdGltZW91dCBwYXJhbWV0ZXIgZXhjZWVk
ZWQsIHRydW5jYXRpbmcgdG8gJWxkLlxuIg0KDQpJIHN1cHBvc2Ugc29tZSBkcml2ZXJzIHdhbnQg
ZXZlbiBoaWdoZXIgcmVzcG9uc2l2ZW5lc3MgdGhhbiB0aG9zZSAyDQpzZWNvbmRzLg0KDQpJIGRv
IGJlbGlldmUgdGhhdCBtb3JlIG9mIHRoZSBkcml2ZXIgZm9sa3Mgc2hvdWxkIGJlIG1hZGUgYXdh
cmUgb2YgdGhpcw0KaW50ZW5kZWQgY2hhbmdlLg0KDQo+IA0KPiA+IFdoYXQgaXMgZXZlbiB5b3Vy
IG1vdGl2YXRpb24/IFdoYXQgcHJvYmxlbSBkb2VzIHRoaXMgc29sdmU/IElzIHRoZSBPT00NCj4g
PiBraWxsZXIgY3VycmVudGx5IGhhbmdpbmcgZm9yIGFueW9uZT8gQ2FuIHlvdSBsaW5rIGEgYnVn
IHJlcG9ydD8NCj4gDQo+IEknbSBub3Qgc3VyZSBpZiB3ZSBoYXZlIGFuIGV4dGVybmFsIGJ1ZyBy
ZXBvcnQgKHdlIGhhdmUgYW4gaW50ZXJuYWwgb25lKSwgYnV0IGZvciBhbWRncHUgdGhlcmUgd2Vy
ZSBjdXN0b21lciBjb21wbGFpbnMgdGhhdCAxMCBzZWNvbmRzIGlzIHRvIGxvbmcuDQo+IA0KPiBT
byB3ZSBjaGFuZ2VkIGl0IHRvIDIgc2Vjb25kcyBmb3IgYW1kZ3B1LCBhbmQgbm93IHRoZXJlIGFy
ZSBjb21wbGFpbnMgZnJvbSBpbnRlcm5hbCBBTUQgdGVhbXMgdGhhdCAyIHNlY29uZHMgaXMgdG8g
c2hvcnQuDQo+IA0KPiBXaGlsZSB3b3JraW5nIG9uIHRoYXQgSSByZWFsaXplZCB0aGF0IHRoZSB0
aW1lb3V0IGlzIGFjdHVhbGx5IG5vdCBkcml2ZXIgZGVwZW5kZW50IGF0IGFsbC4NCj4gDQo+IFdo
YXQgY2FuIG1heWJlIGFyZ3VlZCBpcyB0aGF0IGEgZGVza3RvcCBzeXN0ZW0gc2hvdWxkIGhhdmUg
YSBzaG9ydGVyIHRpbWVvdXQgdGhhbiBzb21lIHNlcnZlciwgYnV0IHRoYXQgb25lIGRyaXZlciBu
ZWVkcyBhIGRpZmZlcmVudCB0aW1lb3V0IHRoYW4gYW5vdGhlciBkcml2ZXIgZG9lc24ndCByZWFs
bHkgbWFrZXMgc2Vuc2UgdG8gbWUuDQo+IA0KPiBJIG1lYW4gd2hhdCBpcyBhY3R1YWxseSBIVyBk
ZXBlbmRlbnQgb24gdGhlIHJlcXVpcmVtZW50IHRoYXQgSSBuZWVkIGEgcmVzcG9uc2l2ZSBkZXNr
dG9wIHN5c3RlbT8NCg0KSSBzdXBwb3NlIHNvbWUgZHJpdmVycyBhcmUgaW5kZWVkIG9ubHkgdXNl
ZCBmb3Igc2VydmVyIGhhcmR3YXJlLiBBbmQNCmZvciBjb21wdXRlIHlvdSBtaWdodCBub3QgY2Fy
ZSBhYm91dCByZXNwb25zaXZlbmVzcyBhcyBsb25nIGFzIHlvdXINCnJlc3VsdCBkcm9wcyBvZmYg
YXQgc29tZSBwb2ludC4gQnV0IHRoZXJlJ3MgY2xvdWQgZ2FtaW5nLCB0b28uLg0KDQpJIGFncmVl
IHRoYXQgZGlzdGluZ3Vpc2hpbmcgdGhlIHVzZSBjYXNlIHRoYXQgd2F5IGlzIG5vdCBpZGVhbC4N
Ckhvd2V2ZXIsIHdobyBoYXMgdGhlIGtub3dsZWRnZSBvZiBob3cgdGhlIGhhcmR3YXJlIGlzIGJl
aW5nIHVzZWQgYnkNCmN1c3RvbWVycyAvIHVzZXJzLCBpZiBub3QgdGhlIGRyaXZlcj8NCg0KDQpQ
Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
