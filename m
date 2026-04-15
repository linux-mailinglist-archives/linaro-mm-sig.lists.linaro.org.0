Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KADvKdxl5mmJvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1D2431F0B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E83B6406BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:43:54 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 249E33F7E8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 07:58:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=hpdWBxB0;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wk5fQOuSYbPGWBEXVmoIfB88ZJN8adqjqkyKfZo1h8c=; b=hpdWBxB0PPHM/7ZF0OzqSlg5ny
	0QLJ9SBnmKhC/rWmpIKctGFBmiNdfY0ky4ji/v1EEoST+ef4iJAIOeonSRD34rGwIcevB3TLksFRZ
	yR0yQPtfW24VWxKFKIjtjWkRTsy3yM+XEM4GEQNq4AzhRnhjcv1rD+TOGDpjUg+7Q9KD0ORuiB9Zx
	sCNR3ZoJ1aOSD4egpytL73oZKRtXIzQiSDgmaY/oGBLAWcR155uhAaU9yzyRizpFF4UTUncG9wGjx
	fwf3igGFupw8K0gZfxfLgR5FC5ZIFMmxAR2Imj+D9vwrFmof1BbL+9V6isvS6rYM/T3gKSOPfv9Xc
	Ly/DaFkA==;
Received: from [90.240.106.137] (helo=[192.168.0.101])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wCv8b-00GGKd-RO; Wed, 15 Apr 2026 09:58:17 +0200
Message-ID: <5fea79b5-ab5a-4a98-95c8-6452b20e83c4@igalia.com>
Date: Wed, 15 Apr 2026 08:58:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
References: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
 <20260414154928.32934-2-tvrtko.ursulin@igalia.com>
 <650e835e-b60d-44fd-b212-47f8a9d18c15@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <650e835e-b60d-44fd-b212-47f8a9d18c15@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4X7ILLUEVY74UEAJOSRLXMNUFKRFTJS2
X-Message-ID-Hash: 4X7ILLUEVY74UEAJOSRLXMNUFKRFTJS2
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:32 +0000
CC: kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4X7ILLUEVY74UEAJOSRLXMNUFKRFTJS2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[129];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx];
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
	NEURAL_HAM(-0.00)[-0.669];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,igalia.com:mid,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email]
