Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKMzKf784GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A19410652
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59377409AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:15:09 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 4DC563F846
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 16:20:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=WQa6KZMH;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4d6lqL3TQpz9sR1;
	Thu, 13 Nov 2025 17:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1763050814; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YmRdbE5yV4ESUST58NcAN6JqHsVuMkNSnMIS9GDZAGU=;
	b=WQa6KZMHCUapheBVUl2E09g0X2rIXp5QuLRKtn6jam5FE29gVdaDvMRjrQXcu/auldmsXk
	hwPMU+/5XPRgDr63/cEGkCiVrPSPWpJwjS78WMe+XmEKPla+nWm8RSZzdni0e2UcGmAoSD
	ke6/QQrZyZpPMFESp2966Jnxoil9yqhMKHBIxMYCTakvCOcQ9xLa4C+BuXXgL/QXzXYeoi
	HZ6KQpSnhg5+VLP6zIxvr5e58xx4EKxYf8SmI5TE8Mgyu240cSJ9Y2eOMfCQUhExb72YDC
	K8hh2cGQxomIIjMLME7lJDQZRZ1QOKG1n0E9a3ZYll/iItgB0W5Ybluz2R/Nuw==
Message-ID: <26a1379427d97e969654061224fb36d37e87af24.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 17:20:09 +0100
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 5ba540eb57a2f5f87b1
X-MBO-RS-META: 86wo5zyfm9y79pcoertnf597wdntngqd
X-Spamd-Bar: --
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZKOEY5NN4A6E6T2VVBUN4BILLYGAT63I
X-Message-ID-Hash: ZKOEY5NN4A6E6T2VVBUN4BILLYGAT63I
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:52 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: Independence for dma_fences! v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZKOEY5NN4A6E6T2VVBUN4BILLYGAT63I/>
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
	DATE_IN_PAST(1.00)[3694];
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.930];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 44A19410652
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
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
ZWxmIGNvbnRhaW5lZC4NCj4gDQo+IFRoaXMgcGF0Y2ggc2V0IGFkZHJlc3NlZCBhbGwgcHJldmlv
dXMgY29kZSByZXZpZXcgY29tbWVudHMgYW5kIGlzIGJhc2VkDQo+IG9uIGRybS10aXAsIGluY2x1
ZGVzIG15IGNoYW5nZXMgZm9yIGFtZGdwdSBhcyB3ZWxsIGFzIE1hdGhldydzIHBhdGNoZXMgZm9y
IFhFLg0KPiANCj4gR29pbmcgdG8gcHVzaCB0aGUgY29yZSBETUEtYnVmIGNoYW5nZXMgdG8gZHJt
LW1pc2MtbmV4dCBhcyBzb29uIGFzIEkgZ2V0DQo+IHRoZSBhcHByb3ByaWF0ZSByYi4gVGhlIGRy
aXZlciBzcGVjaWZpYyBjaGFuZ2VzIGNhbiBnbyB1cHN0cmVhbSB0aHJvdWdoDQo+IHRoZSBkcml2
ZXIgY2hhbm5lbHMgYXMgbmVjZXNzYXJ5Lg0KDQpObyBjaGFuZ2Vsb2c/IDooDQoNClAuDQoNCj4g
DQo+IFBsZWFzZSByZXZpZXcgYW5kIGNvbW1lbnQsDQo+IENocmlzdGlhbi4NCj4gDQo+IA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
