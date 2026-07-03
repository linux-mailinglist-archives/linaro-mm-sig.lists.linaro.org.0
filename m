Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C2vJLYLLR2rCfQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 16:47:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F6B703937
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 16:47:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=io7+jonG;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C46C40EBF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2026 14:47:29 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id 4D782400F5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 14:47:18 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4gsGmz2K5wz9tnx;
	Fri,  3 Jul 2026 16:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1783090035; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NstNPI3Yl6z18ZLCBhwhl1e5laiGgCjywIQQ7XGoi0w=;
	b=io7+jonG4i0IEqFYwLqSYd+32vedj9DY2NWtA1mzHCnvAc2BSryG1YISMX2GQuRcO/KMa2
	jdlBGbLphY0sw8hn9xOOrASIYZ/inh4ONINCbqkZznQvo16Wv/53mgZiWT+bidQR4JXC/n
	R75nqK/NFKogTdQCXwajFzGuYvxM+EuSYEVRE4gwA2Z0Vy2DIHDADJy+iGXMiUdXXyFIWm
	nP8vXCauQ/5delyYBfE58/m3C7mRqHOObLC00TXUnsa6+6mkbNwpcc4jgOUpedXRQtK4jT
	YqJMIIdvXhWEAWbu55oonfxHFWTdWsUUcqd8D9Av+QmRVy/XzgupscUmCmRxIQ==
Message-ID: <51fbde808bd059510d667d130afae179626303be.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Tvrtko Ursulin <tursulin@ursulin.net>, Philipp Stanner
 <phasta@kernel.org>,  Matthew Brost <matthew.brost@intel.com>, Danilo
 Krummrich <dakr@kernel.org>, Christian =?ISO-8859-1?Q?K=F6nig?=
 <ckoenig.leichtzumerken@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard	 <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie	 <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal	 <sumit.semwal@linaro.org>,
 Marco Pagani <marco.pagani@linux.dev>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Boris Brezillon <boris.brezillon@collabora.com>
Date: Fri, 03 Jul 2026 16:47:08 +0200
In-Reply-To: <a4091099-1931-4ca2-a81a-9c3321b123a8@ursulin.net>
References: <20260701085920.3253248-2-phasta@kernel.org>
	 <20260701085920.3253248-3-phasta@kernel.org>
	 <a4091099-1931-4ca2-a81a-9c3321b123a8@ursulin.net>
MIME-Version: 1.0
X-MBO-RS-META: 8bx1aetxqqwi14hyoz5m6dj1nbunchzx
X-MBO-RS-ID: 33ffcc438f0fff36951
X-Spamd-Bar: ----
Message-ID-Hash: 7DFMAVXJLEUYZP3FDDDAL5UFCQ7DXU7B
X-Message-ID-Hash: 7DFMAVXJLEUYZP3FDDDAL5UFCQ7DXU7B
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] drm/sched: Protect entity->last_scheduled with spinlock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7DFMAVXJLEUYZP3FDDDAL5UFCQ7DXU7B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tursulin@ursulin.net,m:phasta@kernel.org,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ursulin.net,kernel.org,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,igalia.com,collabora.com];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,mailbox.org:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39F6B703937

