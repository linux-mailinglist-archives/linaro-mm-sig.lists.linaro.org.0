Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCX1CiZl5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C9135431CC1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE29E3F7A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:40:52 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 95A3E404AE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 15:37:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=hWMWG3or;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mYNwM0J3f8E8VOY/oeiqgSWmb0DW6P+uM/hk330XqIM=; b=hWMWG3ors1UZ5eKQ2/SIpSFxVk
	h0uUCBaSDzzQzlQjYOKq6EW7yt8MVoU3or7rM9rHpTx63mte8larmy16ePf5MfGfiKfGbSUdAvqvf
	oBT6gT1O+Dw6CcrVCoWMNUykgiFdWop1gDUx9A4Z7mUN0bKBzixAequt6ebQhi97fnDtLgphQ2Ncq
	f0D4ymdRegDFnsAuJwFRUnIAh9IkrouxQGk+HX9HYZwW/avGC8bRIV31SQwBbtDD0tpU6MbpHDNIb
	ULJyH43alSLhZkRThMbOgPPuTt7eAxyXZ4tU2ewbpA0+P2EhtUChx1uXS8bY3ZPVk4GKRBynOVj9d
	R4o5XFDg==;
Received: from [90.240.106.137] (helo=[192.168.0.101])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wBDvN-00ESAa-QW; Fri, 10 Apr 2026 17:37:37 +0200
Message-ID: <601a78ea-74e7-4b20-afeb-d822a362484a@igalia.com>
Date: Fri, 10 Apr 2026 16:37:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
 <20260331094944.772833c0@fedora>
 <918805b0-2cb9-454a-9048-84cc5bfc8798@igalia.com>
 <2fae926b-a25b-42bc-ab63-caf36505b33d@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <2fae926b-a25b-42bc-ab63-caf36505b33d@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: E2LGNEH7SYSQMBWOGRH5GYDJPDOMVQUM
