Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKqIAncL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:16:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B066B411851
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:16:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7578B3F7EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:16:53 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 340A23F61F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 16:13:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=DnBBUHda;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4drDnt2Zq9z9tGC;
	Tue, 13 Jan 2026 17:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1768320834; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rPy6IDsyxgR6I7tCL3efb0M+UJy85KxibJHrXpRUb4E=;
	b=DnBBUHda7VPJyAKbqUDBA5SmmnsHeKyfRp/Y4+vUS7p4ClToCBiVo9llCj255r1YMtNGxk
	vIeDzN/qXURWFDknAwOPX+fbSQ8/ofgAW75YseSbo8qd27UI/ZGKsrWNfLi7xy9IQKP0Sc
	cSyeFqBzMRLWnuXlacL9e0jpOfn6q87Lx9Wl96WRvQJw3/dWbuea95n8+HmLXdRqEjOpES
	Tdfkt3a7w4C+AH1q1OrWlguNzkCTnMAQPPcKBo7Kj6o9/wsxZkL1vZUFYzvelFpvGrIYrE
	GfA/PeMcyYCXtLomNmqsyDSTbO1VMz94Y257dQZ+Czoh9OoGPSq199x40ch+TQ==
Message-ID: <195fbfacc4b3964d1239a963b683ba5471ded0a1.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	tursulin@ursulin.net, matthew.brost@intel.com, sumit.semwal@linaro.org,
	dakr@kernel.org
Date: Tue, 13 Jan 2026 17:13:51 +0100
In-Reply-To: <20260113152125.47380-1-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 84843c69a449a301c6f
X-MBO-RS-META: kqr5zzniuxegs7g5oksqsbqx16wrkqeg
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DBPRVHZXAFU3U57UO4GBYOZBTFWVYFLH
X-Message-ID-Hash: DBPRVHZXAFU3U57UO4GBYOZBTFWVYFLH
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:52 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: Independence for dma_fences! v5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DBPRVHZXAFU3U57UO4GBYOZBTFWVYFLH/>
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
	DATE_IN_PAST(1.00)[2232];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ursulin.net,intel.com,linaro.org,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.920];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mailbox.org:mid]
X-Rspamd-Queue-Id: B066B411851
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAxLTEzIGF0IDE2OjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
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
DQo+IHRlc3QuIFRoaXMgb25lIGdvdCB1cHN0cmVhbWVkIGluZGVwZW5kZW50IG9mIHRoaXMgc2V0
Lg0KPiBUaGUgc2Vjb25kIGRyb3BzIHRoZSBtb2NrX2ZlbmNlIGFzIHdlbGwgYW5kIHRlc3RzIHRo
ZSBuZXcgUkNVIGFuZCBpbmxpbmUNCj4gc3BpbmxvY2sgZnVuY3Rpb25hbGl0eS4NCj4gDQo+IHY1
Og0KPiANCj4gUmViYXNlIG9uIHRvcCBvZiBkcm0tbWlzYy1uZXh0IGluc3RlYWQgb2YgZHJtLXRp
cCwgbGVhdmUgb3V0IGFsbCBkcml2ZXINCj4gY2hhbmdlcyBmb3Igbm93IHNpbmNlIHRob3NlIHNo
b3VsZCBnbyB0aHJvdWdoIHRoZSBkcml2ZXIgc3BlY2lmaWMgcGF0aHMNCj4gYW55d2F5Lg0KPiAN
Cj4gQWRkcmVzcyBhIGZldyBtb3JlIHJldmlldyBjb21tZW50cywgZXNwZWNpYWxseSBzb21lIHJl
YmFzZSBtZXNzIGFuZA0KPiB0eXBvcy4gQW5kIGZpbmFsbHkgZml4IG9uZSBtb3JlIGJ1ZyBmb3Vu
ZCBieSBBTURzIENJIHN5c3RlbS4NCj4gDQo+IEVzcGVjaWFsbHkgdGhlIGZpcnN0IHBhdGNoIHN0
aWxsIG5lZWRzIGEgUmV2aWV3ZWQtYnksIGFwYXJ0IGZyb20gdGhhdCBJDQo+IHRoaW5rIEkndmUg
YWRkcmVzc2VkIGFsbCByZXZpZXcgY29tbWVudHMgYW5kIHByb2JsZW1zLg0KPiANCj4gUGxlYXNl
IHJldmlldyBhbmQgY29tbWVudCwNCj4gQ2hyaXN0aWFuLg0KDQoNCllvdSBmb3Jnb3QgRGFuaWxv
LCB3aG8gaXMgYWxzbyBhIGRybV9zY2hlZCBtYWludGFpbmVyLg0KK0NjLg0KDQpQLg0KDQo+IA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
