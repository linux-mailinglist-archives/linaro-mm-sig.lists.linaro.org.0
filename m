Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mc3bLPVFQmrU3QkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 12:16:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB3C6D8C7C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 12:16:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b="jK/op6iK";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F270409B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:16:20 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 0091F3F78F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 10:16:09 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4gphxz4gTyz9v8L;
	Mon, 29 Jun 2026 12:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782728167; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HW+BWg1JW9BNHOp4E3b5w+CbOMquiIMjz4qFrzocohs=;
	b=jK/op6iKOf1vTXFwaDd/0zgNygsmmHaCv3tMcFv5+iH3+DDblF/MSPxD75wLznpekMTSWv
	Lkph52uqTDvIzBN7QoROOJsWOa0bM2mNUwancglKHe4kvMs0AMBGipFw3WO6SCQ4XpP1Oz
	J6FRq/PVuGdEDCt4R9MR8AQkulWZpqkuSFiMRTHCT1U7ndySQz0gR/Ab1/yWTGuZqBZhE+
	GlMM+rDgzf9LYeGob4ZWgqvdZDb/lwmMjjuT4UhPPlaAsFYN6Iz95DnUcFhHtT63qhytxT
	J5F12TJTLxeXcYfkQ3TOF4iqZWES9oywB7+vht13SmcJYV49gsGwE43V0jqEYg==
Message-ID: <9bd4bd923eacca9da25b6b9fda33057455d084c3.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	phasta@kernel.org, Baineng Shou <shoubaineng@gmail.com>, Sumit Semwal
	 <sumit.semwal@linaro.org>
Date: Mon, 29 Jun 2026 12:16:02 +0200
In-Reply-To: <349ada65-c788-4c5e-9992-0278cf1382dd@amd.com>
References: <20260629031346.3875683-1-shoubaineng@gmail.com>
	 <becd29b5-9e40-4104-b6c9-3d91e2ddddff@amd.com>
	 <058f4bb261e408cf17deca9ff7354460675eacbf.camel@mailbox.org>
	 <66344c20-ea97-4dfa-ac42-c9d6e061eb95@amd.com>
	 <7dc78d8ae9903c215ec492ee39b27cc504da8307.camel@mailbox.org>
	 <349ada65-c788-4c5e-9992-0278cf1382dd@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: a61e13d958b385de307
X-MBO-RS-META: zr99d7yz1wiidqwq7p49y3w987uhfuxh
X-Spamd-Bar: ----
Message-ID-Hash: ZUGCSLBCPCYJWNIDITUKNA26FTA6G6KT
X-Message-ID-Hash: ZUGCSLBCPCYJWNIDITUKNA26FTA6G6KT
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZUGCSLBCPCYJWNIDITUKNA26FTA6G6KT/>
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
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:phasta@kernel.org,m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:tursulin@ursulin.net,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,gmail.com,linaro.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mailbox.org:mid,mailbox.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BB3C6D8C7C

T24gTW9uLCAyMDI2LTA2LTI5IGF0IDExOjUyICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiA2LzI5LzI2IDExOjA2LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4gT24gTW9u
LCAyMDI2LTA2LTI5IGF0IDEwOjUyICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+
ID4gT24gNi8yOS8yNiAxMDo0OSwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+IEkgd2lsbCBhZGQgYSBDQyBzdGFibGUgYmVmb3JlIHB1c2hpbmcgdG8gZHJtLW1p
c2MtZml4ZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBObyBvZmZlbnNlIGludGVuZGVkIG9yIHRha2Vu
LCBidXQgZG9uJ3QgdGhlIERSTSBydWxlcyBzYXkgdGhhdA0KPiA+ID4gPiB0aGluZ3MNCj4gPiA+
ID4gZG8gbm90IGdldCBtZXJnZWQgd2hpbGUgdGhlcmUgYXJlIG91dHN0YW5kaW5nIGNvbmNlcm5z
IG9yDQo+ID4gPiA+IHNpZ25pZmljYW50DQo+ID4gPiA+IHBvaW50cyBpbiByZXZpZXcgZmVlZGJh
Y2s/DQo+ID4gPiANCj4gPiA+IEkgaGF2ZW4ndCBzZWVuIHRoYXQgYmVmb3JlIHdyaXRpbmcgdGhl
IHJlc3BvbnNlLg0KPiA+ID4gDQo+ID4gPiBJIHVzdWFsbHkgZ28gb3ZlciBteSBtYWlscyB0aWxs
IHRoZSBlbmQgYW5kIHdhaXQgYSBjb3VwbGUgb2YNCj4gPiA+IGhvdXJzIGJlZm9yZSBwdXNoaW5n
IGFueXRoaW5nLg0KPiA+ID4gDQo+ID4gPiA+IFdoYXQgYWJvdXQgbXkgY29tbWVudHM/DQo+ID4g
PiANCj4gPiA+IExvb2tzIHZhbGlkIHRvIG1lIGFzIHdlbGwsIGJ1dCBJIHRoaW5rIHRoYXQgaXMg
YSBzZXBhcmF0ZSBpc3N1ZS4NCj4gPiANCj4gPiBCdXQgaWYgd2Uga2VlcCBpdCBhbiBpbnRlZ2Vy
IGZvciBub3csIGFuZCBpZiB0aGF0IGNoZWNrIGlzIGFkZGVkLA0KPiA+IGFuZA0KPiA+IGl0IG1v
c3QgY2VydGFpbmx5IHNob3VsZCBhbHNvIGNhdGNoIG5lZ2F0aXZlIGludGVnZXJzLCBzaG91bGRu
J3QNCj4gPiBpdD8NCj4gDQo+IE1heWJlIHdpdGggYSBXQVJOX09OKCksIGJ1dCBub3QgYXMgcmVn
dWxhciBjb2RlIHBhdGguDQo+IA0KPiBUaGUgdGhpbmcgaXMgSSB0aGluayB3ZSBuZWVkIHRvIGJh
Y2twb3J0IHRoaXMgZml4IHRvIHN0YWJsZSBrZXJuZWxzLA0KPiBidXQgc3dpdGNoaW5nIGZyb20g
c2lnbmVkIHRvIHVuc2lnbmVkIGlzIG9ubHkgYSBtaW5vciBjbGVhbnVwIHdoZW4gbm8NCj4gcmVh
bCB1c2VycyBhcmUgY3VycmVudGx5IGFmZmVjdGVkLg0KDQpGaW5lIGJ5IG1lLg0KDQpQLg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
