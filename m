Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NCChAX2XQ2pPcwoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 12:16:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F2C6E2B56
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 12:16:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=W8+LwmEt;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A057E40C9F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 10:07:03 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 1590E3F980
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 10:06:52 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4gqJhn2GDNz9sl7;
	Tue, 30 Jun 2026 12:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782814009; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lHHdALHFYJG7pNBaHmpNDc9IMidTp6lhFofr75a95j8=;
	b=W8+LwmEt5WKSVKe+0YDgIgVlWLf0hqegpzzh+qAge4EnGTBL/nmC7ekto29tIeINT9cupA
	W5HKNizl5CD2vH+n/mm9OY+vFYUE1bd4mMAIlgXTfPSwYQIh2z4rm/FGcIGfZ5MsfgIZho
	VI23SgqRXsLXpCAjKSTgEJHaS5MaYff4/8PHzHTVHaczKaNSPSIWlHPJ1ytlmfX8YOMRyQ
	NvGRj6ECw30R/k3hy34TeENDEL7LUqFNM12qlecKTFMdLQFXIYqcEl3y2VAO20zirqokQf
	aW09pUyPJJELqzT3pVltj16FXu2z+jXXIuR0IvwoPo9MAZHRqUK4KI6A5FP/7Q==
Message-ID: <9f7fa57610d3d94324e09dc936f5f7f3c3d390d3.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, Philipp Stanner	
 <phasta@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Danilo
 Krummrich	 <dakr@kernel.org>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <ckoenig.leichtzumerken@gmail.com>, Maarten Lankhorst	
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 30 Jun 2026 12:06:41 +0200
In-Reply-To: <1941b3c5-2ef1-4da9-aa20-a11d771274f1@igalia.com>
References: <20260626081942.2122144-2-phasta@kernel.org>
	 <1941b3c5-2ef1-4da9-aa20-a11d771274f1@igalia.com>
