Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLkqE78D4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC8441126F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0417544BE5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:43:58 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id C8EB33F998
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:34:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=hI+AFekK;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dRsTN6MsTz9tTQ;
	Thu, 11 Dec 2025 13:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1765456440; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lqu9E7aQBHmxDuPehdzIcx2FY5xq8vahFzhQwNQOBgM=;
	b=hI+AFekKmhC7u6xPHfJIzfMS3QAm20kgxb/wB7DZuMxcOdqPTCx6qK8C63zg68rY1D0CY8
	QNuauzfYXvhRfm7b6yZraoJ6HiEfC6QT+i/sHwp/J45ZeoevD3/wGtTAaAjUXeX6y8qlOo
	+fD1/uLs1PeGQp3o53+eeciWIZoc5lpeS4D2+iwDBNzkwJyObgWHyndY1qfbjWI3+DetNN
	Ezh1fUJyGr52pPGa+sFxYIQ3J15CT1zQS87fgl5wPJohyPmf+y1TaoIY9ZUomgKTVradyH
	r9Ze2ECo5Qj6Acw0/xjTtgRMv2euMD2Ldz/aLy/5XKZPkFKvFFnSUKmBCrn7DQ==
Message-ID: <34407595c6ffb9cff3e00736b1256abb75c1adef.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	tursulin@ursulin.net, matthew.brost@intel.com, sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:33:57 +0100
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: d5e281bf4e44679f351
X-MBO-RS-META: eh31zgcgrgus19mmqywk8kkjc4mi7367
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S7E4KHEJ45K5YOUTD3QLFJ7J3ZNXVOER
X-Message-ID-Hash: S7E4KHEJ45K5YOUTD3QLFJ7J3ZNXVOER
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:42 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: Independence for dma_fences! v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S7E4KHEJ45K5YOUTD3QLFJ7J3ZNXVOER/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3027];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ursulin.net,intel.com,linaro.org];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.911];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mailbox.org:mid];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org]
X-Rspamd-Queue-Id: ECC8441126F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTEyLTExIGF0IDEzOjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBIaSBldmVyeW9uZSwNCj4gDQo+IGRtYV9mZW5jZXMgaGF2ZSBldmVyIGxpdmVkIHVuZGVy
IHRoZSB0eXJhbm55IGRpY3RhdGVkIGJ5IHRoZSBtb2R1bGUNCj4gbGlmZXRpbWUgb2YgdGhlaXIg
aXNzdWVyLCBsZWFkaW5nIHRvIGNyYXNoZXMgc2hvdWxkIGFueWJvZHkgc3RpbGwgaG9sZGluZw0K
PiBhIHJlZmVyZW5jZSB0byBhIGRtYV9mZW5jZSB3aGVuIHRoZSBtb2R1bGUgb2YgdGhlIGlzc3Vl
ciB3YXMgdW5sb2FkZWQuDQo+IA0KPiBUaGUgYmFzaWMgcHJvYmxlbSBpcyB0aGF0IHdoZW4gYnVm
ZmVyIGFyZSBzaGFyZWQgYmV0d2VlbiBkcml2ZXJzDQo+IGRtYV9mZW5jZSBvYmplY3RzIGNhbiBs
ZWFrIGludG8gZXh0ZXJuYWwgZHJpdmVycyBhbmQgc3RheSB0aGVyZSBldmVuDQo+IGFmdGVyIHRo
ZXkgYXJlIHNpZ25hbGVkLiBUaGUgZG1hX3Jlc3Ygb2JqZWN0IGZvciBleGFtcGxlIG9ubHkgbGF6
eSByZWxlYXNlcw0KPiBkbWFfZmVuY2VzLg0KPiANCj4gU28gd2hhdCBoYXBwZW5zIGlzIHRoYXQg
d2hlbiB0aGUgbW9kdWxlIHdobyBvcmlnaW5hbGx5IGNyZWF0ZWQgdGhlIGRtYV9mZW5jZQ0KPiB1
bmxvYWRzIHRoZSBkbWFfZmVuY2Vfb3BzIGZ1bmN0aW9uIHRhYmxlIGJlY29tZXMgdW5hdmFpbGFi
bGUgYXMgd2VsbCBhbmQgc28NCj4gYW55IGF0dGVtcHQgdG8gcmVsZWFzZSB0aGUgZmVuY2UgY3Jh
c2hlcyB0aGUgc3lzdGVtLg0KPiANCj4gUHJldmlvdXNseSB2YXJpb3VzIGFwcHJvYWNoZXMgaGF2
ZSBiZWVuIGRpc2N1c3NlZCwgaW5jbHVkaW5nIGNoYW5naW5nIHRoZQ0KPiBsb2NraW5nIHNlbWFu
dGljcyBvZiB0aGUgZG1hX2ZlbmNlIGNhbGxiYWNrcyAoYnkgbWUpIGFzIHdlbGwgYXMgdXNpbmcg
dGhlDQo+IGRybSBzY2hlZHVsZXIgYXMgaW50ZXJtZWRpYXRlIGxheWVyIChieSBTaW1hKSB0byBk
aXNjb25uZWN0IGRtYV9mZW5jZXMNCj4gZnJvbSB0aGVpciBhY3R1YWwgdXNlcnMsIGJ1dCBub25l
IG9mIHRoZW0gYXJlIGFjdHVhbGx5IHNvbHZpbmcgYWxsIHByb2JsZW1zLg0KPiANCj4gVHZydGtv
IGRpZCBzb21lIHJlYWxseSBuaWNlIHByZXJlcXVpc2l0ZSB3b3JrIGJ5IHByb3RlY3RpbmcgdGhl
IHJldHVybmVkDQo+IHN0cmluZ3Mgb2YgdGhlIGRtYV9mZW5jZV9vcHMgYnkgUkNVLiBUaGlzIHdh
eSBkbWFfZmVuY2UgY3JlYXRvcnMgd2hlcmUNCj4gYWJsZSB0byBqdXN0IHdhaXQgZm9yIGFuIFJD
VSBncmFjZSBwZXJpb2QgYWZ0ZXIgZmVuY2Ugc2lnbmFsaW5nIGJlZm9yZQ0KPiB0aGV5IGNvdWxk
IGJlIHNhdmUgdG8gZnJlZSB0aG9zZSBkYXRhIHN0cnVjdHVyZXMuDQo+IA0KPiBOb3cgdGhpcyBw
YXRjaCBzZXQgaGVyZSBnb2VzIGEgc3RlcCBmdXJ0aGVyIGFuZCBwcm90ZWN0cyB0aGUgd2hvbGUN
Cj4gZG1hX2ZlbmNlX29wcyBzdHJ1Y3R1cmUgYnkgUkNVLCBzbyB0aGF0IGFmdGVyIHRoZSBmZW5j
ZSBzaWduYWxzIHRoZQ0KPiBwb2ludGVyIHRvIHRoZSBkbWFfZmVuY2Vfb3BzIGlzIHNldCB0byBO
VUxMIHdoZW4gdGhlcmUgaXMgbm8gd2FpdCBub3INCj4gcmVsZWFzZSBjYWxsYmFjayBnaXZlbi4g
QWxsIGZ1bmN0aW9uYWxpdHkgd2hpY2ggdXNlIHRoZSBkbWFfZmVuY2Vfb3BzDQo+IHJlZmVyZW5j
ZSBhcmUgcHV0IGluc2lkZSBhbiBSQ1UgY3JpdGljYWwgc2VjdGlvbiwgZXhjZXB0IGZvciB0aGUN
Cj4gZGVwcmVjYXRlZCBpc3N1ZXIgc3BlY2lmaWMgd2FpdCBhbmQgb2YgY291cnNlIHRoZSBvcHRp
b25hbCByZWxlYXNlDQo+IGNhbGxiYWNrLg0KPiANCj4gQWRkaXRpb25hbCB0byB0aGUgUkNVIGNo
YW5nZXMgdGhlIGxvY2sgcHJvdGVjdGluZyB0aGUgZG1hX2ZlbmNlIHN0YXRlDQo+IHByZXZpb3Vz
bHkgaGFkIHRvIGJlIGFsbG9jYXRlZCBleHRlcm5hbC4gVGhpcyBzZXQgaGVyZSBub3cgY2hhbmdl
cyB0aGUNCj4gZnVuY3Rpb25hbGl0eSB0byBtYWtlIHRoYXQgZXh0ZXJuYWwgbG9jayBvcHRpb25h
bCBhbmQgYWxsb3dzIGRtYV9mZW5jZXMNCj4gdG8gdXNlIGFuIGlubGluZSBsb2NrIGFuZCBiZSBz
ZWxmIGNvbnRhaW5lZC4NCj4gDQo+IHY0Og0KPiANCj4gUmViYXNlcyB0aGUgd2hvbGUgc2V0IG9u
IHVwc3RyZWFtIGNoYW5nZXMsIGVzcGVjaWFsbHkgdGhlIGNsZWFudXANCj4gZnJvbSBQaGlsaXAg
aW4gcGF0Y2ggImRybS9hbWRncHU6IGluZGVwZW5kZW5jZSBmb3IgdGhlIGFtZGtmZF9mZW5jZSEi
Lg0KPiANCj4gQWRkaW5nIHR3byBwYXRjaGVzIHdoaWNoIGJyaW5ncyB0aGUgRE1BLWZlbmNlIHNl
bGYgdGVzdHMgdXAgdG8gZGF0ZS4NCj4gVGhlIGZpcnN0IHNlbGZ0ZXN0IGNoYW5nZXMgcmVtb3Zl
cyB0aGUgbW9ja193YWl0IGFuZCBzbyBhY3R1YWxseSBzdGFydHMNCj4gdGVzdGluZyB0aGUgZGVm
YXVsdCBiZWhhdmlvciBpbnN0ZWFkIG9mIHNvbWUgaGFja3kgaW1wbGVtZW50YXRpb24gaW4gdGhl
DQo+IHRlc3QuIFRoaXMgb25lIHNob3VsZCBwcm9iYWJseSBnbyB1cHN0cmVhbSBpbmRlcGVuZGVu
dCBvZiB0aGlzIHNldC4NCj4gVGhlIHNlY29uZCBkcm9wcyB0aGUgbW9ja19mZW5jZSBhcyB3ZWxs
IGFuZCB0ZXN0cyB0aGUgbmV3IFJDVSBhbmQgaW5saW5lDQo+IHNwaW5sb2NrIGZ1bmN0aW9uYWxp
dHkuDQo+IA0KPiBFc3BlY2lhbGx5IHRoZSBmaXJzdCBwYXRjaCBzdGlsbCBuZWVkcyBhIFJldmll
d2VkLWJ5LCBhcGFydCBmcm9tIHRoYXQgSQ0KPiB0aGluayBJJ3ZlIGFkZHJlc3NlZCBhbGwgcmV2
aWV3IGNvbW1lbnRzLg0KPiANCj4gVGhlIHBsYW4gaXMgdG8gcHVzaCB0aGUgY29yZSBETUEtYnVm
IGNoYW5nZXMgdG8gZHJtLW1pc2MtbmV4dCBhbmQgdGhlbiB0aGUNCj4gZHJpdmVyIHNwZWNpZmlj
IGNoYW5nZXMgdGhyb3VnaCB0aGUgZHJpdmVyIGNoYW5uZWxzIGFzIGFwcHJvcHJpdGUuDQoNClRo
aXMgZG9lcyBub3QgYXBwbHkgdG8gZHJtLW1pc2MtbmV4dCAodW5sZXNzIEknbSBzY3Jld2luZyB1
cCBiYWRseSkuDQoNCldoZXJlIGNhbiBJIGFwcGx5IGl0PyBJJ2QgbGlrZSB0byB0ZXN0IHRoZSBk
cm1fc2NoZWQgY2hhbmdlcyBiZWZvcmUNCnRoaXMgZ2V0cyBtZXJnZWQuDQoNClAuDQoNCj4gDQo+
IFBsZWFzZSByZXZpZXcgYW5kIGNvbW1lbnQsDQo+IENocmlzdGlhbi4NCj4gDQo+IA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
