Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNqmKjkA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B518410C75
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 786DA40969
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:28:56 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 077B23F76E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 08:13:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=VU0Tnnas;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dFwSY13Y4z9stq;
	Tue, 25 Nov 2025 09:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764058429; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5DTyfjOQLlqZtEXU84+xhptlPYxXJdG6pHm5CHYR47I=;
	b=VU0TnnasyfJHZJA0H6JLleUSqwwMw1HIGJ4pp/G0Om8mt7NgooJdnNuHsH1VVoPlpMe7WS
	29EPgd8D5VBAwSrjFMg4qYsjERgS4bSzWVGIEPPLOZJQ6FdAieIDYunWlqjhwRCUQWZRXc
	2gv4zXbgll0iETv30P1pZz9TUCqOrgJ//eFN+vcbQS++S+vafxqc5uVKr7cg/MKLqNACXA
	tRNGWxLDYlf8vR/nWtU9Tw7jh9zNIkjBd9veEAsAr3W6Epu9Hf2mlpF/BEQGSS2wUka1Ee
	hw8CKcCSNHCgW+ylWRL+Ql2tBP+y0oKaJW8AU0AJW+SG8RVud6aHR+E+lUedkA==
Message-ID: <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Tue, 25 Nov 2025 09:13:45 +0100
In-Reply-To: <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-2-christian.koenig@amd.com>
	 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
	 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: uoy7696snxohobny3j5j35jjpiz6apoo
X-MBO-RS-ID: b616c6980f2dea44785
X-Spamd-Bar: -
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CAI37QXQJO3AGXNHC3PSR4T6PS7ZSAZE
X-Message-ID-Hash: CAI37QXQJO3AGXNHC3PSR4T6PS7ZSAZE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:55 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CAI37QXQJO3AGXNHC3PSR4T6PS7ZSAZE/>
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
	DATE_IN_PAST(1.00)[3415];
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
	NEURAL_HAM(-0.00)[-0.988];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 6B518410C75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI1LTExLTI1IGF0IDA5OjAzICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxMS8yNS8yNSAwODo1NSwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+ID4gwqAN
