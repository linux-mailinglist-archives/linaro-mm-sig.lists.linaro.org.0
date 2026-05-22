Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KSINzoTEGryTAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 10:26:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4FF5B08C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 10:26:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78DF34098B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 08:26:33 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 4D08F3F821
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2026 08:26:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=h3avMHJG;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1779438375; cv=none;
	d=zohomail.com; s=zohoarc;
	b=dMV2hEK/whH8fcHfZeci81wUSCn4E9qs1sGCHKkzf9W2o2FHj2SlyDxMH4R4yrSCnAPYUSL99FZZeTfAD3JV9yDEmAKzFy2XLA9Rx96kw6UlvNEqZ1g9Hhui1Ean4MUCaXUsDDm3QUv7Z/wr0ONxJKlFGg3U94ycbj+RBFWHeEE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1779438375; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=9/HtBbXO7Hb1AE+uzWM7pmy4kh9HfNVxnKVejgA40j8=;
	b=E/HmYUJqYtzpuXR0X8sbjXRSgpmdaYQqQS89L3fkVL9LJeSfX0rMP/1BcVhOVjL1aPTEhxoDPG0/cjjsT6ReM5SRasTVFChRlyrjDMqFsoS9qo7EHuYQyU3X0Y1ntbIUp4OqMPmsMP+J3JEPlfi67tXaf/0FWQtHH86VN5NlToI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779438375;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=9/HtBbXO7Hb1AE+uzWM7pmy4kh9HfNVxnKVejgA40j8=;
	b=h3avMHJG8KePKksJfg2l9IKHEfBL5JqsjX5qWxOWVZTI7cIDzexPfgXCEyws/cz+
	N/qkB9ChIP4779gwzJQmlyjLER3oMrGidpF0DpcO1Zy1wPUyFL9FIgwZKP2VKqcBDLr
	PrV4PrUwUWg1vFYQfuPB1wCdXOp3pl+/E5aN0TAI=
Received: by mx.zohomail.com with SMTPS id 1779438373126891.8505993850015;
	Fri, 22 May 2026 01:26:13 -0700 (PDT)
Message-ID: <eebd1c78-94b5-4b33-9708-5cafa1a29ef7@collabora.com>
Date: Fri, 22 May 2026 11:26:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Deepanshu Kartikey <kartikey406@gmail.com>, airlied@redhat.com,
 kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 simona@ffwll.ch, sumit.semwal@linaro.org
References: <20260519082247.34470-1-kartikey406@gmail.com>
 <2e23513c-9d59-4891-acfe-9f1fbcbce778@amd.com>
 <f6bcef23-5510-4aad-bf6a-4e1ecfc8d474@collabora.com>
 <a0f2cfd5-d4df-4e50-a52b-d5befbc2e481@amd.com>
 <f37bdc63-3575-49e5-aa5b-7b93428b293d@collabora.com>
 <1832e5a8-db85-4b66-a5f0-08043c4aed54@amd.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <1832e5a8-db85-4b66-a5f0-08043c4aed54@amd.com>
X-ZohoMailClient: External
X-Spamd-Bar: ----
Message-ID-Hash: 3YUOOJ5Z74OOTIC3LZG26BTWCAGVYACX
X-Message-ID-Hash: 3YUOOJ5Z74OOTIC3LZG26BTWCAGVYACX
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3YUOOJ5Z74OOTIC3LZG26BTWCAGVYACX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,redhat.com,chromium.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.osipenko@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	NEURAL_SPAM(0.00)[0.818];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,collabora.com:mid]
X-Rspamd-Queue-Id: 7B4FF5B08C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