T24gRnJpLCAyMDI2LTA3LTAzIGF0IDEyOjI3ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gDQo+IE9uIDAxLzA3LzIwMjYgMDk6NTksIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gPiBU
aGUgZW50aXR5LT5sYXN0X3NjaGVkdWxlZCBmaWVsZCBoYXMgYWx3YXlzIGJlZW4gc2V0IGFuZCBy
ZWFkIHdpdGgNCj4gPiBzcGVjaWFsIFJDVSBmdW5jdGlvbnMgaW4gYWRkaXRpb24gdG8gbWVtb3J5
IGJhcnJpZXJzLg0KPiA+IA0KPiA+IFRoaXMgd2FzIGFkZGVkIGluDQo+ID4gDQo+ID4gY29tbWl0
IDcwMTAyZDc3ZmYyMiAoImRybS9zY2hlZHVsZXI6IGFkZCBkcm1fc2NoZWRfZW50aXR5X2Vycm9y
IGFuZCB1c2UgcmN1IGZvciBsYXN0X3NjaGVkdWxlZCIpDQo+ID4gDQo+ID4gaG93ZXZlciwgbm8g
cHJvcGVyIGp1c3RpZmljYXRpb24gZm9yIHRoYXQgbWVjaGFuaXNtIHdhcyBwcm92aWRlZC4gVGhl
cmUNCj4gPiBzZWVtcyB0byBiZSBubyBvYnZpb3VzIHJlYXNvbiwgc2luY2UgdGhlIGVudGl0eSBs
b2NrIGlzIGF2YWlsYWJsZSBhbmQNCj4gPiB0YWtlbiBhdCBhbGwgcGxhY2VzIHRoYXQgZXZhbHVh
dGUgdGhlIGxhc3Rfc2NoZWR1bGVkIGZpZWxkLiBUaGUgb25seQ0KPiA+IGV4Y2VwdGlvbiBpcyBk
cm1fc2NoZWRfZW50aXR5X2Vycm9yKCksIHdoaWNoIGlzIG5vdCBwZXJmb3JtYW5jZSBjcml0aWNh
bA0KPiA+IGluIGFueSB3YXkuDQo+ID4gDQo+ID4gSW1wcm92ZSByb2J1c3RuZXNzLCByZWFkYWJp
bGl0eSBhbmQgbWFpbnRhaW5hYmlsaXR5IGJ5IHJlcGxhY2luZyBSQ1UgYW5kDQo+ID4gYmFycmll
cnMgd2l0aCB0aGUgbG9jay4NCj4gDQo+IEZpcnN0IHRoaW5nLCBhbmQgcmVnYXJkbGVzcyBvZiBv
dGhlciBzdHJhbmRzIG9mIGRpc2N1c3Npb24sIEkgdGhpbmsgaXQgDQo+IHNob3VsZCBiZSBzcXVh
c2hlZCB3aXRoIDMvNSBpbnN0ZWFkIG9mIHRoYXQgb25lIHVuZG9pbmcgdGhlIGludHJvZHVjdGlv
biANCj4gb2YgbG9jay11bmxvY2stbG9jay11bmxvY2suDQoNCkkgYWdyZWUgdGhhdCB0aGVyZSBz
aG91bGQgbm90IGJlIGEgZG8tdW5kbyBwYXR0ZXJuLCBidXQgSSBkb24ndCB3YW50IHRvDQpzcXVh
c2ggdGhhdCwgaXQncyBxdWl0ZSBhIGRpc3RpbmN0aXZlIGFjdGlvbi4gT25lIHBhdGNoIGFkZHMg
bG9ja3MsIHRoZQ0Kb3RoZXIgbW92ZXMgdGhlbS4NCg0KQnV0IHdoYXQgSSBjYW4gZG8gaXMgbW92
ZSB0aGF0IHBhdGNoIGJlZm9yZSDihJYxIGhlcmUgc28gdGhhdCBpdCBiZWNvbWVzDQp1bmRlcnN0
YW5kYWJsZSBhcyBhIHByZXBhcmF0aW9uYWwgY29tbWl0Lg0KDQo+IA0KPiBGb3Igd2hhdCB0aGUg
bWFpbiB0b3BpYyBpcyBjb25jZXJuZWQsIEkgcmVhbGx5IGxpa2UgdGhlIHJlbW92YWwgb2YgYWxs
IA0KPiB0aGUgcmN1X2RlcmVmZXJlbmNlX2NoZWNrKCwgdHJ1ZSkgbGluZXMgYW5kIHRoZSBtZW1v
cnkgYmFycmllcnMuDQo+IA0KPiBCdXQgSSBhbHNvIHRoaW5rIHRoZSBjb21taXQgbWVzc2FnZSBz
aG91bGQgZXhwbGFpbiBiZXR0ZXIgd2hhdCBjb2RlIA0KPiBwYXRocyBhcmUgbm93IHRha2luZyBh
biBleHRyYSBsb2NrIC0gdW5kZXIgd2hpY2ggY2lyY3Vtc3RhbmNlcyBpcyB0aGUNCj4gbG9jayBu
b3cgdGFrZW4gZm9yIGFsbCBzY2hlZHVsZXIgdXNlcnMsIGFuZCB3aGljaCBhbWRncHUgcGF0aHMg
dXNlIA0KPiBkcm1fc2NoZWRfZW50aXR5X2Vycm9yKCkgYSBsb3Qgc28gY291bGQgYmUgYWZmZWN0
ZWQuIEkgZG91YnQgaXQgY3JlYXRlcyANCj4gYSBtZWFzdXJhYmxlIHBlcmZvcm1hbmNlIGltcGFj
dCBidXQgaXQgbmVlZHMgdG8gYmUgZXhwbGFpbmVkLg0KDQpJIHRoaW5rIGl0IGNhbiBkZXRhaWwg
d2hpY2ggZnVuY3Rpb25zIHdpbGwgbm93IGJlIGxvY2tlZDsgYnV0DQptZW50aW9uaW5nIHRoZSB1
c2VycyB3b3VsZCBiZSBvdmVya2lsbCBhbmQgaXMgdW5jb21tb24gZm9yIEFQSSByZXdvcmtzLg0K
DQo+IA0KPiBJIGFtIGFsc28gaGFwcHkgdG8gZ2l2ZSBpdCBhIHNwaW4gb24gdGhlIFN0ZWFtIERl
Y2sgdG8gc2VlIGlmIEkgY2FuIA0KPiBvYnNlcnZlIGFueXRoaW5nLg0KDQpDb3VsZCBiZSBpbnRl
cmVzdGluZy4NCg0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0
YUBrZXJuZWwub3JnPg0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfZW50aXR5LmMgfCA1MCArKysrKysrKysrLS0tLS0tLS0tLS0tLS0NCj4gPiDCoCBpbmNs
dWRlL2RybS9ncHVfc2NoZWR1bGVyLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgOSAr
Ky0tLQ0KPiA+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRp
b25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfZW50aXR5LmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5j
DQo+ID4gaW5kZXggYzUxMTAxZWM3MGMxLi45MWFlYzIwNjExYWQgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMNCj4gPiBAQCAtMTM1LDcgKzEzNSw2
IEBAIGludCBkcm1fc2NoZWRfZW50aXR5X2luaXQoc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVu
dGl0eSwNCj4gPiDCoMKgCWVudGl0eS0+bnVtX3NjaGVkX2xpc3QgPSBudW1fc2NoZWRfbGlzdDsN
Cj4gPiDCoMKgCWVudGl0eS0+c2NoZWRfbGlzdCA9IG51bV9zY2hlZF9saXN0ID4gMSA/IHNjaGVk
X2xpc3QgOiBOVUxMOw0KPiA+IMKgwqAJZW50aXR5LT5ycSA9ICZzY2hlZF9saXN0WzBdLT5ycTsN
Cj4gPiAtCVJDVV9JTklUX1BPSU5URVIoZW50aXR5LT5sYXN0X3NjaGVkdWxlZCwgTlVMTCk7DQo+
ID4gwqDCoAlSQl9DTEVBUl9OT0RFKCZlbnRpdHktPnJiX3RyZWVfbm9kZSk7DQo+ID4gwqDCoAlp
bml0X2NvbXBsZXRpb24oJmVudGl0eS0+ZW50aXR5X2lkbGUpOw0KPiA+IMKgIA0KPiA+IEBAIC0y
MDEsMTAgKzIwMCwxMCBAQCBpbnQgZHJtX3NjaGVkX2VudGl0eV9lcnJvcihzdHJ1Y3QgZHJtX3Nj
aGVkX2VudGl0eSAqZW50aXR5KQ0KPiA+IMKgwqAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQo+
ID4gwqDCoAlpbnQgcjsNCj4gPiDCoCANCj4gPiAtCXJjdV9yZWFkX2xvY2soKTsNCj4gPiAtCWZl
bmNlID0gcmN1X2RlcmVmZXJlbmNlKGVudGl0eS0+bGFzdF9zY2hlZHVsZWQpOw0KPiA+ICsJc3Bp
bl9sb2NrKCZlbnRpdHktPmxvY2spOw0KPiA+ICsJZmVuY2UgPSBlbnRpdHktPmxhc3Rfc2NoZWR1
bGVkOw0KPiA+IMKgwqAJciA9IGZlbmNlID8gZmVuY2UtPmVycm9yIDogMDsNCj4gPiAtCXJjdV9y
ZWFkX3VubG9jaygpOw0KPiA+ICsJc3Bpbl91bmxvY2soJmVudGl0eS0+bG9jayk7DQo+ID4gwqAg
DQo+ID4gwqDCoAlyZXR1cm4gcjsNCj4gPiDCoCB9DQo+ID4gQEAgLTI4Nyw5ICsyODYsMTAgQEAg
dm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGwoc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0
eSkNCj4gPiDCoMKgCS8qIE1ha2Ugc3VyZSB0aGlzIGVudGl0eSBpcyBub3QgdXNlZCBieSB0aGUg
c2NoZWR1bGVyIGF0IHRoZSBtb21lbnQgKi8NCj4gPiDCoMKgCXdhaXRfZm9yX2NvbXBsZXRpb24o
JmVudGl0eS0+ZW50aXR5X2lkbGUpOw0KPiA+IMKgIA0KPiA+IC0JLyogVGhlIGVudGl0eSBpcyBn
dWFyYW50ZWVkIHRvIG5vdCBiZSB1c2VkIGJ5IHRoZSBzY2hlZHVsZXIgKi8NCj4gPiAtCXByZXYg
PSByY3VfZGVyZWZlcmVuY2VfY2hlY2soZW50aXR5LT5sYXN0X3NjaGVkdWxlZCwgdHJ1ZSk7DQo+
ID4gKwlzcGluX2xvY2soJmVudGl0eS0+bG9jayk7DQo+ID4gKwlwcmV2ID0gZW50aXR5LT5sYXN0
X3NjaGVkdWxlZDsNCj4gPiDCoMKgCWRtYV9mZW5jZV9nZXQocHJldik7DQo+ID4gKwlzcGluX3Vu
bG9jaygmZW50aXR5LT5sb2NrKTsNCj4gPiDCoMKgCXdoaWxlICgoam9iID0gZHJtX3NjaGVkX2Vu
dGl0eV9xdWV1ZV9wb3AoZW50aXR5KSkpIHsNCj4gPiDCoMKgCQlzdHJ1Y3QgZHJtX3NjaGVkX2Zl
bmNlICpzX2ZlbmNlID0gam9iLT5zX2ZlbmNlOw0KPiA+IMKgIA0KPiA+IEBAIC0zODEsOCArMzgx
LDcgQEAgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2Zpbmkoc3RydWN0IGRybV9zY2hlZF9lbnRpdHkg
KmVudGl0eSkNCj4gPiDCoMKgCQllbnRpdHktPmRlcGVuZGVuY3kgPSBOVUxMOw0KPiA+IMKgwqAJ
fQ0KPiA+IMKgIA0KPiA+IC0JZG1hX2ZlbmNlX3B1dChyY3VfZGVyZWZlcmVuY2VfY2hlY2soZW50
aXR5LT5sYXN0X3NjaGVkdWxlZCwgdHJ1ZSkpOw0KPiA+IC0JUkNVX0lOSVRfUE9JTlRFUihlbnRp
dHktPmxhc3Rfc2NoZWR1bGVkLCBOVUxMKTsNCj4gPiArCWRtYV9mZW5jZV9wdXQoZW50aXR5LT5s
YXN0X3NjaGVkdWxlZCk7DQo+ID4gwqDCoAlkcm1fc2NoZWRfZW50aXR5X3N0YXRzX3B1dChlbnRp
dHktPnN0YXRzKTsNCj4gPiDCoCB9DQo+ID4gwqAgRVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfZW50
aXR5X2ZpbmkpOw0KPiA+IEBAIC01MDcsNiArNTA2LDEwIEBAIGRybV9zY2hlZF9qb2JfZGVwZW5k
ZW5jeShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iLA0KPiA+IMKgIA0KPiA+IMKgIHN0cnVjdCBk
cm1fc2NoZWRfam9iICpkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2Ioc3RydWN0IGRybV9zY2hlZF9l
bnRpdHkgKmVudGl0eSkNCj4gPiDCoCB7DQo+ID4gKwkvKiBIZWxwZXIgdG8gYXZvaWQgZHJvcHBp
bmcgdGhlIHJlZmVyZW5jZSB3aGlsZSB0aGUgZW50aXR5IGxvY2sgaXMgaGVsZCwNCj4gPiArCSAq
IGp1c3QgdG8gaGF2ZSBzb21lIG1vcmUgcm9idXN0bmVzcy4NCj4gPiArCSAqLw0KPiANCj4gSSBk
b24ndCBnZXQgdGhpcyBjb21tZW50LiBOZWl0aGVyIHRoZSBwbGFjZW1lbnQgb3IgdGhlIGNvbnRl
bnQuDQoNCkl0IGV4cGxhaW5zIHRoZSBwdXJwb3NlIG9mIHRoZSB2YXJpYWJsZSAncHJldl9sYXN0
X3NjaGVkdWxlZCcsIHdoaWNoDQpleGlzdHMgc28gdGhhdCBhIHJlZmVyZW5jZSBkb2VzIG5vdCBk
cm9wIHVuZGVyIGxvY2sgcHJvdGVjdGlvbi4NCg0KDQpQLg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
