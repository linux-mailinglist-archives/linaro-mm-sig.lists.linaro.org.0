Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELeaDIAA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E087E410CE9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3ED9434CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:30:06 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 221943F7A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 12:37:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=UTsTz0LB;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dGfGG15tlz9sxb;
	Wed, 26 Nov 2025 13:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764160646; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XTqvEmDLXDWaVJsy42dF2/13XtKO/BqCr4Q3wJ/2+zk=;
	b=UTsTz0LB3fPPb1pdo0H+ZA2PtJmWwrixoKEk4LQLRGjjib7ugHXCNcywF2px2sJ2wStBu4
	iJbUCEIaBCYXvD/QeZKzjpIHvGWvDCkY+83LOu2V1Ilq6fqAYqW2JCttj8Jf/NlGxzRkfr
	32HDGc0VyCIvdz/Uldhme7bN7S4qBnPn3Sz98ZkmG8L+dRr3QZA4qw3GuOUA2CIS0CBJlH
	Oc/3Iin171AmfePQJ9Gz/yFbGFwhBiibDW381Wy92iPafOTiEO/gdlFDXFIMU2h6cM36u3
	qvS2U3/L3DvInWM9Dfk9DcCi0xr0IOvK2ZZLigzfYk7rzQiQKd6kY/esoenc0A==
Message-ID: <54d6e863fc606d22f245e30012bb5120d5bee7ee.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lucas
 Stach <l.stach@pengutronix.de>, phasta@kernel.org, alexdeucher@gmail.com,
	simona.vetter@ffwll.ch, faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Wed, 26 Nov 2025 13:37:19 +0100
In-Reply-To: <207d50fe-eef3-4baa-97a7-567598e56b55@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-2-christian.koenig@amd.com>
	 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
	 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
	 <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
	 <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
	 <c2b571a7e74f86c6cb95bebd11274447c3080df9.camel@mailbox.org>
	 <52d484c5-6dfb-4e2f-9caa-a61cf1d94801@amd.com>
	 <e2c006ca81081ee1afa00b1b52a035c28a267e0f.camel@pengutronix.de>
	 <207d50fe-eef3-4baa-97a7-567598e56b55@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 5b026a59b27b9369507
X-MBO-RS-META: 1wt699yqo3ojb57bdc5grummqbbk5w5w
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H2MIDR2ZR3GUFFGBCBUFQQ3N33VYMWH2
X-Message-ID-Hash: H2MIDR2ZR3GUFFGBCBUFQQ3N33VYMWH2
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:01 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H2MIDR2ZR3GUFFGBCBUFQQ3N33VYMWH2/>
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
	DATE_IN_PAST(1.00)[3386];
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
	FREEMAIL_TO(0.00)[amd.com,pengutronix.de,kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	NEURAL_HAM(-0.00)[-0.988];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mailbox.org:mid]