Cj4gPiA+ICsvKioNCj4gPiA+ICsgKiBkZWZpbmUgRE1BX0ZFTkNFX01BWF9SRUFTT05BQkxFX1RJ
TUVPVVQgLSBtYXggcmVhc29uYWJsZSBzaWduYWxpbmcgdGltZW91dA0KPiA+ID4gKyAqDQo+ID4g
PiArICogVGhlIGRtYV9mZW5jZSBvYmplY3QgaGFzIGEgZGVlcCBpbnRlciBkZXBlbmRlbmN5IHdp
dGggY29yZSBtZW1vcnkNCj4gPiA+ICsgKiBtYW5hZ2VtZW50LCBmb3IgYSBkZXRhaWxlZCBleHBs
YW5hdGlvbiBzZWUgc2VjdGlvbiBETUEgRmVuY2VzIHVuZGVyDQo+ID4gPiArICogRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0Lg0KPiA+ID4gKyAqDQo+ID4gPiArICogQmVjYXVz
ZSBvZiB0aGlzIGFsbCBkbWFfZmVuY2UgaW1wbGVtZW50YXRpb25zIG11c3QgZ3VhcmFudGVlIHRo
YXQgZWFjaCBmZW5jZQ0KPiA+ID4gKyAqIGNvbXBsZXRlcyBpbiBhIGZpbml0ZSB0aW1lLiBUaGlz
IGRlZmluZSBoZXJlIG5vdyBnaXZlcyBhIHJlYXNvbmFibGUgdmFsdWUgZm9yDQo+ID4gPiArICog
dGhlIHRpbWVvdXQgdG8gdXNlLiBJdCBpcyBwb3NzaWJsZSB0byB1c2UgYSBsb25nZXIgdGltZW91
dCBpbiBhbg0KPiA+ID4gKyAqIGltcGxlbWVudGF0aW9uIGJ1dCB0aGF0IHNob3VsZCB0YWludCB0
aGUga2VybmVsLg0KPiA+ID4gKyAqLw0KPiA+ID4gKyNkZWZpbmUgRE1BX0ZFTkNFX01BWF9SRUFT
T05BQkxFX1RJTUVPVVQgKDIqSFopDQo+ID4gDQo+ID4gSFogY2FuIGNoYW5nZSBkZXBlbmRpbmcg
b24gdGhlIGNvbmZpZy4gSXMgdGhhdCByZWFsbHkgYSBnb29kIGNob2ljZT8gSQ0KPiA+IGNvdWxk
IHNlZSByYWN5IHNpdHVhdGlvbnMgYXJpc2luZyBpbiBzb21lIGNvbmZpZ3MgdnMgb3RoZXJzDQo+
IA0KPiAyKkhaIGlzIGFsd2F5cyB0d28gc2Vjb25kcyBleHByZXNzZWQgaW4gbnVtYmVyIG9mIGpp
ZmZpZXMsIEkgY2FuIHVzZSBtc2Vjc190b19qaWZmaWVzKDIwMDApIHRvIG1ha2UgdGhhdCBtb3Jl
IG9idmlvdXMuDQoNCk9uIEFNRDY0IG1heWJlLiBXaGF0IGFib3V0IHRoZSBvdGhlciBhcmNoaXRl
Y3R1cmVzPw0KDQo+IA0KPiBUaGUgR1BVIHNjaGVkdWxlciBoYXMgYSB2ZXJ5IHNpbWlsYXIgZGVm
aW5lLCBNQVhfV0FJVF9TQ0hFRF9FTlRJVFlfUV9FTVBUWSB3aGljaCBpcyBjdXJyZW50bHkganVz
dCAxIHNlY29uZC4NCj4gDQo+IFRoZSByZWFsIHF1ZXN0aW9uIGlzIHdoYXQgaXMgdGhlIG1heGlt
dW0gYW1vdW50IG9mIHRpbWUgd2UgY2FuIHdhaXQgZm9yIHRoZSBIVyBiZWZvcmUgd2Ugc2hvdWxk
IHRyaWdnZXIgYSB0aW1lb3V0Pw0KDQpUaGF0J3MgYSBxdWVzdGlvbiBvbmx5IHRoZSBkcml2ZXJz
IGNhbiBhbnN3ZXIsIHdoaWNoIGlzIHdoeSBJIGxpa2UgdG8NCnRoaW5rIHRoYXQgc2V0dGluZyBn
bG9iYWwgY29uc3RhbnRzIGNvbnN0cmFpbmluZyBhbGwgcGFydGllcyBpcyBub3QgdGhlDQpyaWdo
dCB0aGluZyB0byBkby4NCg0KV2hhdCBpcyBldmVuIHlvdXIgbW90aXZhdGlvbj8gV2hhdCBwcm9i
bGVtIGRvZXMgdGhpcyBzb2x2ZT8gSXMgdGhlIE9PTQ0Ka2lsbGVyIGN1cnJlbnRseSBoYW5naW5n
IGZvciBhbnlvbmU/IENhbiB5b3UgbGluayBhIGJ1ZyByZXBvcnQ/DQoNCj4gDQo+IFNvbWUgQU1E
IGludGVybmFsIHRlYW0gaXMgcHVzaGluZyBmb3IgMTAgc2Vjb25kcywgYnV0IHRoYXQgYWxzbyBt
ZWFucyB0aGF0IGZvciBleGFtcGxlIHdlIHdhaXQgMTAgc2Vjb25kcyBmb3IgdGhlIE9PTSBraWxs
ZXIgdG8gZG8gc29tZXRoaW5nLiBUaGF0IHNvdW5kcyBsaWtlIHdheSB0byBsb25nLg0KPiANCg0K
Tm91dmVhdSBoYXMgdGltZW91dCA9IDEwIHNlY29uZHMuIEFGQUlLIHdlJ3ZlIG5ldmVyIHNlZW4g
YnVncyBiZWNhdXNlDQpvZiB0aGF0LiBIYXZlIHlvdSBzZWVuIHNvbWU/DQoNCg0KUC4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
