Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IM/OI+tl5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F710431F38
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D51E406ED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:44:10 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 81016401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 08:33:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=VnsTWh19;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NLmPC7PJ19+VFYXO6EqIDbW0xFBizdYedzYdR9XL1xs=; b=VnsTWh19bFxEBkY20wuXhRreo2
	fUVtRkm6NotLiFnEehl+xPZsR5TaKgCivSQAMuSUTqFKlRB16VjzfM4S/eqYWKSZ9vnVjxgC+hvv+
	YL0zzMTMSt90O1xhCrE3/WvpdxQiIzax7kwI1XblH3PUl9RUgalEC9jeXOzOz8pPJwwiESEtZz7Zw
	e3oXOSrQakwQW0gCc+1/zb/VvRkXT1aYwe/jJwyWfFKp9Mq2ydPMe04D3mWGGbtoFpdmWHYkT8X4u
	4d/QEnO0w3nk/CcQ2NN7KlWXdUXZ2OkaLWvVTnhAOAjZ3d1XjyE2MOSlQgyr2o8pOWp59RCx3epPo
	LHTA92dQ==;
Received: from [90.240.106.137] (helo=[192.168.0.101])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wCvgb-00GHcm-1v; Wed, 15 Apr 2026 10:33:25 +0200
Message-ID: <dcd9e1e9-8297-4429-94be-af88c7b41399@igalia.com>
Date: Wed, 15 Apr 2026 09:33:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
References: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
 <20260414154928.32934-2-tvrtko.ursulin@igalia.com>
 <650e835e-b60d-44fd-b212-47f8a9d18c15@amd.com>
 <5fea79b5-ab5a-4a98-95c8-6452b20e83c4@igalia.com>
 <b3b75077-878b-4d4e-b18e-4976765c63db@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <b3b75077-878b-4d4e-b18e-4976765c63db@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CDP6VFLLIKKCQPSNRC2FQLCFGYNT4QNE
X-Message-ID-Hash: CDP6VFLLIKKCQPSNRC2FQLCFGYNT4QNE
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:34 +0000
CC: kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CDP6VFLLIKKCQPSNRC2FQLCFGYNT4QNE/>
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
	NEURAL_HAM(-0.00)[-0.681];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:mid,igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,collabora.com:email]
