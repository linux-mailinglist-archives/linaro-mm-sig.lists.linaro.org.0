Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JPGvEfgXQmpW0AkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 09:00:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6B96D6A9E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 09:00:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=OpZpETnl;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1826A40A8A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 07:00:06 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 91BAD3F78F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 06:59:54 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4gpcbW4kVfz9tv4;
	Mon, 29 Jun 2026 08:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782716391; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3hbzEnZLAxVe7ov2oMC76sAGhhFWZLnsRyY/MSpvDoM=;
	b=OpZpETnl2QbkF2dT5mnB5Yni7iy5P50niEkB/W2TSRxOOM32j7izTnQjyiENXcbK26PltS
	v3NslQjcrwoKez3ZUrZeKNsdYHpJHIyjJ/W/Yo0Bmqa5kWhPS3uachHQX+TLXQMJ4mLHI9
	Nm6hQ4d3/UPJEIxR56wmEXB4WubGN9NYpyDKIQq6m5x28UeyHv2dLCXaiKWeywrWktbL5K
	OQOuuge2wOLZ9QiSbbvZ2p3dfhWJDa7/lqSexq1rdxFq1+2mt40I5JgScnzON9FQ1TLjxb
	qiTOtHvA+Jgak4v64ATZwUhVlPVFSugA0cHre/RSPjKxRu3SQNTIjPILaeL/BA==
Message-ID: <e5b833e4c3764efa84f57e1b9691b946e0d3b1cd.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Baineng Shou <shoubaineng@gmail.com>, Sumit Semwal
 <sumit.semwal@linaro.org>,  Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>
Date: Mon, 29 Jun 2026 08:59:47 +0200
In-Reply-To: <20260629031346.3875683-1-shoubaineng@gmail.com>
References: <20260629031346.3875683-1-shoubaineng@gmail.com>
MIME-Version: 1.0
X-MBO-RS-META: bbk6f6twdq8kmn36mzidwpfnhkk5qc61
X-MBO-RS-ID: 236d4085a3bc31e8aaf
X-Spamd-Bar: ----
Message-ID-Hash: DUIAF4SCIQSJMZJ4PUGRMWQBQT7SN4BO
X-Message-ID-Hash: DUIAF4SCIQSJMZJ4PUGRMWQBQT7SN4BO
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Philipp Stanner <phasta@kernel.org>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DUIAF4SCIQSJMZJ4PUGRMWQBQT7SN4BO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tursulin@ursulin.net,m:phasta@kernel.org,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,amd.com];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C6B96D6A9E