X-Rspamd-Queue-Id: E087E410CE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI1LTExLTI2IGF0IDEzOjMxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxMS8yNS8yNSAxODowMiwgTHVjYXMgU3RhY2ggd3JvdGU6DQo+ID4gPiA+IEkgYWdy
ZWUgdGhhdCBkaXN0aW5ndWlzaGluZyB0aGUgdXNlIGNhc2UgdGhhdCB3YXkgaXMgbm90IGlkZWFs
Lg0KPiA+ID4gPiBIb3dldmVyLCB3aG8gaGFzIHRoZSBrbm93bGVkZ2Ugb2YgaG93IHRoZSBoYXJk
d2FyZSBpcyBiZWluZyB1c2VkIGJ5DQo+ID4gPiA+IGN1c3RvbWVycyAvIHVzZXJzLCBpZiBub3Qg
dGhlIGRyaXZlcj8NCj4gPiA+IA0KPiA+ID4gV2VsbCB0aGUgZW5kIHVzZXIuDQo+ID4gPiANCj4g
PiA+IE1heWJlIHdlIHNob3VsZCBtb3ZlIHRoZSB3aG9sZSB0aW1lb3V0IHRvcGljIGludG8gdGhl
IERSTSBsYXllciBvciB0aGUgc2NoZWR1bGVyIGNvbXBvbmVudC4NCj4gPiA+IA0KPiA+ID4gU29t
ZXRoaW5nIGxpa2UgMiBzZWNvbmRzIGRlZmF1bHQgKHdoaWNoIEJUVyBpcyB0aGUgZGVmYXVsdCBv
biBXaW5kb3dzIGFzIHdlbGwpLCB3aGljaCBjYW4gYmUgb3ZlcnJpZGRlbiBvbiBhIGdsb2JhbCwg
cGVyIGRldmljZSwgcGVyIHF1ZXVlIG5hbWUgYmFzaXMuDQo+ID4gPiANCj4gPiA+IEFuZCAxMCBz
ZWNvbmRzIG1heGltdW0gd2l0aCBvbmx5IGEgd2FybmluZyB0aGF0IGEgbm90IGRlZmF1bHQgdGlt
ZW91dCBpcyB1c2VkIGFuZCBldmVyeXRoaW5nIGFib3ZlIDEwIHNlY29uZHMgdGFpbnRzIHRoZSBr
ZXJuZWwgYW5kIHNob3VsZCByZWFsbHkgb25seSBiZSB1c2VkIGZvciB0ZXN0aW5nL2RlYnVnZ2lu
Zy4NCj4gPiANCj4gPiBUaGUgcXVlc3Rpb24gcmVhbGx5IGlzIHdoYXQgeW91IHdhbnQgdG8gZG8g
YWZ0ZXIgeW91IGhpdCB0aGUgKGxvd2VyZWQpDQo+ID4gdGltZW91dD8gVXNlcnMgZ2V0IGdydW1w
eSBpZiB5b3UgYmxvY2sgdGhpbmdzIGZvciAxMCBzZWNvbmRzLCBidXQgdGhleQ0KPiA+IGdldCBl
cXVhbGx5IGlmIG5vdCBtb3JlIGdydW1weSB3aGVuIHlvdSBraWNrIG91dCBhIHZhbGlkIHdvcmts
b2FkIHRoYXQNCj4gPiBqdXN0IGhhcHBlbnMgdG8gbmVlZCBhIGxvdCBvZiBHUFUgdGltZS4NCj4g
DQo+IFllYWgsIGV4YWN0bHkgdGhhdCBzdW1tYXJpemVzIHRoZSBwcm9ibGVtIHByZXR0eSB3ZWxs
Lg0KPiANCj4gPiBGZW5jZXMgYXJlIG9ubHkgZGVmaW5lZCB0byBzaWduYWwgZXZlbnR1YWxseSwg
d2l0aCBubyByZWFsIGNvbmNlcHQgb2YgYQ0KPiA+IHRpbWVvdXQuIElNTyBhbGwgdGltZW91dHMg
d2FpdGluZyBmb3IgZmVuY2VzIHNob3VsZCBiZSBsb25nIGVub3VnaCB0bw0KPiA+IG9ubHkgYmUg
Y29uc2lkZXJlZCBsYXN0IHJlc29ydC4gWW91IG1heSB3YW50IHRvIGdpdmUgdGhlIHVzZXIgc29t
ZQ0KPiA+IGluZGljYXRpb24gb2YgYSBmYWlsZWQgZmVuY2Ugd2FpdCBpbnN0ZWFkIG9mIHN0YWxs
aW5nIGluZGVmaW5pdGVseSwgYnV0DQo+ID4geW91IHJlYWxseSBvbmx5IHdhbnQgdG8gZG8gdGhp
cyBhZnRlciBhIHF1aXRlIGxvbmcgdGltZW91dCwgbm90IGluIGENCj4gPiBzZW5zZSBvZiAiU29y
cnksIEkgcmFuIG91dCBvZiBwYXRpZW5jZSBhZnRlciAyIHNlY29uZHMiLg0KPiA+IA0KPiA+IFN1
cmUgbWVtb3J5IG1hbmFnZW1lbnQgZGVwZW5kcyBvbiBmZW5jZXMgbWFraW5nIGZvcndhcmQgcHJv
Z3Jlc3MsIGJ1dA0KPiA+IG1tIGFsc28gZGVwZW5kcyBvbiBzY2hlZHVsZWQgd3JpdGViYWNrIG1h
a2luZyBmb3J3YXJkIHByb2dyZXNzLiBZb3UNCj4gPiBkb24ndCBraWNrIG91dCB3cml0ZWJhY2sg
cmVxdWVzdHMgYWZ0ZXIgYW4gYXJiaXRyYXJ5IHRpbWVvdXQganVzdA0KPiA+IGJlY2F1c2UgdGhl
IGJhY2tpbmcgc3RvcmFnZSBoYXBwZW5zIHRvIGJlIGxvYWRlZCBoZWF2aWx5Lg0KPiA+IA0KPiA+
IFRoaXMgQlRXIGlzIGFsc28gd2h5IGV0bmF2aXYgaGFzIGFsd2F5cyBoYWQgYSBxdWl0ZSBzaG9y
dCB0aW1lb3V0IG9mDQo+ID4gNTAwbXMsIHdpdGggdGhlIG9wdGlvbiB0byBleHRlbmQgdGhlIHRp
bWVvdXQgd2hlbiB0aGUgR1BVIGlzIHN0aWxsDQo+ID4gbWFraW5nIHByb2dyZXNzLiBXZSBkb24n
dCBldmVyIHdhbnQgdG8gc2hvb3QgZG93biB2YWxpZCB3b3JrbG9hZHMgKHdlDQo+ID4gaGF2ZSBz
b21lIHRoYXQgbmVlZCBhIGZldyBzZWNvbmRzIHRvIHVwbG9hZCB0ZXh0dXJlcywgZXRjIG9uIG91
ciB3aW1weQ0KPiA+IEdQVSksIGJ1dCB5b3UgYWxzbyBkb24ndCB3YW50IHRvIHdhaXQgbXVsdGlw
bGUgc2Vjb25kcyB1bnRpbCB5b3UgZGV0ZWN0DQo+ID4gYSByZWFsIEdQVSBoYW5nLg0KPiANCj4g
VGhhdCBpcyBhIHJlYWxseSBnb29kIHBvaW50LiBXZSBjb25zaWRlcmVkIHRoYXQgYXMgd2VsbCwg
YnV0IHRoZW4gYWJhbmRvbmVkIHRoZSBpZGVhLCBzZWUgYmVsb3cgZm9yIHRoZSBiYWNrZ3JvdW5k
Lg0KPiANCj4gV2hhdCB3ZSBjb3VsZCBhbHNvIGRvIGlzIHNldHRpbmcgYSBmbGFnIG9uIHRoZSBm
ZW5jZSB3aGVuIGEgcHJvY2VzcyBpcyBraWxsZWQgYW5kIHRoZW4gd2FpdGluZyBmb3IgdGhhdCBm
ZW5jZSB0byBzaWduYWwgc28gdGhhdCBpdCBjYW4gY2xlYW4gdXAuIEdvaW5nIHRvIHByb3RvdHlw
ZSB0aGF0Lg0KPiANCj4gPiBTbyB3ZSB1c2UgdGhlIHNob3J0IHNjaGVkdWxlciB0aW1lb3V0IHRv
IGNoZWNrIGluIG9uIHRoZSBHUFUgYW5kIHNlZSBpZg0KPiA+IGl0IGlzIHN0aWxsIG1ha2luZyBw
cm9ncmVzcyAoZm9yIGdyYXBoaWNzIHdvcmtsb2FkcyBieSBsb29raW5nIGF0IHRoZQ0KPiA+IGZy
b250ZW5kIHBvc2l0aW9uIHdpdGhpbiB0aGUgY29tbWFuZCBidWZmZXIgYW5kIGN1cnJlbnQgcHJp
bWl0aXZlIElEKS4NCj4gPiBJZiB3ZSBjYW4gZGVkdWNlIHRoYXQgdGhlIEdQVSBpcyBzdHVjayB3
ZSBkbyB0aGUgdXN1YWwgcmVzZXQvcmVjb3ZlcnkNCj4gPiBkYW5jZSB3aXRoaW4gYSByZWFzb25h
YmxlIHJlYWN0aW9uIHRpbWUsIGFjY2VwdGFibGUgdG8gdXNlcnMgaGl0dGluZyBhDQo+ID4gcmVh
bCBHUFUgaGFuZy4gQnV0IGlmIHRoZSBHUFUgaXMgbWFraW5nIHByb2dyZXNzIHdlIHdpbGwgZ2l2
ZSBhbg0KPiA+IGluZmluaXRlIG51bWJlciBvZiB0aW1lb3V0IGV4dGVuc2lvbnMgd2l0aCBubyBn
bG9iYWwgdGltZW91dCBhdCBhbGwsDQo+ID4gb25seSBmdWxmaWxsaW5nIHRoZSBldmVudHVhbCBz
aWduYWxpbmcgZ3VhcmFudGVlIG9mIHRoZSBmZW5jZS4NCj4gDQo+IFdlbGwgdGhlIHF1ZXN0aW9u
IGlzIGhvdyBkbyB5b3UgZGV0ZWN0ICpyZWxpYWJsZSogdGhhdCB0aGVyZSBpcyBzdGlsbCBmb3J3
YXJkIHByb2dyZXNzPw0KDQpNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgdGhhdCdzIGltcG9zc2li
bGUgc2luY2UgdGhlIGludGVybmFscyBvZg0KY29tbWFuZCBzdWJtaXNzaW9ucyBhcmUgb25seSBy
ZWFsbHkgdW5kZXJzdG9vZCBieSB1c2Vyc3BhY2UsIHdobw0Kc3VibWl0cyB0aGVtLg0KDQpJIHRo
aW5rIHRoZSBsb25nLXRlcm0gc29sdXRpb24gY2FuIG9ubHkgYmUgZnVsbHkgZmxlZGdlZCBHUFUg
c2NoZWR1bGluZw0Kd2l0aCBwcmVlbXB0aW9uLiBUaGF0J3Mgd2h5IHdlIGRvbid0IG5lZWQgc3Vj
aCBhIHRpbWVvdXQgbWVjaGFuaXNtIGZvcg0KdXNlcnNwYWNlIHByb2Nlc3NlczogdGhlIHNjaGVk
dWxlciBzaW1wbHkgaW50ZXJydXB0cyBhbmQgbGV0cyBzb21lb25lDQplbHNlIHJ1bi4NCg0KTXkg
aG9wZSB3b3VsZCBiZSB0aGF0IGluIHRoZSBtaWQtdGVybSBmdXR1cmUgd2UnZCBnZXQgZmlybXdh
cmUgcmluZ3MNCnRoYXQgY2FuIGJlIHByZWVtcHRlZCB0aHJvdWdoIGEgZmlybXdhcmUgY2FsbCBm
b3IgYWxsIG1ham9yIGhhcmR3YXJlLg0KVGhlbiBhIGh1Z2Ugc2hhcmUgb2Ygb3VyIHByb2JsZW1z
IHdvdWxkIGRpc2FwcGVhci4NCg0KDQpXaXRoIHRoZSBjdXJyZW50IHNpdHVhdGlvbiwgSURLIGVp
dGhlci4gTXkgaW1wcmVzc2lvbiBzbyBmYXIgaXMgdGhhdA0KbGV0dGluZyB0aGUgZHJpdmVycyBh
bmQgZHJpdmVyIHByb2dyYW1tZXJzIGRlY2lkZSBpcyB0aGUgbGVhc3QgYmFkDQpjaG9pY2UuDQoN
Cg0KUC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