MjAuMDUuMjAyNiAxNDowMCwgQ2hyaXN0aWFuIEvDtm5pZyDQv9C40YjQtdGCOg0KPiBPbiA1LzIw
LzI2IDEwOjEyLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+PiBPbiA1LzIwLzI2IDEwOjA1LCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IE9uIDUvMjAvMjYgMDg6NTAsIERtaXRyeSBPc2lw
ZW5rbyB3cm90ZToNCj4+Pj4gT24gNS8xOS8yNiAxMToyNywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToNCj4+Pj4+IE9uIDUvMTkvMjYgMTA6MjIsIERlZXBhbnNodSBLYXJ0aWtleSB3cm90ZToNCj4+
Pj4+PiB2aXJ0aW9fZ3B1X2N1cnNvcl9wbGFuZV91cGRhdGUoKSBhbmQgdmlydGlvX2dwdV9yZXNv
dXJjZV9mbHVzaCgpIGxvY2sNCj4+Pj4+PiB0aGUgZnJhbWVidWZmZXIgQk8ncyBkbWFfcmVzdiB2
aWEgdmlydGlvX2dwdV9hcnJheV9sb2NrX3Jlc3YoKSBhbmQNCj4+Pj4+PiBpZ25vcmUgaXRzIHJl
dHVybiB2YWx1ZS4gVGhlIGZ1bmN0aW9uIGNhbiBmYWlsIHdpdGggLUVJTlRSIGZyb20NCj4+Pj4+
PiBkbWFfcmVzdl9sb2NrX2ludGVycnVwdGlibGUoKSAoc2lnbmFsIGR1cmluZyBsb2NrIHdhaXQp
IG9yIHdpdGgNCj4+Pj4+PiAtRU5PTUVNIGZyb20gZG1hX3Jlc3ZfcmVzZXJ2ZV9mZW5jZXMoKSAo
ZmVuY2Ugc2xvdCBhbGxvY2F0aW9uKSwNCj4+Pj4+PiBsZWF2aW5nIHRoZSByZXN2IGxvY2sgbm90
IGhlbGQuIFRoZSBxdWV1ZSBwYXRoIHRoZW4gd2Fsa3MgdGhlIG9iamVjdA0KPj4+Pj4+IGFycmF5
IGFuZCBjYWxscyBkbWFfcmVzdl9hZGRfZmVuY2UoKSwgd2hpY2ggcmVxdWlyZXMgdGhlIGxvY2sg
aGVsZDsNCj4+Pj4+PiB3aXRoIGxvY2tkZXAgZW5hYmxlZCB0aGlzIHRyaXBzIGRtYV9yZXN2X2Fz
c2VydF9oZWxkKCk6DQo+Pj4+Pj4NCj4+Pj4+PiAgIFdBUk5JTkc6IGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jOjI5NiBhdCBkbWFfcmVzdl9hZGRfZmVuY2UrMHg3MWUvMHg4NDANCj4+Pj4+PiAg
IENhbGwgVHJhY2U6DQo+Pj4+Pj4gICAgdmlydGlvX2dwdV9hcnJheV9hZGRfZmVuY2UNCj4+Pj4+
PiAgICB2aXJ0aW9fZ3B1X3F1ZXVlX2N0cmxfc2dzDQo+Pj4+Pj4gICAgdmlydGlvX2dwdV9xdWV1
ZV9mZW5jZWRfY3RybF9idWZmZXINCj4+Pj4+PiAgICB2aXJ0aW9fZ3B1X2N1cnNvcl9wbGFuZV91
cGRhdGUNCj4+Pj4+PiAgICBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfcGxhbmVzDQo+Pj4+Pj4g
ICAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwNCj4+Pj4+PiAgICBjb21taXRfdGFpbA0K
Pj4+Pj4+ICAgIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdA0KPj4+Pj4+ICAgIGRybV9hdG9taWNf
Y29tbWl0DQo+Pj4+Pj4gICAgZHJtX2F0b21pY19oZWxwZXJfdXBkYXRlX3BsYW5lDQo+Pj4+Pj4g
ICAgX19zZXRwbGFuZV9hdG9taWMNCj4+Pj4+PiAgICBkcm1fbW9kZV9jdXJzb3JfdW5pdmVyc2Fs
DQo+Pj4+Pj4gICAgZHJtX21vZGVfY3Vyc29yX2NvbW1vbg0KPj4+Pj4+ICAgIGRybV9tb2RlX2N1
cnNvcl9pb2N0bA0KPj4+Pj4+ICAgIGRybV9pb2N0bA0KPj4+Pj4+ICAgIF9feDY0X3N5c19pb2N0
bA0KPj4+Pj4+DQo+Pj4+Pj4gQmV5b25kIHRoZSBXQVJOLCBtdXRhdGluZyB0aGUgZG1hX3Jlc3Yg
ZmVuY2UgbGlzdCB3aXRob3V0IHRoZSBsb2NrDQo+Pj4+Pj4gcmFjZXMgd2l0aCBjb25jdXJyZW50
IHJlYWRlcnMvd3JpdGVycyBhbmQgY2FuIGNvcnJ1cHQgdGhlIGxpc3QuDQo+Pj4+Pg0KPj4+Pj4g
V2VsbCB3aHkgYXJlIHlvdSB0cnlpbmcgdG8gYWRkIGEgZmVuY2Ugb24gYW4gYXRvbWljIG1vZGUg
c2V0IGluIHRoZSBmaXJzdCBwbGFjZT8NCj4+Pj4+DQo+Pj4+PiBUaGF0IGlzIHVzdWFsbHkgYW4g
aWxsZWdhbCBvcGVyYXRpb24gaGVyZS4NCj4+Pj4gVGhhdCBpcyBwcmUtZXhpc3RpbmcgaW4gdGhl
IGRyaXZlci4gSXQgcGVyZm9ybXMgZHJhdyBvcGVyYXRpb24gYW5kIGluDQo+Pj4+IHNvbWUgY2Fz
ZXMgd2FpdHMgZm9yIHRoZSBjb21wbGV0aW9uIGR1cmluZyBhdG9taWMuIFdoZXRoZXIgYWxsIHRo
YXQNCj4+Pj4gc3luY2luZyBpcyBjb3JyZWN0IGlzIGhhcmQgdG8gc2F5IGltbWVkaWF0ZWx5IGFz
IHNvbWUgb2YgaXQgbWF5IGJlDQo+Pj4+IGhpc3RvcmljYWwgZWRnZSBjYXNlcy4NCj4+Pg0KPj4+
IEknbSBub3Qgbm90IHNvIGRlZXBseSBpbiB0aGUgYXRvbWljIG1vZGUgc2V0dGluZyBzdHVmZiBi
dXQgaXQgc3Ryb25nbHkgc291bmRzIGxpa2UgdGhhdCB0aGlzIGlzIHNlcmlvdXNseSBicm9rZW4u
DQo+Pj4NCj4+PiBUaGUgYmFja2dyb3VuZCBpcyB0aGF0IHRoZSBhdG9taWMgbW9kZSBzZXQgZnJh
bWV3b3JrIGFsbG93cyBhbiBvdXRwdXQgZG1hX2ZlbmNlIHdoaWNoIGlzIHNpZ25hbGVkIHdoZW4g
dGhlIGNvbW1pdCBpcyBmaW5pc2hlZC4NCj4+Pg0KPj4+IFNvIHdoZW4geW91IGFsbG9jYXRlIGEg
ZmVuY2Ugc2xvdCBhbmQgYWRkIGEgbmV3IGZlbmNlIHRvIGZpbmlzaCB0aGUgYXRvbWljIGNvbW1p
dCBpdCBpcyB0cml2aWFsbHkgcG9zc2libGUgdGhhdCB0aGlzIGN5Y2xlcyBiYWNrIGFuZCB3YWl0
cyBmb3IgdGhlIGF0b21pYyBjb21taXQgdG8gZmluaXNoLiBJbiBvdGhlciB3b3JkcyB5b3UgaGF2
ZSBhIGRlYWRsb2NrLg0KPj4+DQo+Pj4gWW91IHByb2JhYmx5IG5lZWQgc3BlY2lhbGx5IGNyYWZ0
ZWQgdXNlcnNwYWNlIHdpdGggdGhlIHJpZ2h0IHRpbWluZyB0byB0cmlnZ2VyIHRoYXQsIGJ1dCBz
dWNoIGlzc3VlcyBhcmUgdXN1YWxseSBhIHJhdGhlciBiaWcgbm8tbm8gYW5kIG5lZWQgdG8gYmUg
Zml4ZWQgaW4gdGhlIGxvbmcgdGVybS4NCj4+Pg0KPj4+IFRyeSB0byBhZGQgZG1hX2ZlbmNlX2Jl
Z2luX3NpZ25hbGluZygpIGFuZCBkbWFfZmVuY2VfZW5kX3NpZ25hbGluZygpIGFubm90YXRpb24g
YW5kIGVuYWJsZSBsb2NrZGVwLCB0aGUgdG9vbCBzaG91bGQgYmUgYWJsZSB0byBwb2ludCBvdXQg
aWYgYW5kIHdoYXQgZXhhY3RseSBnb2VzIHdyb25nLg0KPj4+DQo+Pj4gVGhlIHVzdWFsIGZpeCBp
cyB0byBwcmVwYXJlIGV2ZXJ5dGhpbmcgYmVmb3JlIGNvbW1pdF90YWlsIGlzIGNhbGxlZCAoYWxs
b2MgbWVtb3J5LCBjcmVhdGUsIHJlc2VydmUgc2xvdCwgYWRkIGRtYV9mZW5jZSBldGMuLi4uKSBh
bmQgdGhlbiBqdXN0IHNlbmQgb3V0IHRoZSBwcmVwYXJlZCBjb21tYW5kcyBsYXRlciBvbi4NCj4+
DQo+PiBXZSB0cmllZCB3aXRoIG1vdmluZyByZXN2IGFsbG9jIHRvIHByZXBhcmVfZmIoKSBpbiBh
IHByZXZpb3VzIHBhdGNoDQo+PiB2ZXJzaW9uLCBpdCByZXN1bHRlZCBpbiBhIG5vbi10cml2aWFs
IGRlYWRsb2Nrcy4gVGhlIGdvYWwgb2YgdGhpcyBwYXRjaA0KPj4gaXMgdG8gZml4IGltbWVkaWF0
ZSBwcm9ibGVtIHdpdGggYSBtaW5pbWFsIGNvZGUgY2hhbmdlLg0KPiANCj4gWWVhaCwgdG90YWxs
eSBmaW5lIHdpdGggbWUgdG8gZ2V0IHRoYXQgZml4ZWQgZmlyc3QuDQo+IA0KPj4gV2hhdCB5b3Un
cmUgc2F5aW5nIGlzIGNvcnJlY3QsIGJ1dCBpdCBtYXkgcmVxdWlyZSBhIHJhdGhlciBiaWcNCj4+
IHJlZmFjdG9yaW5nIG9mIHRoZSBjb2RlLiBJbiBnZW5lcmFsLCBldmVyeXRoaW5nIHdvcmtzIG9r
YXkgdG9kYXksIHNvIG5vdA0KPj4gcmVhbGx5IGFuIHVyZ2VudCBwcm9ibGVtLg0KPiANCj4gSXQn
cyBqdXN0IGEgcG90ZW50aWFsIGlzc3VlIGFuZCB3aGVuIHRoZSBBSSBib3RzIGtlZXAgZXZvbHZp
bmcgbGlrZSB0aGV5IGFscmVhZHkgZG8gdGhleSB3aWxsIHNvb25lciBvciBsYXRlciBzdGFydCB0
byBwb2ludCB0aGF0IG91dCBhcyB3ZWxsLg0KRG9uJ3QgbWluZCBpZiBib3RzIHdpbGwgcHJvZHVj
ZSBzb21ldGhpbmcgdXNlZnVsDQoNCi0tIA0KQmVzdCByZWdhcmRzLA0KRG1pdHJ5DQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