X-Rspamd-Queue-Id: 4F710431F38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxNS8wNC8yMDI2IDA5OjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiA0LzE1
LzI2IDA5OjU4LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+DQo+PiBPbiAxNC8wNC8yMDI2IDE5
OjMwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IE9uIDQvMTQvMjYgMTc6NDksIFR2cnRr
byBVcnN1bGluIHdyb3RlOg0KPj4+PiBUcmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQsIHRyYWNlX2Rt
YV9mZW5jZV93YWl0X2VuZCBhbmQNCj4+Pj4gdHJhY2VfZG1hX2ZlbmNlX2Rlc3Ryb3kgY2FuIGFs
bCBjdXJyZW50bHkgZGVyZWZlcmVuY2UgYSBudWxsIGZlbmNlLT5vcHMNCj4+Pj4gcG9pbnRlciBh
ZnRlciBpdCBoYXMgYmVlbiByZXNldCBvbiBmZW5jZSBzaWduYWxsaW5nLg0KPj4+Pg0KPj4+PiBM
ZXRzIHVzZSB0aGUgc2FmZSBzdHJpbmcgZ2V0dGVycyBmb3IgbW9zdCB0cmFjZXBvaW50cyB0byBh
dm9pZCB0aGlzIGNsYXNzDQo+Pj4+IG9mIGEgcHJvYmxlbSwgd2hpbGUgZm9yIHRoZSBzaWduYWwg
dHJhY2Vwb2ludCB3ZSBtb3ZlIGl0IHRvIGJlZm9yZSBvcHMgYXJlDQo+Pj4+IGNsZWFyZWQgdG8g
YXZvaWQgbG9zaW5nIHRoZSBkcml2ZXIgYW5kIHRpbWVsaW5lIG5hbWUgaW5mb3JtYXRpb24uIEFw
YXJ0DQo+Pj4+IGZyb20gbW92aW5nIGl0IHdlIGFsc28gbmVlZCB0byBhZGQgYSBuZXcgdHJhY2Vw
b2ludCBjbGFzcyB0byBieXBhc3MgdGhlDQo+Pj4+IHNhZmUgbmFtZSBnZXR0ZXJzIHNpbmNlIHRo
ZSBzaWduYWxlZCBiaXQgaXMgYWxyZWFkeSBzZXQuDQo+Pj4+DQo+Pj4+IEZvciBkbWFfZmVuY2Vf
aW5pdCB3ZSBhbHNvIG5lZWQgdG8gdXNlIHRoZSBuZXcgdHJhY2Vwb2ludCBjbGFzcyBzaW5jZSB0
aGUNCj4+Pj4gcmN1IHJlYWQgbG9jayBpcyBub3QgaGVsZCB0aGVyZSwgYW5kIHdlIGNhbiBkbyB0
aGUgc2FtZSBmb3IgdGhlIGVuYWJsZQ0KPj4+PiBzaWduYWxpbmcgc2luY2UgdGhlcmUgd2UgYXJl
IGNlcnRhaW4gdGhlIGZlbmNlIGNhbm5vdCBiZSBzaWduYWxlZCB3aGlsZQ0KPj4+PiB3ZSBhcmUg
aG9sZGluZyB0aGUgbG9jayBhbmQgaGF2ZSBldmVuIHZhbGlkYXRlZCB0aGUgZmVuY2UtPm9wcy4N
Cj4+Pj4NCj4+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGlnYWxpYS5jb20+DQo+Pj4+IEZpeGVzOiA1NDFjOGYyNDY4YjkgKCJkbWEtYnVmOiBkZXRhY2gg
ZmVuY2Ugb3BzIG9uIHNpZ25hbCB2MyIpDQo+Pj4+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4+IENjOiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBr
ZXJuZWwub3JnPg0KPj4+PiBDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29s
bGFib3JhLmNvbT4NCj4+Pj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPj4+PiBD
YzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+Pj4+IC0tLQ0KPj4+PiAgwqAgZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jwqDCoMKgwqDCoCB8wqAgMyArKy0NCj4+Pj4gIMKgIGlu
Y2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oIHwgMzMgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0NCj4+Pj4gIMKgIDIgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkNCj4+Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+PiBpbmRleCBhMmFh
ODJmNGVlZGQuLmIzYmZhNjk0M2E4ZSAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jDQo+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+
PiBAQCAtMzYzLDYgKzM2Myw4IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9j
a2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmZmVuY2UtPmZsYWdzKSkpDQo+Pj4+ICDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuOw0KPj4+PiAgwqAgK8KgwqDCoCB0cmFjZV9kbWFfZmVuY2Vfc2ln
bmFsZWQoZmVuY2UpOw0KPj4+PiArDQo+Pj4+ICDCoMKgwqDCoMKgIC8qDQo+Pj4+ICDCoMKgwqDC
oMKgwqAgKiBXaGVuIG5laXRoZXIgYSByZWxlYXNlIG5vciBhIHdhaXQgb3BlcmF0aW9uIGlzIHNw
ZWNpZmllZCBzZXQgdGhlIG9wcw0KPj4+PiAgwqDCoMKgwqDCoMKgICogcG9pbnRlciB0byBOVUxM
IHRvIGFsbG93IHRoZSBmZW5jZSBzdHJ1Y3R1cmUgdG8gYmVjb21lIGluZGVwZW5kZW50DQo+Pj4+
IEBAIC0zNzcsNyArMzc5LDYgQEAgdm9pZCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2Nr
ZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+Pj4+ICDCoCDCoMKgwqDCoMKgIGZlbmNlLT50
aW1lc3RhbXAgPSB0aW1lc3RhbXA7DQo+Pj4+ICDCoMKgwqDCoMKgIHNldF9iaXQoRE1BX0ZFTkNF
X0ZMQUdfVElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7DQo+Pj4+IC3CoMKgwqAgdHJhY2Vf
ZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsNCj4+Pg0KPj4+IEkgdGhpbmsgdGhpcyBwYXJ0IGhl
cmUgc2hvdWxkIGJlIGEgc2VwYXJhdGUgcGF0Y2guDQo+Pg0KPj4gSSBoYWQgdGhhdCBpbiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjAzMzAxMzM2MjMuMTc3MDQtMS10dnJ0
a28udXJzdWxpbkBpZ2FsaWEuY29tLyBidXQgdGhlIGRpc2N1c3Npb24gZml6emxlZCBvdXQgYmVm
b3JlIGFuIHJiLg0KPj4NCj4+Pg0KPj4+PiAgwqAgwqDCoMKgwqDCoCBsaXN0X2Zvcl9lYWNoX2Vu
dHJ5X3NhZmUoY3VyLCB0bXAsICZjYl9saXN0LCBub2RlKSB7DQo+Pj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqAgSU5JVF9MSVNUX0hFQUQoJmN1ci0+bm9kZSk7DQo+Pj4+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaCBiL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9m
ZW5jZS5oDQo+Pj4+IGluZGV4IDNhYmJhNDVjMDYwMS4uOWUwY2I5Y2UyMzg4IDEwMDY0NA0KPj4+
PiAtLS0gYS9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KPj4+PiArKysgYi9pbmNs
dWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KPj4+PiBAQCAtOSwxMiArOSwzNyBAQA0KPj4+
PiAgwqAgwqAgc3RydWN0IGRtYV9mZW5jZTsNCj4+Pj4gIMKgICtERUNMQVJFX0VWRU5UX0NMQVNT
KGRtYV9mZW5jZSwNCj4+Pj4gKw0KPj4+PiArwqDCoMKgIFRQX1BST1RPKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKSwNCj4+Pj4gKw0KPj4+PiArwqDCoMKgIFRQX0FSR1MoZmVuY2UpLA0KPj4+PiAr
DQo+Pj4+ICvCoMKgwqAgVFBfU1RSVUNUX19lbnRyeSgNCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIF9f
c3RyaW5nKGRyaXZlciwgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNlKSkNCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIF9fc3RyaW5nKHRpbWVsaW5lLCBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShmZW5j
ZSkpDQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBfX2ZpZWxkKHVuc2lnbmVkIGludCwgY29udGV4dCkN
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIF9fZmllbGQodW5zaWduZWQgaW50LCBzZXFubykNCj4+Pj4g
K8KgwqDCoCApLA0KPj4+PiArDQo+Pj4+ICvCoMKgwqAgVFBfZmFzdF9hc3NpZ24oDQo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCBfX2Fzc2lnbl9zdHIoZHJpdmVyKTsNCj4+Pj4gK8KgwqDCoMKgwqDCoMKg
IF9fYXNzaWduX3N0cih0aW1lbGluZSk7DQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBfX2VudHJ5LT5j
b250ZXh0ID0gZmVuY2UtPmNvbnRleHQ7DQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBfX2VudHJ5LT5z
ZXFubyA9IGZlbmNlLT5zZXFubzsNCj4+Pj4gK8KgwqDCoCApLA0KPj4+PiArDQo+Pj4+ICvCoMKg
wqAgVFBfcHJpbnRrKCJkcml2ZXI9JXMgdGltZWxpbmU9JXMgY29udGV4dD0ldSBzZXFubz0ldSIs
DQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgX19nZXRfc3RyKGRyaXZlciksIF9fZ2V0X3N0cih0
aW1lbGluZSksIF9fZW50cnktPmNvbnRleHQsDQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgX19l
bnRyeS0+c2Vxbm8pDQo+Pj4+ICspOw0KPj4+PiArDQo+Pj4NCj4+PiBNaG0sIEknbSBzdHJvbmds
eSBpbiBmYXZvciB0byBqdXN0IHVzZSB0aGlzIGFwcHJvYWNoIGZvciBhbGwgdHJhY2UgcG9pbnRz
Lg0KPj4+DQo+Pj4gVGhlIG1pbmltYWwgZXh0cmEgb3ZlcmhlYWQgc2hvdWxkbid0IHJlYWxseSBt
YXR0ZXIgYXQgYWxsLg0KPj4NCj4+IFllYWgsIEkgYW0gYSBiaXQgb24gdGhlIGZlbmNlLiBJdCB3
b3VsZCByZXF1aXJlZCBhIGJpdCBvZiBhbiB1Z2x5IHJjdV9yZWFkX2xvY2sgYXJvdW5kIHRyYWNl
X2RtYV9mZW5jZV9zaWduYWxfaW5pdA0KPiANCj4gSSB0aGluayBhcyBsb25nIGFzIHdlIG9ubHkg
Z3JhYiB0aGUgUkNVIHJlYWQgc2lkZSBsb2NrIHdoZW4gdGhlIHRyYWNlcG9pbnQgaXMgYWN0dWFs
bHkgZW5hYmxlZCB0aGVuIHRoYXQgc2hvdWxkbid0IG1hdHRlci4NCj4gDQo+IEkgZG8gcmVtZW1i
ZXIgcGF0Y2hlcyBmbHlpbmcgYnkgd2hpY2ggb3B0aW1pemVkIHRoaXMgdXNlIGNhc2UgZm9yIHRo
ZSB3aG9sZSB0cmFjZSBzdWJzeXN0ZW0gYnV0IGRpZG4ndCB0b29rIGEgY2xvc2VyIGxvb2sgaG93
IHRvIGRvIHRoYXQgbm93Lg0KPiANCj4+IGFuZCB0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQgd291
bGQgbG9zZSB0aGUgZHJpdmVyL3RpbWVsaW5lIGluZm8gX3VubGVzc18gbmFtZSBoZWxwZXJzIHdv
dWxkIGFsc28gYmUgY2hhbmdlZCB0byBsb29rIGF0IGZlbmNlLT5vcHMgaW5zdGVhZCBvZiAiaXMg
c2lnbmFsZWQiLiBUaG9zZSBoYXZlIG5vIG1lbW9yeSBiYXJyaWVycyBzbyBub3Qgc3VyZSBJIHdh
bnQgdG8gdGhpbmsgYWJvdXQgcmFjeW5lc3MgYW5kIGhvdyB0byBzb2x2ZSBpdC4NCj4gDQo+IE1o
bSwgdGhhdCBpcyBhIGJpdCBtb3JlIHByb2JsZW1hdGljLg0KPiANCj4gb3BzIGlzIG9ubHkgc2V0
IHRvIE5VTEwgd2hlbiBuZWl0aGVyIGZyZWUgbm9yIHdhaXQgaXMgc3BlY2lmaWVkLCBzbyBjaGVj
a2luZyBpcyBzaWduYWxlZCBpcyBzdGlsbCB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gZm9yIGRyaXZl
cnMgd2hpY2ggdXNlcyB0aG9zZSBjYWxsYmFja3MgYnV0IHN0aWxsIHdhbnQgdG8gaGF2ZSB0aGUg
UkNVIHByb3RlY3Rpb24gb2YgdGhlIHJldHVybmVkIHN0cmluZ3MuDQoNCkhtIHllcywgdGhhdCB0
b28uDQoNCg0KPiBPaywgZmVlbCBmcmVlIHRvIGdvIGFoZWFkIHdpdGggdGhpcyBhcHByb2FjaCBm
b3Igbm93IGJ1dCBwbGVhc2UgYWRkIGEgLyogVE9ETzogY2xlYW4gdGhhdCB1cCB3aGVuIG1vc3Qg
ZHJpdmVycyBzd2l0Y2hlZCB0byBpbmRlcGVuZGVudCBmZW5jZXMgKi8uDQoNClRoYW5rIHlvdSwg
SSd2ZSBzZW50IGFuIHVwZGF0ZWQgdmVyc2lvbiB3aXRoIGEgY29tbWVudCB0byB0aGlzIGVmZmVj
dCANCnBsYWNlZCB0byB0aGUgZXZlbnQgY2xhc3MgZGVmaW5pdGlvbi4gSSBwdXQgeW91ciByLWIg
c28gcGxlYXNlIGRvdWJsZSANCmNoZWNrIGlmIHlvdSBhcmUgaGFwcHkgd2l0aCB0aGF0IHZlcnNp
b24uDQoNClJlZ2FyZHMsDQoNClR2cnRrbw0KPj4+PiAgwqAgLyoNCj4+Pj4gIMKgwqAgKiBTYWZl
IG9ubHkgZm9yIGNhbGwgc2l0ZXMgd2hpY2ggYXJlIGd1YXJhbnRlZWQgdG8gbm90IHJhY2Ugd2l0
aCBmZW5jZQ0KPj4+PiAgwqDCoCAqIHNpZ25hbGluZyxob2xkaW5nIHRoZSBmZW5jZS0+bG9jayBh
bmQgaGF2aW5nIGNoZWNrZWQgZm9yIG5vdCBzaWduYWxlZCwgb3IgdGhlDQo+Pj4+ICDCoMKgICog
c2lnbmFsaW5nIHBhdGggaXRzZWxmLg0KPj4+PiAgwqDCoCAqLw0KPj4+PiAtREVDTEFSRV9FVkVO
VF9DTEFTUyhkbWFfZmVuY2UsDQo+Pj4+ICtERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5jZV9v
cHMsDQo+Pj4+ICDCoCDCoMKgwqDCoMKgIFRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KSwNCj4+Pj4gIMKgIEBAIC00Niw3ICs3MSw3IEBAIERFRklORV9FVkVOVChkbWFfZmVuY2UsIGRt
YV9mZW5jZV9lbWl0LA0KPj4+PiAgwqDCoMKgwqDCoCBUUF9BUkdTKGZlbmNlKQ0KPj4+PiAgwqAg
KTsNCj4+Pj4gIMKgIC1ERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfaW5pdCwNCj4+
Pj4gK0RFRklORV9FVkVOVChkbWFfZmVuY2Vfb3BzLCBkbWFfZmVuY2VfaW5pdCwNCj4+Pj4gIMKg
IMKgwqDCoMKgwqAgVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KPj4+PiAgwqAg
QEAgLTYwLDE0ICs4NSwxNCBAQCBERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfZGVz
dHJveSwNCj4+Pj4gIMKgwqDCoMKgwqAgVFBfQVJHUyhmZW5jZSkNCj4+Pj4gIMKgICk7DQo+Pj4+
ICDCoCAtREVGSU5FX0VWRU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwsDQo+
Pj4+ICtERUZJTkVfRVZFTlQoZG1hX2ZlbmNlX29wcywgZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWws
DQo+Pj4+ICDCoCDCoMKgwqDCoMKgIFRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKSwN
Cj4+Pj4gIMKgIMKgwqDCoMKgwqAgVFBfQVJHUyhmZW5jZSkNCj4+Pj4gIMKgICk7DQo+Pj4+ICDC
oCAtREVGSU5FX0VWRU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX3NpZ25hbGVkLA0KPj4+PiArREVG
SU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMsIGRtYV9mZW5jZV9zaWduYWxlZCwNCj4+Pj4gIMKgIMKg
wqDCoMKgwqAgVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KPj4+PiAgICANCj4+
Pg0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