X-Message-ID-Hash: E2LGNEH7SYSQMBWOGRH5GYDJPDOMVQUM
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:39:06 +0000
CC: dri-devel@lists.freedesktop.org, kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E2LGNEH7SYSQMBWOGRH5GYDJPDOMVQUM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[242];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email,linaro.org:email,amd.com:email,igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: C9135431CC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMC8wNC8yMDI2IDA5OjU4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiA0Lzkv
MjYgMTU6NTgsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPj4NCj4+IE9uIDMxLzAzLzIwMjYgMDg6
NDksIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4+PiBPbiBNb24sIDMwIE1hciAyMDI2IDE0OjM2
OjIzICswMTAwDQo+Pj4gVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+
IHdyb3RlOg0KPj4+DQo+Pj4+IE1vdmUgdGhlIHNpZ25hbGxpbmcgdHJhY2Vwb2ludCB0byBiZWZv
cmUgZmVuY2UtPm9wcyBhcmUgcmVzZXQgb3RoZXJ3aXNlDQo+Pj4+IHRyYWNlcG9pbnQgd2lsbCBk
ZXJlZmVyZW5jZSBhIG51bGwgcG9pbnRlci4NCj4+Pg0KPj4+IEkgc3VzcGVjdCBvdGhlciB0cmFj
ZSBwb2ludHMgYXJlIGltcGFjdGVkIHRvbw0KPj4+ICh0cmFjZV9kbWFfZmVuY2VfZGVzdHJveSgp
IGlzLCBhdCB0aGUgdmVyeSBsZWFzdCkuDQo+Pg0KPj4gSW5kZWVkLiBJIHdvbmRlciB3aHkgdGhh
dCBkaWQgbm90IHRyaWdnZXIgZm9yIG1lLCB3aGlsZSB0aGUgb25lIEkgZml4IGhlcmUgd2FzIGFu
IGluc3RhLWNyYXNoLi4uDQo+IA0KPiBZb3UgbmVlZCB0byBhY3R1YWxseSBlbmFibGUgdGhlIHRy
YWNlIHBvaW50cyBhbmQgYXQgbGVhc3QgZm9yIHRoZSBkZXN0cm95IG9uZSBub2JvZHkgaXMgdXN1
YWxseSBpbnRlcmVzdGVkIGluIHRoYXQuDQoNClJpZ2h0LCBidXQgSSB3YXMgcHJldHR5IHN1cmUg
SSB3YXMgZW5hYmxpbmcgcGVyZiByZWNvcmQgLWUgJ2RtYV9mZW5jZToqJyANCndoZW4gSSBoaXQg
dGhpcy4gQW55d2F5LCBpdCBkb2Vzbid0IG1hdHRlciwgSSBjb3VsZCBiZSBtaXNyZW1lbWJlcmlu
Zy4NCg0KPj4NCj4+IFRvIGZpeCB0cmFjZV9kbWFfZmVuY2VfZGVzdHJveSBJIHRoaW5rIHdlIG5l
ZWQgYSBuZXcgdHJhY2Vwb2ludCBkZWZpbml0aW9uIGllLiBtb3ZlIGl0IGF3YXkgZnJvbSB0aGUg
ZXhpc3RpbmcgZXZlbnQgY2xhc3MgLSBtYWtlIGl0IGp1c3QgbG9nIHRoZSBjb250ZXh0IGFuZCBz
ZXFuby4NCj4+DQo+PiBBbnlvbmUgaGFzIGEgYmV0dGVyIGlkZWE/DQo+IA0KPiBUaGUgaWRlYSBv
ZiB0cmFjaW5nIHdpdGhvdXQgYWNjZXNzaW5nIGZlbmNlLT5vcHMgc291bmRzIHZhbGlkIHRvIG1l
Lg0KPiANCj4gQWx0ZXJuYXRpdmVseSB3ZSBjb3VsZCBjYWxsIGRtYV9mZW5jZV90aW1lbGluZV9u
YW1lKCkgYW5kIGRtYV9mZW5jZV9kcml2ZXJfbmFtZSgpIGZyb20gdGhlIHRyYWNlcG9pbnQgYXMg
d2VsbCwgYnV0IHRoYXQgbWVhbnMgdGhlIHRyYWNlcG9pbnRzIG5vdyByZXF1aXJlIGEgUkNVIHJl
YWQgc2lkZSBsb2NrLg0KDQpXZSBjb3VsZCBwb3NzaWJseSB1c2UgdGhlIGhlbHBlcnMuIEkgYW0g
bm90IHN1cmUgaWYgUkNVIGFubm90YXRpb24gd291bGQgDQpoYXZlIHRvIGJlIGNhc3RlZCBhd2F5
IHRvIGtlZXAgc3BhcnNlIGhhcHB5LCBidXQgbW9yZSBpbXBvcnRhbnRseSwgSSANCnRoaW5rIGl0
IHdvdWxkIG5vdCBiZSBzYWZlLg0KDQogICB0aHJlYWQgQQkJCQkJdGhyZWFkIEINCg0KICAgZG1h
X2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkCQlkbWFfZmVuY2VfdGltZWxpbmVfbmFtZQ0K
ICAgICAuLgkJCQkJCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCgkJCQkJCWlm
ICghZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmZW5jZSkpDQogICAgIHRlc3RfYW5kX3Nl
dF9iaXQNCiAgICAgLi4NCiAgICAgUkNVX0lOSVRfUE9JTlRFUihmZW5jZS0+b3BzLCBOVUxMKTsN
CiAgICAgCQkJCQkJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopb3BzLT5nZXRfZHJpdmVyX25h
bWUoZmVuY2UpOyAvLyBPT1BTIQ0KDQpBcG9sb2dpZXMgZm9yIGxvbmcgbGluZSBsZW5ndGgsIGl0
IGRpZCBub3QgZml0IG90aGVyd2lzZS4NCg0KTG9va3MgbGlrZSB3ZSBtaXNzZWQgdGhpcy4gT3Ig
aXQgaXMgbWUgd2hvIGlzIG1pc3Npbmcgc29tZXRoaW5nPw0KUmVnYXJkcywNCg0KVHZydGtvDQoN
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxp
YS5jb20+DQo+Pj4+IEZpeGVzOiA1NDFjOGYyNDY4YjkgKCJkbWEtYnVmOiBkZXRhY2ggZmVuY2Ug
b3BzIG9uIHNpZ25hbCB2MyIpDQo+Pj4+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQo+Pj4+IENjOiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwu
b3JnPg0KPj4+PiBDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3Jh
LmNvbT4NCj4+Pj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPj4+PiBDYzogbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+Pj4+IC0tLQ0KPj4+PiAgwqAgZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jIHwgMyArKy0NCj4+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+
PiBpbmRleCAxODI2YmE3MzA5NGMuLjFjMWVhZWNhZjFiMCAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYw0KPj4+PiBAQCAtMzYzLDYgKzM2Myw4IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90
aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmZmVuY2UtPmZsYWdzKSkpDQo+
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOw0KPj4+PiAgwqAgK8KgwqDCoCB0cmFjZV9k
bWFfZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KPj4+PiArDQo+Pj4+ICDCoMKgwqDCoMKgIC8qDQo+
Pj4+ICDCoMKgwqDCoMKgwqAgKiBXaGVuIG5laXRoZXIgYSByZWxlYXNlIG5vciBhIHdhaXQgb3Bl
cmF0aW9uIGlzIHNwZWNpZmllZCBzZXQgdGhlIG9wcw0KPj4+PiAgwqDCoMKgwqDCoMKgICogcG9p
bnRlciB0byBOVUxMIHRvIGFsbG93IHRoZSBmZW5jZSBzdHJ1Y3R1cmUgdG8gYmVjb21lIGluZGVw
ZW5kZW50DQo+Pj4+IEBAIC0zNzcsNyArMzc5LDYgQEAgdm9pZCBkbWFfZmVuY2Vfc2lnbmFsX3Rp
bWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+Pj4+ICDCoCDCoMKgwqDC
oMKgIGZlbmNlLT50aW1lc3RhbXAgPSB0aW1lc3RhbXA7DQo+Pj4+ICDCoMKgwqDCoMKgIHNldF9i
aXQoRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7DQo+Pj4+IC3C
oMKgwqAgdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsNCj4+Pj4gIMKgIMKgwqDCoMKg
wqAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGN1ciwgdG1wLCAmY2JfbGlzdCwgbm9kZSkgew0K
Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIElOSVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOw0KPj4+
DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
