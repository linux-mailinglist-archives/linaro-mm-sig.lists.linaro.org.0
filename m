Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zkUGIEdwVmpM5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCA17575BE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:22:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b=M+Gs7SKK;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 107B1401F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:22:14 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id CF2933F7B4
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2026 08:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jknh75JH1P0CBTsivHhJoCFnbVm0gTLli2CnNEauNK8=; b=M+Gs7SKKHMqEtDOlgnQEd1iVQU
	HQvocK2D4tkQtvgMbMxs0c54ABt4LqrYEXu1b3DKAY98TgBFzwQVrVIzeR19iwhOVYDKSRDDMERzL
	ONlPhxXwIPOUhA10uBYE7fv2aAF/tXFCAgnene87JfjTVa3EupzKqZnywxNHjyf75mjvQAvma6hkb
	H+t0FRPFebqyf+9Xi+enJLXYf3WtcnxW8OYUIzlaVuUvUWc0d1WQjVKUXoM8I92u5ZjDtnXmtlj/K
	LK9O2QkHq3Mv9kAbGiuu3AxK9ai9KrcN8BphTHm4yjaDWAYqCEz1t4EzsE8sKvA06vjJZo/vpB5Gs
	IyeMqucQ==;
Received: from [90.240.106.137] (helo=[192.168.0.116])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wgexk-009e5C-3f; Mon, 06 Jul 2026 10:46:00 +0200
Message-ID: <ce33edbb-11dd-4722-bb87-d16155f35a75@igalia.com>
Date: Mon, 6 Jul 2026 09:45:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Tvrtko Ursulin <tursulin@ursulin.net>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Marco Pagani
 <marco.pagani@linux.dev>, Boris Brezillon <boris.brezillon@collabora.com>
References: <20260701085920.3253248-2-phasta@kernel.org>
 <20260701085920.3253248-3-phasta@kernel.org>
 <a4091099-1931-4ca2-a81a-9c3321b123a8@ursulin.net>
 <51fbde808bd059510d667d130afae179626303be.camel@mailbox.org>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <51fbde808bd059510d667d130afae179626303be.camel@mailbox.org>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QIZMP7INGL3R7RGIPMKLPK3U65TWSKRU
X-Message-ID-Hash: QIZMP7INGL3R7RGIPMKLPK3U65TWSKRU
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:28 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] drm/sched: Protect entity->last_scheduled with spinlock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QIZMP7INGL3R7RGIPMKLPK3U65TWSKRU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	DATE_IN_PAST(1.00)[200];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:tursulin@ursulin.net,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,ursulin.net,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DCA17575BE