T24gTW9uLCAyMDI2LTA2LTI5IGF0IDExOjEzICswODAwLCBCYWluZW5nIFNob3Ugd3JvdGU6DQo+
IGRtYV9mZW5jZV9kZWR1cF9hcnJheSgpIHJldHVybnMgMSB3aGVuIGNhbGxlZCB3aXRoIG51bV9m
ZW5jZXMgPT0gMDoNCj4gdGhlIGZvci1sb29wIGJvZHkgbmV2ZXIgZXhlY3V0ZXMsIGogc3RheXMg
YXQgMCwgYW5kIHRoZSBmaW5hbA0KPiBgcmV0dXJuICsramAgeWllbGRzIDEuIFRoaXMgY29udHJh
ZGljdHMgYm90aCB0aGUga2VybmVsLWRvYyAoIlJldHVybjoNCj4gTnVtYmVyIG9mIHVuaXF1ZSBm
ZW5jZXMgcmVtYWluaW5nIGluIHRoZSBhcnJheSIpIGFuZCB0aGUgbmF0dXJhbA0KPiBleHBlY3Rh
dGlvbiB0aGF0IDAgaW5wdXQgZ2l2ZXMgMCBvdXRwdXQuDQo+IA0KPiBBbGwgaW4tdHJlZSBjYWxs
ZXJzIGN1cnJlbnRseSBmaWx0ZXIgbnVtX2ZlbmNlcyA9PSAwIGJlZm9yZSBpbnZva2luZw0KPiB0
aGlzIGhlbHBlciAoX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKCkgYmFpbHMgb3V0IHZpYSB0aGUN
Cj4gYGlmIChjb3VudCA9PSAwIHx8IGNvdW50ID09IDEpYCBmYXN0IHBhdGg7IGFtZGdwdV91c2Vy
cV93YWl0XyooKQ0KPiBjYW5ub3QgcmVhY2ggdGhlIGRlZHVwIGNhbGwgd2l0aCBhIHplcm8gbG9j
YWwgY291bnQgYmVjYXVzZSB0aGUNCj4gYW1kZ3B1X3VzZXJxX3dhaXRfYWRkX2ZlbmNlKCkgaGVs
cGVyIGd1YXJhbnRlZXMgbnVtX2ZlbmNlcyBzdGF5cyBpbg0KPiBbMCwgd2FpdF9pbmZvLT5udW1f
ZmVuY2VzXSwgYW5kIHdhaXRfaW5mby0+bnVtX2ZlbmNlcyA+IDAgaXMgZW5mb3JjZWQNCj4gYXQg
dGhlIGlvY3RsIGVudHJ5KS4NCj4gDQo+IEhvd2V2ZXIsIGRtYV9mZW5jZV9kZWR1cF9hcnJheSgp
IGlzIEVYUE9SVF9TWU1CT0xfR1BMLCBzbyBhbnkgZnV0dXJlDQo+IGNhbGxlciB0aGF0IGZvcmdl
dHMgdG8gcHJlLWZpbHRlciB0aGUgemVybyBjYXNlIHdpbGwgZ2V0IGEgbWlzbGVhZGluZw0KPiBy
ZXR1cm4gdmFsdWUgb2YgMS4gRGVwZW5kaW5nIG9uIGhvdyB0aGF0IGNhbGxlciB1c2VzIHRoZSBy
ZXN1bHQsIGl0DQo+IGNvdWxkIGRlcmVmZXJlbmNlIGFuIHVuaW5pdGlhbGl6ZWQgZmVuY2Ugc2xv
dCBpbiB0aGUgYXJyYXksIHNpbmNlIHRoZQ0KPiBjYWxsZXIncyBhcnJheSBtYXkgaGF2ZSBiZWVu
IGFsbG9jYXRlZCBidXQgbm90IHlldCBwb3B1bGF0ZWQuDQo+IA0KPiBNYWtlIHRoZSBjb250cmFj
dCBtYXRjaCB0aGUgZG9jdW1lbnRhdGlvbiBieSByZXR1cm5pbmcgMCBlYXJseS4gVGhpcw0KPiBh
bHNvIHNraXBzIGFuIHVubmVjZXNzYXJ5IHNvcnQoKSBjYWxsIG9uIGFuIGVtcHR5IGFycmF5Lg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogQmFpbmVuZyBTaG91IDxzaG91YmFpbmVuZ0BnbWFpbC5jb20+
DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgfCAzICsrKw0K
PiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS11bndyYXAuYw0KPiBpbmRleCA1M2JiNDBlNzBiMjcuLjM2NGNiZjc5YWQ3MyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KPiArKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+IEBAIC05Nyw2ICs5Nyw5IEBAIGludCBk
bWFfZmVuY2VfZGVkdXBfYXJyYXkoc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywgaW50IG51bV9m
ZW5jZXMpDQo+IMKgew0KPiDCoAlpbnQgaSwgajsNCj4gwqANCj4gKwlpZiAoIW51bV9mZW5jZXMp
DQo+ICsJCXJldHVybiAwOw0KDQpIbSwgc2luY2UgeW91J3JlIGFkZGluZyB0aGlzLCB3aGF0IGFi
b3V0IG51bV9mZW5jZXMgPSAtNSA/DQoNCg0KTGV0IG1lIHVzZSB0aGlzIG9wcG9ydHVuaXR5IHRv
IGFsc28gaGlnaGxpZ2h0IHRoYXQgd2Ugc2hvdWxkLCBpbiBDLCBpbg0KZ2VuZXJhbCBnZXQgYXdh
eSBmcm9tIHVzaW5nIGludCBmb3IgZXZlcnl0aGluZy4NCg0KX19kbWFfZmVuY2VfdW53cmFwX21l
cmdlKCkgZGlyZWN0bHkgYmVsb3cgdXNlcyB1bnNpZ25lZCBpbnQsIGFzIHlvdQ0Kd291bGQgZXhw
ZWN0LiBkbWFfZmVuY2VfZGVkdXBfYXJyYXkoKSBoYXMgYWxtb3N0IG5vIHVzZXJzLiBQcm9iYWJs
eSB3ZQ0Kc2hvdWxkIGNoYW5nZSB0aGF0IEFQSSB0byB1bnNpZ25lZCBpbnQsIHRvbz8NCg0KDQpS
ZWdhcmRzDQpQLg0KDQo+ICsNCj4gwqAJc29ydChmZW5jZXMsIG51bV9mZW5jZXMsIHNpemVvZigq
ZmVuY2VzKSwgZmVuY2VfY21wLCBOVUxMKTsNCj4gwqANCj4gwqAJLyoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