X-Rspamd-Queue-Id: 1B1D2431F0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxNC8wNC8yMDI2IDE5OjMwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiA0LzE0
LzI2IDE3OjQ5LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+IFRyYWNlX2RtYV9mZW5jZV9zaWdu
YWxlZCwgdHJhY2VfZG1hX2ZlbmNlX3dhaXRfZW5kIGFuZA0KPj4gdHJhY2VfZG1hX2ZlbmNlX2Rl
c3Ryb3kgY2FuIGFsbCBjdXJyZW50bHkgZGVyZWZlcmVuY2UgYSBudWxsIGZlbmNlLT5vcHMNCj4+
IHBvaW50ZXIgYWZ0ZXIgaXQgaGFzIGJlZW4gcmVzZXQgb24gZmVuY2Ugc2lnbmFsbGluZy4NCj4+
DQo+PiBMZXRzIHVzZSB0aGUgc2FmZSBzdHJpbmcgZ2V0dGVycyBmb3IgbW9zdCB0cmFjZXBvaW50
cyB0byBhdm9pZCB0aGlzIGNsYXNzDQo+PiBvZiBhIHByb2JsZW0sIHdoaWxlIGZvciB0aGUgc2ln
bmFsIHRyYWNlcG9pbnQgd2UgbW92ZSBpdCB0byBiZWZvcmUgb3BzIGFyZQ0KPj4gY2xlYXJlZCB0
byBhdm9pZCBsb3NpbmcgdGhlIGRyaXZlciBhbmQgdGltZWxpbmUgbmFtZSBpbmZvcm1hdGlvbi4g
QXBhcnQNCj4+IGZyb20gbW92aW5nIGl0IHdlIGFsc28gbmVlZCB0byBhZGQgYSBuZXcgdHJhY2Vw
b2ludCBjbGFzcyB0byBieXBhc3MgdGhlDQo+PiBzYWZlIG5hbWUgZ2V0dGVycyBzaW5jZSB0aGUg
c2lnbmFsZWQgYml0IGlzIGFscmVhZHkgc2V0Lg0KPj4NCj4+IEZvciBkbWFfZmVuY2VfaW5pdCB3
ZSBhbHNvIG5lZWQgdG8gdXNlIHRoZSBuZXcgdHJhY2Vwb2ludCBjbGFzcyBzaW5jZSB0aGUNCj4+
IHJjdSByZWFkIGxvY2sgaXMgbm90IGhlbGQgdGhlcmUsIGFuZCB3ZSBjYW4gZG8gdGhlIHNhbWUg
Zm9yIHRoZSBlbmFibGUNCj4+IHNpZ25hbGluZyBzaW5jZSB0aGVyZSB3ZSBhcmUgY2VydGFpbiB0
aGUgZmVuY2UgY2Fubm90IGJlIHNpZ25hbGVkIHdoaWxlDQo+PiB3ZSBhcmUgaG9sZGluZyB0aGUg
bG9jayBhbmQgaGF2ZSBldmVuIHZhbGlkYXRlZCB0aGUgZmVuY2UtPm9wcy4NCj4+DQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4+
IEZpeGVzOiA1NDFjOGYyNDY4YjkgKCJkbWEtYnVmOiBkZXRhY2ggZmVuY2Ugb3BzIG9uIHNpZ25h
bCB2MyIpDQo+PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPj4gQ2M6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+PiBDYzogQm9y
aXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCj4+IENjOiBsaW51
eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcNCj4+IC0tLQ0KPj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICAgICB8ICAz
ICsrLQ0KPj4gICBpbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaCB8IDMzICsrKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0tDQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+PiBpbmRleCBh
MmFhODJmNGVlZGQuLmIzYmZhNjk0M2E4ZSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYw0KPj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+PiBA
QCAtMzYzLDYgKzM2Myw4IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2Vk
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4gICAJCQkJICAgICAgJmZlbmNlLT5mbGFncykp
KQ0KPj4gICAJCXJldHVybjsNCj4+ICAgDQo+PiArCXRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChm
ZW5jZSk7DQo+PiArDQo+PiAgIAkvKg0KPj4gICAJICogV2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBu
b3IgYSB3YWl0IG9wZXJhdGlvbiBpcyBzcGVjaWZpZWQgc2V0IHRoZSBvcHMNCj4+ICAgCSAqIHBv
aW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0dXJlIHRvIGJlY29tZSBpbmRl
cGVuZGVudA0KPj4gQEAgLTM3Nyw3ICszNzksNiBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGlt
ZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4+ICAgDQo+PiAgIAlmZW5j
ZS0+dGltZXN0YW1wID0gdGltZXN0YW1wOw0KPj4gICAJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19U
SU1FU1RBTVBfQklULCAmZmVuY2UtPmZsYWdzKTsNCj4+IC0JdHJhY2VfZG1hX2ZlbmNlX3NpZ25h
bGVkKGZlbmNlKTsNCj4gDQo+IEkgdGhpbmsgdGhpcyBwYXJ0IGhlcmUgc2hvdWxkIGJlIGEgc2Vw
YXJhdGUgcGF0Y2guDQoNCkkgaGFkIHRoYXQgaW4gDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9k
cmktZGV2ZWwvMjAyNjAzMzAxMzM2MjMuMTc3MDQtMS10dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29t
LyANCmJ1dCB0aGUgZGlzY3Vzc2lvbiBmaXp6bGVkIG91dCBiZWZvcmUgYW4gcmIuDQoNCj4gDQo+
PiAgIA0KPj4gICAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGN1ciwgdG1wLCAmY2JfbGlzdCwg
bm9kZSkgew0KPj4gICAJCUlOSVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOw0KPj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oIGIvaW5jbHVkZS90cmFjZS9ldmVu
dHMvZG1hX2ZlbmNlLmgNCj4+IGluZGV4IDNhYmJhNDVjMDYwMS4uOWUwY2I5Y2UyMzg4IDEwMDY0
NA0KPj4gLS0tIGEvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmgNCj4+ICsrKyBiL2lu
Y2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oDQo+PiBAQCAtOSwxMiArOSwzNyBAQA0KPj4g
ICANCj4+ICAgc3RydWN0IGRtYV9mZW5jZTsNCj4+ICAgDQo+PiArREVDTEFSRV9FVkVOVF9DTEFT
UyhkbWFfZmVuY2UsDQo+PiArDQo+PiArCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KSwNCj4+ICsNCj4+ICsJVFBfQVJHUyhmZW5jZSksDQo+PiArDQo+PiArCVRQX1NUUlVDVF9fZW50
cnkoDQo+PiArCQlfX3N0cmluZyhkcml2ZXIsIGRtYV9mZW5jZV9kcml2ZXJfbmFtZShmZW5jZSkp
DQo+PiArCQlfX3N0cmluZyh0aW1lbGluZSwgZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoZmVuY2Up
KQ0KPj4gKwkJX19maWVsZCh1bnNpZ25lZCBpbnQsIGNvbnRleHQpDQo+PiArCQlfX2ZpZWxkKHVu
c2lnbmVkIGludCwgc2Vxbm8pDQo+PiArCSksDQo+PiArDQo+PiArCVRQX2Zhc3RfYXNzaWduKA0K
Pj4gKwkJX19hc3NpZ25fc3RyKGRyaXZlcik7DQo+PiArCQlfX2Fzc2lnbl9zdHIodGltZWxpbmUp
Ow0KPj4gKwkJX19lbnRyeS0+Y29udGV4dCA9IGZlbmNlLT5jb250ZXh0Ow0KPj4gKwkJX19lbnRy
eS0+c2Vxbm8gPSBmZW5jZS0+c2Vxbm87DQo+PiArCSksDQo+PiArDQo+PiArCVRQX3ByaW50aygi
ZHJpdmVyPSVzIHRpbWVsaW5lPSVzIGNvbnRleHQ9JXUgc2Vxbm89JXUiLA0KPj4gKwkJICBfX2dl
dF9zdHIoZHJpdmVyKSwgX19nZXRfc3RyKHRpbWVsaW5lKSwgX19lbnRyeS0+Y29udGV4dCwNCj4+
ICsJCSAgX19lbnRyeS0+c2Vxbm8pDQo+PiArKTsNCj4+ICsNCj4gDQo+IE1obSwgSSdtIHN0cm9u
Z2x5IGluIGZhdm9yIHRvIGp1c3QgdXNlIHRoaXMgYXBwcm9hY2ggZm9yIGFsbCB0cmFjZSBwb2lu
dHMuDQo+IA0KPiBUaGUgbWluaW1hbCBleHRyYSBvdmVyaGVhZCBzaG91bGRuJ3QgcmVhbGx5IG1h
dHRlciBhdCBhbGwuDQoNClllYWgsIEkgYW0gYSBiaXQgb24gdGhlIGZlbmNlLiBJdCB3b3VsZCBy
ZXF1aXJlZCBhIGJpdCBvZiBhbiB1Z2x5IA0KcmN1X3JlYWRfbG9jayBhcm91bmQgdHJhY2VfZG1h
X2ZlbmNlX3NpZ25hbF9pbml0IGFuZCANCnRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZCB3b3VsZCBs
b3NlIHRoZSBkcml2ZXIvdGltZWxpbmUgaW5mbyBfdW5sZXNzXyANCm5hbWUgaGVscGVycyB3b3Vs
ZCBhbHNvIGJlIGNoYW5nZWQgdG8gbG9vayBhdCBmZW5jZS0+b3BzIGluc3RlYWQgb2YgImlzIA0K
c2lnbmFsZWQiLiBUaG9zZSBoYXZlIG5vIG1lbW9yeSBiYXJyaWVycyBzbyBub3Qgc3VyZSBJIHdh
bnQgdG8gdGhpbmsgDQphYm91dCByYWN5bmVzcyBhbmQgaG93IHRvIHNvbHZlIGl0Lg0KDQpSZWdh
cmRzLA0KDQpUdnJ0a28NCg0KPiANCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPiANCj4+ICAg
LyoNCj4+ICAgICogU2FmZSBvbmx5IGZvciBjYWxsIHNpdGVzIHdoaWNoIGFyZSBndWFyYW50ZWVk
IHRvIG5vdCByYWNlIHdpdGggZmVuY2UNCj4+ICAgICogc2lnbmFsaW5nLGhvbGRpbmcgdGhlIGZl
bmNlLT5sb2NrIGFuZCBoYXZpbmcgY2hlY2tlZCBmb3Igbm90IHNpZ25hbGVkLCBvciB0aGUNCj4+
ICAgICogc2lnbmFsaW5nIHBhdGggaXRzZWxmLg0KPj4gICAgKi8NCj4+IC1ERUNMQVJFX0VWRU5U
X0NMQVNTKGRtYV9mZW5jZSwNCj4+ICtERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5jZV9vcHMs
DQo+PiAgIA0KPj4gICAJVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KPj4gICAN
Cj4+IEBAIC00Niw3ICs3MSw3IEBAIERFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9l
bWl0LA0KPj4gICAJVFBfQVJHUyhmZW5jZSkNCj4+ICAgKTsNCj4+ICAgDQo+PiAtREVGSU5FX0VW
RU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX2luaXQsDQo+PiArREVGSU5FX0VWRU5UKGRtYV9mZW5j
ZV9vcHMsIGRtYV9mZW5jZV9pbml0LA0KPj4gICANCj4+ICAgCVRQX1BST1RPKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlKSwNCj4+ICAgDQo+PiBAQCAtNjAsMTQgKzg1LDE0IEBAIERFRklORV9FVkVO
VChkbWFfZmVuY2UsIGRtYV9mZW5jZV9kZXN0cm95LA0KPj4gICAJVFBfQVJHUyhmZW5jZSkNCj4+
ICAgKTsNCj4+ICAgDQo+PiAtREVGSU5FX0VWRU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX2VuYWJs
ZV9zaWduYWwsDQo+PiArREVGSU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMsIGRtYV9mZW5jZV9lbmFi
bGVfc2lnbmFsLA0KPj4gICANCj4+ICAgCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KSwNCj4+ICAgDQo+PiAgIAlUUF9BUkdTKGZlbmNlKQ0KPj4gICApOw0KPj4gICANCj4+IC1ERUZJ
TkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2Vfc2lnbmFsZWQsDQo+PiArREVGSU5FX0VWRU5U
KGRtYV9mZW5jZV9vcHMsIGRtYV9mZW5jZV9zaWduYWxlZCwNCj4+ICAgDQo+PiAgIAlUUF9QUk9U
TyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQo+PiAgIA0KPiANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