DQpPbiAwMy8wNy8yMDI2IDE1OjQ3LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+IE9uIEZyaSwg
MjAyNi0wNy0wMyBhdCAxMjoyNyArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pg0KPj4g
T24gMDEvMDcvMjAyNiAwOTo1OSwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPj4+IFRoZSBlbnRp
dHktPmxhc3Rfc2NoZWR1bGVkIGZpZWxkIGhhcyBhbHdheXMgYmVlbiBzZXQgYW5kIHJlYWQgd2l0
aA0KPj4+IHNwZWNpYWwgUkNVIGZ1bmN0aW9ucyBpbiBhZGRpdGlvbiB0byBtZW1vcnkgYmFycmll
cnMuDQo+Pj4NCj4+PiBUaGlzIHdhcyBhZGRlZCBpbg0KPj4+DQo+Pj4gY29tbWl0IDcwMTAyZDc3
ZmYyMiAoImRybS9zY2hlZHVsZXI6IGFkZCBkcm1fc2NoZWRfZW50aXR5X2Vycm9yIGFuZCB1c2Ug
cmN1IGZvciBsYXN0X3NjaGVkdWxlZCIpDQo+Pj4NCj4+PiBob3dldmVyLCBubyBwcm9wZXIganVz
dGlmaWNhdGlvbiBmb3IgdGhhdCBtZWNoYW5pc20gd2FzIHByb3ZpZGVkLiBUaGVyZQ0KPj4+IHNl
ZW1zIHRvIGJlIG5vIG9idmlvdXMgcmVhc29uLCBzaW5jZSB0aGUgZW50aXR5IGxvY2sgaXMgYXZh
aWxhYmxlIGFuZA0KPj4+IHRha2VuIGF0IGFsbCBwbGFjZXMgdGhhdCBldmFsdWF0ZSB0aGUgbGFz
dF9zY2hlZHVsZWQgZmllbGQuIFRoZSBvbmx5DQo+Pj4gZXhjZXB0aW9uIGlzIGRybV9zY2hlZF9l
bnRpdHlfZXJyb3IoKSwgd2hpY2ggaXMgbm90IHBlcmZvcm1hbmNlIGNyaXRpY2FsDQo+Pj4gaW4g
YW55IHdheS4NCj4+Pg0KPj4+IEltcHJvdmUgcm9idXN0bmVzcywgcmVhZGFiaWxpdHkgYW5kIG1h
aW50YWluYWJpbGl0eSBieSByZXBsYWNpbmcgUkNVIGFuZA0KPj4+IGJhcnJpZXJzIHdpdGggdGhl
IGxvY2suDQo+Pg0KPj4gRmlyc3QgdGhpbmcsIGFuZCByZWdhcmRsZXNzIG9mIG90aGVyIHN0cmFu
ZHMgb2YgZGlzY3Vzc2lvbiwgSSB0aGluayBpdA0KPj4gc2hvdWxkIGJlIHNxdWFzaGVkIHdpdGgg
My81IGluc3RlYWQgb2YgdGhhdCBvbmUgdW5kb2luZyB0aGUgaW50cm9kdWN0aW9uDQo+PiBvZiBs
b2NrLXVubG9jay1sb2NrLXVubG9jay4NCj4gDQo+IEkgYWdyZWUgdGhhdCB0aGVyZSBzaG91bGQg
bm90IGJlIGEgZG8tdW5kbyBwYXR0ZXJuLCBidXQgSSBkb24ndCB3YW50IHRvDQo+IHNxdWFzaCB0
aGF0LCBpdCdzIHF1aXRlIGEgZGlzdGluY3RpdmUgYWN0aW9uLiBPbmUgcGF0Y2ggYWRkcyBsb2Nr
cywgdGhlDQo+IG90aGVyIG1vdmVzIHRoZW0uDQoNCkhtLCBtYXliZSBpdCBpcyBhIHNlbWFudGlj
IGRpc2N1c3Npb24gd2hldGhlciB0aGVyZSBpcyBhbnkgcmVhbCBhZGRpbmcgDQpvZiB0aGUgbG9j
a3MsIHdoZW4gdGhlIGVmZmVjdGl2ZSBlbmQgcmVzdWx0IGlzIGp1c3Qgd2lkZW5pbmcgb2YgaXQn
cyANCnNjb3BlIGJ5IHB1bGxpbmcgaXQgb3V0IG9mIHRoZSBoZWxwZXIgdG8gY2FsbGVyLiBCdXQg
b2theSwgcHJlcCBwYXRjaCB0byANCm1vdmUgdGhlIGxvY2sgb3V0IHNvdW5kcyBsaWtlIGl0IGNv
dWxkIGxvb2sgYWNjZXB0YWJsZS4NCg0KPiBCdXQgd2hhdCBJIGNhbiBkbyBpcyBtb3ZlIHRoYXQg
cGF0Y2ggYmVmb3JlIOKEljEgaGVyZSBzbyB0aGF0IGl0IGJlY29tZXMNCj4gdW5kZXJzdGFuZGFi
bGUgYXMgYSBwcmVwYXJhdGlvbmFsIGNvbW1pdC4NCj4gDQo+Pg0KPj4gRm9yIHdoYXQgdGhlIG1h
aW4gdG9waWMgaXMgY29uY2VybmVkLCBJIHJlYWxseSBsaWtlIHRoZSByZW1vdmFsIG9mIGFsbA0K
Pj4gdGhlIHJjdV9kZXJlZmVyZW5jZV9jaGVjaygsIHRydWUpIGxpbmVzIGFuZCB0aGUgbWVtb3J5
IGJhcnJpZXJzLg0KPj4NCj4+IEJ1dCBJIGFsc28gdGhpbmsgdGhlIGNvbW1pdCBtZXNzYWdlIHNo
b3VsZCBleHBsYWluIGJldHRlciB3aGF0IGNvZGUNCj4+IHBhdGhzIGFyZSBub3cgdGFraW5nIGFu
IGV4dHJhIGxvY2sgLSB1bmRlciB3aGljaCBjaXJjdW1zdGFuY2VzIGlzIHRoZQ0KPj4gbG9jayBu
b3cgdGFrZW4gZm9yIGFsbCBzY2hlZHVsZXIgdXNlcnMsIGFuZCB3aGljaCBhbWRncHUgcGF0aHMg
dXNlDQo+PiBkcm1fc2NoZWRfZW50aXR5X2Vycm9yKCkgYSBsb3Qgc28gY291bGQgYmUgYWZmZWN0
ZWQuIEkgZG91YnQgaXQgY3JlYXRlcw0KPj4gYSBtZWFzdXJhYmxlIHBlcmZvcm1hbmNlIGltcGFj
dCBidXQgaXQgbmVlZHMgdG8gYmUgZXhwbGFpbmVkLg0KPiANCj4gSSB0aGluayBpdCBjYW4gZGV0
YWlsIHdoaWNoIGZ1bmN0aW9ucyB3aWxsIG5vdyBiZSBsb2NrZWQ7IGJ1dA0KPiBtZW50aW9uaW5n
IHRoZSB1c2VycyB3b3VsZCBiZSBvdmVya2lsbCBhbmQgaXMgdW5jb21tb24gZm9yIEFQSSByZXdv
cmtzLg0KDQpIZXJlIEkgZGlzYWdyZWUgcXVpdGUgc3Ryb25nbHkuIEdpdmVuIHRoZSBwYXRjaCBp
cyBtYWtpbmcgc3Ryb25nIGNsYWltcyANCnRoYXQgdGhlIGxvY2tsZXNzIGFjY2VzcyB3YXMgYWRk
ZWQgZm9yIG5vIG9idmlvdXMgcmVhc29uLCBhbmQgdGhhdCB3ZSANCmhhdmUgbm93IGVzdGFibGlz
aGVkIHRoZSBsb2NrbGVzcyBoZWxwZXIgaXMgaW4gZmFjdCB1c2VkIG9uIHRoZSANCnN1Ym1pc3Np
b24gcGF0aHMsIGl0IGlzIHJlYWxseSByZXF1aXJlZCB0aGF0IHRob3NlIHN0cm9uZyBjbGFpbXMg
YXJlIA0KYmFja2VkIGJ5IGEgY29uY3JldGUgYW5hbHlzaXMgaW5zdGVhZCBvZiBqdXN0IHNheWlu
ZyAibm90IHBlcmZvcm1hbmNlIA0KY3JpdGljYWwgaW4gYW55IHdheSIuDQoNCj4+IEkgYW0gYWxz
byBoYXBweSB0byBnaXZlIGl0IGEgc3BpbiBvbiB0aGUgU3RlYW0gRGVjayB0byBzZWUgaWYgSSBj
YW4NCj4+IG9ic2VydmUgYW55dGhpbmcuDQo+IA0KPiBDb3VsZCBiZSBpbnRlcmVzdGluZy4NCg0K
T2theSBJJ2xsIHRyeSB0byBkbyBpdCBpbiByZWFzb25hYmxlIHRpbWUuIFlvdSBjYW4gZWl0aGVy
IHJlc3BpbiBvciB3YWl0IA0KZm9yIGl0LCBJIGRvbid0IG1pbmQgZWl0aGVyIHdheS4NCg0KPj4+
IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+Pj4g
LS0tDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCA1
MCArKysrKysrKysrLS0tLS0tLS0tLS0tLS0NCj4+PiAgwqAgaW5jbHVkZS9kcm0vZ3B1X3NjaGVk
dWxlci5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDkgKystLS0NCj4+PiAgwqAgMiBm
aWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPj4+IGluZGV4IGM1MTEw
MWVjNzBjMS4uOTFhZWMyMDYxMWFkIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfZW50aXR5LmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX2VudGl0eS5jDQo+Pj4gQEAgLTEzNSw3ICsxMzUsNiBAQCBpbnQgZHJtX3NjaGVk
X2VudGl0eV9pbml0KHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHksDQo+Pj4gIMKgwqAJ
ZW50aXR5LT5udW1fc2NoZWRfbGlzdCA9IG51bV9zY2hlZF9saXN0Ow0KPj4+ICDCoMKgCWVudGl0
eS0+c2NoZWRfbGlzdCA9IG51bV9zY2hlZF9saXN0ID4gMSA/IHNjaGVkX2xpc3QgOiBOVUxMOw0K
Pj4+ICDCoMKgCWVudGl0eS0+cnEgPSAmc2NoZWRfbGlzdFswXS0+cnE7DQo+Pj4gLQlSQ1VfSU5J
VF9QT0lOVEVSKGVudGl0eS0+bGFzdF9zY2hlZHVsZWQsIE5VTEwpOw0KPj4+ICDCoMKgCVJCX0NM
RUFSX05PREUoJmVudGl0eS0+cmJfdHJlZV9ub2RlKTsNCj4+PiAgwqDCoAlpbml0X2NvbXBsZXRp
b24oJmVudGl0eS0+ZW50aXR5X2lkbGUpOw0KPj4+ICAgIA0KPj4+IEBAIC0yMDEsMTAgKzIwMCwx
MCBAQCBpbnQgZHJtX3NjaGVkX2VudGl0eV9lcnJvcihzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAq
ZW50aXR5KQ0KPj4+ICDCoMKgCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KPj4+ICDCoMKgCWlu
dCByOw0KPj4+ICAgIA0KPj4+IC0JcmN1X3JlYWRfbG9jaygpOw0KPj4+IC0JZmVuY2UgPSByY3Vf
ZGVyZWZlcmVuY2UoZW50aXR5LT5sYXN0X3NjaGVkdWxlZCk7DQo+Pj4gKwlzcGluX2xvY2soJmVu
dGl0eS0+bG9jayk7DQo+Pj4gKwlmZW5jZSA9IGVudGl0eS0+bGFzdF9zY2hlZHVsZWQ7DQo+Pj4g
IMKgwqAJciA9IGZlbmNlID8gZmVuY2UtPmVycm9yIDogMDsNCj4+PiAtCXJjdV9yZWFkX3VubG9j
aygpOw0KPj4+ICsJc3Bpbl91bmxvY2soJmVudGl0eS0+bG9jayk7DQo+Pj4gICAgDQo+Pj4gIMKg
wqAJcmV0dXJuIHI7DQo+Pj4gIMKgIH0NCj4+PiBAQCAtMjg3LDkgKzI4NiwxMCBAQCB2b2lkIGRy
bV9zY2hlZF9lbnRpdHlfa2lsbChzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqZW50aXR5KQ0KPj4+
ICDCoMKgCS8qIE1ha2Ugc3VyZSB0aGlzIGVudGl0eSBpcyBub3QgdXNlZCBieSB0aGUgc2NoZWR1
bGVyIGF0IHRoZSBtb21lbnQgKi8NCj4+PiAgwqDCoAl3YWl0X2Zvcl9jb21wbGV0aW9uKCZlbnRp
dHktPmVudGl0eV9pZGxlKTsNCj4+PiAgICANCj4+PiAtCS8qIFRoZSBlbnRpdHkgaXMgZ3VhcmFu
dGVlZCB0byBub3QgYmUgdXNlZCBieSB0aGUgc2NoZWR1bGVyICovDQo+Pj4gLQlwcmV2ID0gcmN1
X2RlcmVmZXJlbmNlX2NoZWNrKGVudGl0eS0+bGFzdF9zY2hlZHVsZWQsIHRydWUpOw0KPj4+ICsJ
c3Bpbl9sb2NrKCZlbnRpdHktPmxvY2spOw0KPj4+ICsJcHJldiA9IGVudGl0eS0+bGFzdF9zY2hl
ZHVsZWQ7DQo+Pj4gIMKgwqAJZG1hX2ZlbmNlX2dldChwcmV2KTsNCj4+PiArCXNwaW5fdW5sb2Nr
KCZlbnRpdHktPmxvY2spOw0KPj4+ICDCoMKgCXdoaWxlICgoam9iID0gZHJtX3NjaGVkX2VudGl0
eV9xdWV1ZV9wb3AoZW50aXR5KSkpIHsNCj4+PiAgwqDCoAkJc3RydWN0IGRybV9zY2hlZF9mZW5j
ZSAqc19mZW5jZSA9IGpvYi0+c19mZW5jZTsNCj4+PiAgICANCj4+PiBAQCAtMzgxLDggKzM4MSw3
IEBAIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9maW5pKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICpl
bnRpdHkpDQo+Pj4gIMKgwqAJCWVudGl0eS0+ZGVwZW5kZW5jeSA9IE5VTEw7DQo+Pj4gIMKgwqAJ
fQ0KPj4+ICAgIA0KPj4+IC0JZG1hX2ZlbmNlX3B1dChyY3VfZGVyZWZlcmVuY2VfY2hlY2soZW50
aXR5LT5sYXN0X3NjaGVkdWxlZCwgdHJ1ZSkpOw0KPj4+IC0JUkNVX0lOSVRfUE9JTlRFUihlbnRp
dHktPmxhc3Rfc2NoZWR1bGVkLCBOVUxMKTsNCj4+PiArCWRtYV9mZW5jZV9wdXQoZW50aXR5LT5s
YXN0X3NjaGVkdWxlZCk7DQo+Pj4gIMKgwqAJZHJtX3NjaGVkX2VudGl0eV9zdGF0c19wdXQoZW50
aXR5LT5zdGF0cyk7DQo+Pj4gIMKgIH0NCj4+PiAgwqAgRVhQT1JUX1NZTUJPTChkcm1fc2NoZWRf
ZW50aXR5X2ZpbmkpOw0KPj4+IEBAIC01MDcsNiArNTA2LDEwIEBAIGRybV9zY2hlZF9qb2JfZGVw
ZW5kZW5jeShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iLA0KPj4+ICAgIA0KPj4+ICDCoCBzdHJ1
Y3QgZHJtX3NjaGVkX2pvYiAqZHJtX3NjaGVkX2VudGl0eV9wb3Bfam9iKHN0cnVjdCBkcm1fc2No
ZWRfZW50aXR5ICplbnRpdHkpDQo+Pj4gIMKgIHsNCj4+PiArCS8qIEhlbHBlciB0byBhdm9pZCBk
cm9wcGluZyB0aGUgcmVmZXJlbmNlIHdoaWxlIHRoZSBlbnRpdHkgbG9jayBpcyBoZWxkLA0KPj4+
ICsJICoganVzdCB0byBoYXZlIHNvbWUgbW9yZSByb2J1c3RuZXNzLg0KPj4+ICsJICovDQo+Pg0K
Pj4gSSBkb24ndCBnZXQgdGhpcyBjb21tZW50LiBOZWl0aGVyIHRoZSBwbGFjZW1lbnQgb3IgdGhl
IGNvbnRlbnQuDQo+IA0KPiBJdCBleHBsYWlucyB0aGUgcHVycG9zZSBvZiB0aGUgdmFyaWFibGUg
J3ByZXZfbGFzdF9zY2hlZHVsZWQnLCB3aGljaA0KPiBleGlzdHMgc28gdGhhdCBhIHJlZmVyZW5j
ZSBkb2VzIG5vdCBkcm9wIHVuZGVyIGxvY2sgcHJvdGVjdGlvbi4NCg0KQWggYSBoZWxwZXIgX3Zh
cmlhYmxlXywgcmlnaHQsIEkgd2FzIHRocm93biBvZmYgYnkgdGhlIGNvbW1lbnQganVzdCANCmJl
bG93IHRoZSBmdW5jdGlvbiBhbmQgZGlkIG5vdCBldmVuIHNwb3QgeW91IGFkZGVkIGEgbmV3IGxv
Y2FsLg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KPiANCj4gDQo+IFAuDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