MIME-Version: 1.0
X-MBO-RS-ID: 0358df815d185da7b20
X-MBO-RS-META: bai59bkqca6doojgn198bd7q8yiq6yhh
X-Spamd-Bar: ----
Message-ID-Hash: QMYWN4KUYCFDMDLEGR4WXXFQYWYMTEMK
X-Message-ID-Hash: QMYWN4KUYCFDMDLEGR4WXXFQYWYMTEMK
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/sched: Protect entity->last_scheduled with spinlock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QMYWN4KUYCFDMDLEGR4WXXFQYWYMTEMK/>
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
	FORGED_RECIPIENTS(0.00)[m:tvrtko.ursulin@igalia.com,m:phasta@kernel.org,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[igalia.com,kernel.org,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	GREYLIST(0.00)[pass,body];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,mailbox.org:from_mime,linaro.org:email,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73F2C6E2B56

T24gVHVlLCAyMDI2LTA2LTMwIGF0IDEwOjIzICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gDQo+IE9uIDI2LzA2LzIwMjYgMDk6MTksIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gPiBU
aGUgZW50aXR5LT5sYXN0X3NjaGVkdWxlZCBmaWVsZCBoYXMgYWx3YXlzIGJlZW4gc2V0IGFuZCBy
ZWFkIHdpdGgNCj4gPiBzcGVjaWFsIFJDVSBmdW5jdGlvbnMgaW4gYWRkaXRpb24gdG8gbWVtb3J5
IGJhcnJpZXJzLiBUaGVyZSBpcyBubw0KPiA+IG9idmlvdXMgcmVhc29uIGZvciB0aGF0LCBzaW5j
ZSB0aGUgZW50aXR5IGxvY2sgaXMgYXZhaWxhYmxlIGFuZCB0YWtlbiBhdA0KPiA+IGFsbCBwbGFj
ZXMgdGhhdCBldmFsdWF0ZSB0aGUgbGFzdF9zY2hlZHVsZWQgZmllbGQuIFRoZSBvbmx5IGV4Y2Vw
dGlvbiBpcw0KPiA+IGRybV9zY2hlZF9lbnRpdHlfZXJyb3IoKSwgd2hpY2ggaXMgbm90IHBlcmZv
cm1hbmNlIGNyaXRpY2FsIGluIGFueSB3YXkuDQo+IA0KPiBJIGFncmVlIHRoaXMgbG9va3Mgb2Rk
IHNpbmNlIGFsbCBjYWxsIHNpdGVzIGFwYXJ0IGZyb20gDQo+IGRybV9zY2hlZF9lbnRpdHlfZXJy
b3IoKSB1c2UgDQo+ICJyY3VfZGVyZWZlcmVuY2VfY2hlY2soZW50aXR5LT5sYXN0X3NjaGVkdWxl
ZCwgdHJ1ZSk7IiBpZS4gImlnbm9yZSIgdGhlIFJDVS4NCj4gDQo+IEJ0dyB0aGlzIHdhcyBhZGRl
ZCBpbjoNCj4gDQo+IGNvbW1pdCA3MDEwMmQ3N2ZmMjJkZDg4YTAxMTFiMWMzYmFjNTA5OWFjNWQw
NDI1DQo+IEF1dGhvcjogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPiBEYXRlOsKgwqAgTW9uIEFwciAxNyAxNzozMjoxMSAyMDIzICswMjAwDQo+IA0KPiDCoMKg
wqDCoCBkcm0vc2NoZWR1bGVyOiBhZGQgZHJtX3NjaGVkX2VudGl0eV9lcnJvciBhbmQgdXNlIHJj
dSBmb3IgDQo+IGxhc3Rfc2NoZWR1bGVkDQo+IA0KPiBZb3UgbWF5IHdhbnQgdG8gYWRkIHRoaXMg
YXMgYSByZWZlcmVuY2UgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQpJIGRpZCBnaXQtYmxhbWUg
Zm9yIHRoYXQgY29tbWl0LiBJdCBsb29rcyBsaWtlIHRoaXM6DQoNCiAgICBkcm0vc2NoZWR1bGVy
OiBhZGQgZHJtX3NjaGVkX2VudGl0eV9lcnJvciBhbmQgdXNlIHJjdSBmb3IgbGFzdF9zY2hlZHVs
ZWQNCiAgICANCiAgICBTd2l0Y2ggdG8gdXNpbmcgUkNVIGhhbmRsaW5nIGZvciB0aGUgbGFzdCBz
Y2hlZHVsZWQgam9iIGFuZCBhZGQgYQ0KICAgIGZ1bmN0aW9uIHRvIHJldHVybiB0aGUgZXJyb3Ig
Y29kZSBvZiBpdC4NCg0KSXQncyBhIGdvb2QgZXhhbXBsZSBvZiB3aHkgSSB0aGluayBpdCdzIHNv
IHZpdGFsIHRvIHdyaXRlIHZlcmJvc2UNCmNvbW1pdCBtZXNzYWdlcy4gVGhlIG9ubHkgd2F5IHRv
IGZpbmQgb3V0IHdoeSB0aGlzIHdhcyBhZGRlZCBpcyB0byBhc2sNCnRoZSBhdXRob3IsIGlmIGhl
J3Mgc3RpbGwgYXJvdW5kIFt3aGljaCBpcyB0aGUgY2FzZSBpbiB0aGlzIGNhc2VdLg0KDQpJIGNh
bid0IHNlZSB0aGUgdmFsdWUgb2YgYWRkaW5nIGEgbGluaz8gVGhhdCBjb21taXQgc2F5cyAiYWRk
IGZvbyIgYW5kDQpteSBjb21taXQgc2F5cyAicmVtb3ZlIGZvbyBiZWNhdXNlIGl0IGFjaGlldmVz
IG5vdGhpbmciLg0KDQo+IEkgZ3Vlc3MgaXQgcmVsaWVkIG9uIGRtYS1mZW5jZSBSQ1UgZGVzdHJ1
Y3Rpb24gdG8gZW5hYmxlIGxvY2tsZXNzIA0KPiBsb29rdXBzIGZyb20gdGhlIEFNRCBzdWJtaXQg
cGF0aC4gR2l2ZW4gaG93IG1hbnkgb3RoZXIgbG9ja3Mgd2UgaGF2ZSBpbiANCj4gdGhvc2UgcGF0
aHMgaXQgaXMgcHJvYmFibHkgbm9pc2UgdG8gaGF2ZSBvbmUgbW9yZSBzbyBtYXliZSBpdCBpcyBh
IHdpbiANCj4gdG8gcmVtb3ZlIHNvbWUgYmFycmllcnMgYW5kIHRob3NlIHJjdV9kZXJlZmVyZW5j
ZV9jaGVjay10cnVlIGxpbmVzLiBJDQo+IHRoaW5rIENocmlzdGlhbiB3aWxsIG5lZWQgdG8gY29t
bWVudC4NCg0KTXkgYXJndW1lbnQgaXMgbW9yZSB0aGF0IGxvY2tzIGFyZSB0aGUgcmlnaHQgdG9v
bCB0byB1c2UgdW5sZXNzIHRoZXJlDQppcyBwcm9vZiB0byB0aGUgY29udHJhcnkuDQoNCj4gDQo+
ID4gSW1wcm92ZSByb2J1c3RuZXNzLCByZWFkYWJpbGl0eSBhbmQgbWFpbnRhaW5hYmlsaXR5IGJ5
IHJlcGxhY2luZyBSQ1UgYW5kDQo+ID4gYmFycmllcnMgd2l0aCB0aGUgbG9jay4NCj4gPiANCj4g
PiBBcyBhIHByZXBhcmF0aW9uYWwgc3RlcCwgd2hpbGUgYXQgaXQsIGFsc28gZ3VhcmQgc3BzY19x
dWV1ZV9wb3AoKSB3aXRoDQo+ID4gdGhlIGxvY2ssIHNpbmNlIHNwc2NfcXVldWUgaXMgZGVwcmVj
YXRlZCBhbmQgc3VwcG9zZWQgdG8gYmUgcmVwbGFjZWQNCj4gPiB3aXRoIGEgbG9ja2VkIGxpc3Qu
DQo+IA0KPiBZb3Ugd291bGQgaGF2ZSBzYWlkIHRvIHNwbGl0IHRoZSBsb2dpY2FsIGNoYW5nZXMg
aW50byBzZXBhcmF0ZSBwYXRjaGVzLg0KDQpNZT8gOkQNCg0KSW4gdGhpcyBjYXNlLCBhIGxvY2sg
dGhhdCBkaWQgbm90IGV4aXN0IGlzIGFkZGVkIGZyb20gbm93aGVyZS4gQnV0IEkNCnRlbmQgdG8g
dGhpbmsgdGhhdCB5b3UgYXJlIHJpZ2h0LiBXZSBjb3VsZCBsZWF2ZSBzcHNjX3F1ZXVlIGxvY2ts
ZXNzDQpmb3Igbm93LiBUaGF0J3MgY2xlYW5lci4NCg0KPiANCj4gPiANCg0KW+KApl0NCg0KPiA+
IA0KPiA+IMKgIHN0cnVjdCBkcm1fc2NoZWRfam9iICpkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2Io
c3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSkNCj4gPiDCoCB7DQo+ID4gKwkvKiBIZWxw
ZXIgdG8gYXZvaWQgZHJvcHBpbmcgdGhlIHJlZmVyZW5jZSB3aGlsZSB0aGUgZW50aXR5IGxvY2sg
aXMgaGVsZCwNCj4gPiArCSAqIGp1c3QgdG8gaGF2ZSBzb21lIG1vcmUgcm9idXN0bmVzcy4NCj4g
PiArCSAqLw0KPiA+ICsJc3RydWN0IGRtYV9mZW5jZSAqcHJldl9sYXN0X3NjaGVkdWxlZDsNCj4g
PiDCoMKgCXN0cnVjdCBkcm1fc2NoZWRfam9iICpzY2hlZF9qb2I7DQo+ID4gwqAgDQo+ID4gwqDC
oAlzY2hlZF9qb2IgPSBkcm1fc2NoZWRfZW50aXR5X3F1ZXVlX3BlZWsoZW50aXR5KTsNCj4gPiBA
QCAtNTIzLDE5ICs1MzIsMjAgQEAgc3RydWN0IGRybV9zY2hlZF9qb2IgKmRybV9zY2hlZF9lbnRp
dHlfcG9wX2pvYihzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqZW50aXR5KQ0KPiA+IMKgwqAJaWYg
KGVudGl0eS0+Z3VpbHR5ICYmIGF0b21pY19yZWFkKGVudGl0eS0+Z3VpbHR5KSkNCj4gPiDCoMKg
CQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZzY2hlZF9qb2ItPnNfZmVuY2UtPmZpbmlzaGVkLCAtRUNB
TkNFTEVEKTsNCj4gPiDCoCANCj4gPiAtCWRtYV9mZW5jZV9wdXQocmN1X2RlcmVmZXJlbmNlX2No
ZWNrKGVudGl0eS0+bGFzdF9zY2hlZHVsZWQsIHRydWUpKTsNCj4gPiAtCXJjdV9hc3NpZ25fcG9p
bnRlcihlbnRpdHktPmxhc3Rfc2NoZWR1bGVkLA0KPiA+IC0JCQnCoMKgIGRtYV9mZW5jZV9nZXQo
JnNjaGVkX2pvYi0+c19mZW5jZS0+ZmluaXNoZWQpKTsNCj4gPiArCXNwaW5fbG9jaygmZW50aXR5
LT5sb2NrKTsNCj4gPiArCXByZXZfbGFzdF9zY2hlZHVsZWQgPSBlbnRpdHktPmxhc3Rfc2NoZWR1
bGVkOw0KPiA+ICsJZW50aXR5LT5sYXN0X3NjaGVkdWxlZCA9IGRtYV9mZW5jZV9nZXQoJnNjaGVk
X2pvYi0+c19mZW5jZS0+ZmluaXNoZWQpOw0KPiA+IMKgIA0KPiA+IC0JLyoNCj4gPiAtCSAqIElm
IHRoZSBxdWV1ZSBpcyBlbXB0eSB3ZSBhbGxvdyBkcm1fc2NoZWRfZW50aXR5X3NlbGVjdF9ycSgp
IHRvDQo+ID4gLQkgKiBsb2NrbGVzc2x5IGFjY2VzcyAtPmxhc3Rfc2NoZWR1bGVkLiBUaGlzIG9u
bHkgd29ya3MgaWYgd2Ugc2V0IHRoZQ0KPiA+IC0JICogcG9pbnRlciBiZWZvcmUgd2UgZGVxdWV1
ZSBhbmQgaWYgd2UgYSB3cml0ZSBiYXJyaWVyIGhlcmUuDQo+ID4gKwkvKiBBIHJlY2VudCByZXdv
cmsgcmVxdWlyZWQgdGFraW5nIHRoZSBzcGlubG9jayBhYm92ZS4gU2luY2Ugc3BzY19xdWV1ZQ0K
PiA+ICsJICogaXMgc2NoZWR1bGVkIGZvciByZW1vdmFsIGFzIHBlciB0aGUgRFJNLVRPRE8tbGlz
dCwgd2UgYWNjZXNzIGl0IGhlcmUNCj4gPiArCSAqIGxvY2tlZCBhbHJlYWR5IHRvIHByZXBhcmUg
Zm9yIHRoYXQgY2xlYW51cC4NCj4gPiArCSAqDQo+ID4gKwkgKiBUT0RPOiBGdWxseSByZXBsYWNl
IHNwc2NfcXVldWUgd2l0aCBhIGxvY2tlZCAoaClsaXN0Lg0KPiA+IMKgwqAJICovDQo+ID4gLQlz
bXBfd21iKCk7DQo+ID4gLQ0KPiA+IMKgwqAJc3BzY19xdWV1ZV9wb3AoJmVudGl0eS0+am9iX3F1
ZXVlKTsNCj4gPiArCXNwaW5fdW5sb2NrKCZlbnRpdHktPmxvY2spOw0KPiA+IMKgIA0KPiA+ICsJ
ZG1hX2ZlbmNlX3B1dChwcmV2X2xhc3Rfc2NoZWR1bGVkKTsNCj4gPiDCoMKgCWRybV9zY2hlZF9y
cV9wb3BfZW50aXR5KGVudGl0eSk7DQo+IA0KPiBOb3RpY2UgdGhlIGVudGl0eS0+bG9jayBlbmRz
IHVwIGN5Y2xlZCB0d2ljZSBmb3Igbm8gZ29vZCByZWFzb24gKHNlY29uZCANCg0KR2V0dGluZyBy
aWQgb2YgaGFyZCB0byB1bmRlcnN0YW5kIGJhcnJpZXJzICsgUkNVICppcyogYSBfdmVyeV8gZ29v
ZA0KcmVhc29uLg0KDQo+IGlzIGluIGRybV9zY2hlZF9ycV9wb3BfZW50aXR5KCkpLiBTbyBJIHdv
dWxkIHN1Z2dlc3QgeW91IHNvbWVob3cgcmVkdWNlIA0KPiB0aGF0IHRvIG9uY2UuIFByb2JhYmx5
IGp1c3QgcHVsbCBvdXQgZW50aXR5LT5sb2NrIG91dCBvZiB0aGUgDQo+IGRybV9zY2hlZF9ycV9w
b3BfZW50aXR5KCkgdG8gZHJtX3NjaGVkX2VudGl0eV9wb3Bfam9iKCk/DQoNCkNhbiB5b3Ugc2Vl
IGRhbmdlciBpbiBzZW5zZSBvZiBhIHNpZ25pZmljYW50IHBlcmZvcm1hbmNlIHJlZ3Jlc3Npb24N
CmJlY2F1c2Ugb2YgdGhhdD8NCg0KPiANCj4gSSBndWVzcyBpZiB5b3UgZG8gdGhhdCB0aGVuIHRo
ZSAid2hpbGUgYXQgaXQiIHBhcnQgb2YgdGhlIGNvbW1pdCBtZXNzYWdlIA0KPiBjYW4gYmUgInVw
Z3JhZGVkIiB0byAic3BzY19xdWV1ZV9wb3AoKSBiZWluZyB1bmRlciB0aGUgbG9jayBhcyBhIA0K
PiBjb25zZXF1ZW5jZSBvZiB0aGUgcmV3b3JrIiBhbmQgdGhlbiBubyBuZWVkIHRvIHNwbGl0IGl0
Lg0KDQpJIGFncmVlIHdpdGggeW91IHRoYXQgaXQgc2hvdWxkIGJlICpkb3duZ3JhZGVkKiBpbnN0
ZWFkLg0KDQoNCj4gDQo+ID4gwqAgDQo+ID4gwqDCoAkvKiBKb2JzIGFuZCBlbnRpdGllcyBtaWdo
dCBoYXZlIGRpZmZlcmVudCBsaWZlY3ljbGVzLiBTaW5jZSB3ZSdyZQ0KPiA+IEBAIC01NjEsMjEg
KzU3MSwxNSBAQCB2b2lkIGRybV9zY2hlZF9lbnRpdHlfc2VsZWN0X3JxKHN0cnVjdCBkcm1fc2No
ZWRfZW50aXR5ICplbnRpdHkpDQo+ID4gwqDCoAlpZiAoc3BzY19xdWV1ZV9jb3VudCgmZW50aXR5
LT5qb2JfcXVldWUpKQ0KPiA+IMKgwqAJCXJldHVybjsNCj4gPiDCoCANCj4gPiAtCS8qDQo+ID4g
LQkgKiBPbmx5IHdoZW4gdGhlIHF1ZXVlIGlzIGVtcHR5IGFyZSB3ZSBndWFyYW50ZWVkIHRoYXQN
Cj4gPiAtCSAqIGRybV9zY2hlZF9ydW5fam9iX3dvcmsoKSBjYW5ub3QgY2hhbmdlIGVudGl0eS0+
bGFzdF9zY2hlZHVsZWQuIFRvDQo+ID4gLQkgKiBlbmZvcmNlIG9yZGVyaW5nIHdlIG5lZWQgYSBy
ZWFkIGJhcnJpZXIgaGVyZS4gU2VlDQo+ID4gLQkgKiBkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2Io
KSBmb3IgdGhlIG90aGVyIHNpZGUuDQo+ID4gLQkgKi8NCj4gPiAtCXNtcF9ybWIoKTsNCj4gPiAt
DQo+ID4gLQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9jaGVjayhlbnRpdHktPmxhc3Rfc2NoZWR1
bGVkLCB0cnVlKTsNCj4gPiArCXNwaW5fbG9jaygmZW50aXR5LT5sb2NrKTsNCj4gPiArCWZlbmNl
ID0gZW50aXR5LT5sYXN0X3NjaGVkdWxlZDsNCj4gPiDCoCANCj4gPiDCoMKgCS8qIHN0YXkgb24g
dGhlIHNhbWUgZW5naW5lIGlmIHRoZSBwcmV2aW91cyBqb2IgaGFzbid0IGZpbmlzaGVkICovDQo+
ID4gLQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQo+ID4gKwlp
ZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpIHsNCj4gPiArCQlzcGlu
X3VubG9jaygmZW50aXR5LT5sb2NrKTsNCj4gDQo+IEhhdmUgeW91IHRyaWVkIHdpdGggbG9ja2Rl
cCB0byBzZWUgaWYgdGhlcmUgYXJlIGFueSBoaWRkZW4gbG9jayANCj4gaW52ZXJzaW9ucyB3aXRo
IHRoaXM/DQoNCkFzIGZhciBhcyBJIGNvdWxkIGdyZXAgcmVhbGx5IG5vIG9uZSB0b3VjaGVzIHRo
ZSBlbnRpdHkgbG9jayAod2hpY2ggaXMNCm5vdCBzdXJwcmlzaW5nLCBzaW5jZSB0aGUgZW50aXJl
IGRybV9zY2hlZCBkZXNpZ24gcmVzb2x2ZXMgYXJvdW5kIHRoZQ0KY2VudHJhbCBwaGlsb3NvcGh5
OiAiTkVWRVIgdXNlIGEgc3BpbmxvY2sgdW5sZXNzIHlvdSBhYnNvbHV0ZWx5IGhhdmUNCnRvIi4g
V2hlbiB5b3UgbG9vayBhdCB0aGUgb2xkIGNvZGUgYW5kIGRvY3VtZW50YXRpb24sIHlvdSBzZWUg
dGhhdA0KbG9ja3Mgd2VyZSByZWFsbHkgb25seSBldmVyIHVzZWQgdG8gcHJvdGVjdCBsaXN0cy4N
Cg0KQW55d2F5cy4gVGhpcyBpcyB0aGUgc2NoZWR1bGVyJ3MgZmVuY2UuIEl0IGNhbiBuZXZlciBp
bXBsZW1lbnQgYW55DQpjYWxsYmFjayB0byBzb21lb25lIHdobyBtaWdodCBpbnRlcmZlcmUgd2l0
aCB0aGUgZW50aXR5IGxvY2ssIGNhbiBpdD8NCg0KPiANCj4gSSBhbHNvIHdvbmRlciBpZiB3ZSBj
b3VsZCBkZW1vdGUgdGhpcyB0byBhIGZsYWcgY2hlY2sgb25seSBhbmQgcmVtb3ZlDQo+IGFueSBk
b3VidC4gSSBkb24ndCB0aGluayBvcHBvcnR1bmlzdGljIHNpZ25hbGxpbmcgbWF0dGVyIGluIHRo
aXMgY29kZSBwYXRoLg0KDQpXaXRoIHRoZSBuZXcgZmVuY2UgQVBJLCB3aGVyZSB3ZSBjYW4gYnlw
YXNzIHRoZSBvcHMsIHRoYXQgd291bGQNCnByb2JhYmx5IGJlIHRoZSBtb3JlIGNhbm9uaWNhbCBj
b2RlLiBCdXQgdGhhdCdzIHRoZW4gaW5kZWVkIHNvbWV0aGluZw0KZm9yIGEgc2VwYXJhdGUgcGF0
Y2guDQoNCg0KUC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
