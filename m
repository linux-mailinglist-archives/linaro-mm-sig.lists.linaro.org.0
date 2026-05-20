Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zwfpCTFtDWpAxQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 10:13:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4955897C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 10:13:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 428534096B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 08:13:32 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 94F56401B7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 08:13:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=Uh3wbPHC;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1779264795; cv=none;
	d=zohomail.com; s=zohoarc;
	b=fhoFZAGE734g7YrwnK69+Fp+SlBP+e532/rwFxqqOg8FV5tdEIfaFORTiqM7n7YHad3es+GlWxlzsGHFrGKmdpYlnHvbmI07PynfxC0MmNg3KoTVLwV5hv//8Qm7A/9yCp5Bqp5lY06N0LRgOXEXr1Tm2J2d+40YejVZHso/9qc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1779264795; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=1DaCzDhRImq3pbfy2r8JVXerCF/X/rQL52mfTWicG4k=;
	b=K3aH/+VmSSz2zNU3CCHPtj8w3HqysMSbIPKHzatggDefM46va4bIfeUqv9Yi8u7NpUttUonl5naq6Pn/swZE223u1Adj+zj2Zvh30+EWyGv6ZzG7yNetKASukVSTLQVsaovI58YmPid6/GP6ZYkLAv9PWmFKpTYTPnzTcqVhyL4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779264795;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1DaCzDhRImq3pbfy2r8JVXerCF/X/rQL52mfTWicG4k=;
	b=Uh3wbPHCLetqao1sJ7Ww936T/0G+TEuQ9eZT1Mp+poKOwsOIjUnwdOOdRXAk4InP
	Uaty3nP1NfXa2mETMeGvPFJJqqvNUqPmcIWGCohU4EwEQ1nDdkykQdd/R7m2KjrSQ51
	g2CJSVyOSfXMx1O01zyUaaPNsikI0NgfwcNfxCrI=
Received: by mx.zohomail.com with SMTPS id 1779264793673372.72174741381184;
	Wed, 20 May 2026 01:13:13 -0700 (PDT)
Message-ID: <f37bdc63-3575-49e5-aa5b-7b93428b293d@collabora.com>
Date: Wed, 20 May 2026 11:12:53 +0300
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
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <a0f2cfd5-d4df-4e50-a52b-d5befbc2e481@amd.com>
X-ZohoMailClient: External
X-Spamd-Bar: ----
Message-ID-Hash: YC4Y3G26M56PJLYXZ2PZ6BE3KJLAFXZL
X-Message-ID-Hash: YC4Y3G26M56PJLYXZ2PZ6BE3KJLAFXZL
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YC4Y3G26M56PJLYXZ2PZ6BE3KJLAFXZL/>
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
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,redhat.com,chromium.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dmitry.osipenko@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5D4955897C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMC8yNiAxMDowNSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gNS8yMC8yNiAw
ODo1MCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOg0KPj4gT24gNS8xOS8yNiAxMToyNywgQ2hyaXN0
aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBPbiA1LzE5LzI2IDEwOjIyLCBEZWVwYW5zaHUgS2FydGlr
ZXkgd3JvdGU6DQo+Pj4+IHZpcnRpb19ncHVfY3Vyc29yX3BsYW5lX3VwZGF0ZSgpIGFuZCB2aXJ0
aW9fZ3B1X3Jlc291cmNlX2ZsdXNoKCkgbG9jaw0KPj4+PiB0aGUgZnJhbWVidWZmZXIgQk8ncyBk
bWFfcmVzdiB2aWEgdmlydGlvX2dwdV9hcnJheV9sb2NrX3Jlc3YoKSBhbmQNCj4+Pj4gaWdub3Jl
IGl0cyByZXR1cm4gdmFsdWUuIFRoZSBmdW5jdGlvbiBjYW4gZmFpbCB3aXRoIC1FSU5UUiBmcm9t
DQo+Pj4+IGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZSgpIChzaWduYWwgZHVyaW5nIGxvY2sg
d2FpdCkgb3Igd2l0aA0KPj4+PiAtRU5PTUVNIGZyb20gZG1hX3Jlc3ZfcmVzZXJ2ZV9mZW5jZXMo
KSAoZmVuY2Ugc2xvdCBhbGxvY2F0aW9uKSwNCj4+Pj4gbGVhdmluZyB0aGUgcmVzdiBsb2NrIG5v
dCBoZWxkLiBUaGUgcXVldWUgcGF0aCB0aGVuIHdhbGtzIHRoZSBvYmplY3QNCj4+Pj4gYXJyYXkg
YW5kIGNhbGxzIGRtYV9yZXN2X2FkZF9mZW5jZSgpLCB3aGljaCByZXF1aXJlcyB0aGUgbG9jayBo
ZWxkOw0KPj4+PiB3aXRoIGxvY2tkZXAgZW5hYmxlZCB0aGlzIHRyaXBzIGRtYV9yZXN2X2Fzc2Vy
dF9oZWxkKCk6DQo+Pj4+DQo+Pj4+ICAgV0FSTklORzogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmM6Mjk2IGF0IGRtYV9yZXN2X2FkZF9mZW5jZSsweDcxZS8weDg0MA0KPj4+PiAgIENhbGwgVHJh
Y2U6DQo+Pj4+ICAgIHZpcnRpb19ncHVfYXJyYXlfYWRkX2ZlbmNlDQo+Pj4+ICAgIHZpcnRpb19n
cHVfcXVldWVfY3RybF9zZ3MNCj4+Pj4gICAgdmlydGlvX2dwdV9xdWV1ZV9mZW5jZWRfY3RybF9i
dWZmZXINCj4+Pj4gICAgdmlydGlvX2dwdV9jdXJzb3JfcGxhbmVfdXBkYXRlDQo+Pj4+ICAgIGRy
bV9hdG9taWNfaGVscGVyX2NvbW1pdF9wbGFuZXMNCj4+Pj4gICAgZHJtX2F0b21pY19oZWxwZXJf
Y29tbWl0X3RhaWwNCj4+Pj4gICAgY29tbWl0X3RhaWwNCj4+Pj4gICAgZHJtX2F0b21pY19oZWxw
ZXJfY29tbWl0DQo+Pj4+ICAgIGRybV9hdG9taWNfY29tbWl0DQo+Pj4+ICAgIGRybV9hdG9taWNf
aGVscGVyX3VwZGF0ZV9wbGFuZQ0KPj4+PiAgICBfX3NldHBsYW5lX2F0b21pYw0KPj4+PiAgICBk
cm1fbW9kZV9jdXJzb3JfdW5pdmVyc2FsDQo+Pj4+ICAgIGRybV9tb2RlX2N1cnNvcl9jb21tb24N
Cj4+Pj4gICAgZHJtX21vZGVfY3Vyc29yX2lvY3RsDQo+Pj4+ICAgIGRybV9pb2N0bA0KPj4+PiAg
ICBfX3g2NF9zeXNfaW9jdGwNCj4+Pj4NCj4+Pj4gQmV5b25kIHRoZSBXQVJOLCBtdXRhdGluZyB0
aGUgZG1hX3Jlc3YgZmVuY2UgbGlzdCB3aXRob3V0IHRoZSBsb2NrDQo+Pj4+IHJhY2VzIHdpdGgg
Y29uY3VycmVudCByZWFkZXJzL3dyaXRlcnMgYW5kIGNhbiBjb3JydXB0IHRoZSBsaXN0Lg0KPj4+
DQo+Pj4gV2VsbCB3aHkgYXJlIHlvdSB0cnlpbmcgdG8gYWRkIGEgZmVuY2Ugb24gYW4gYXRvbWlj
IG1vZGUgc2V0IGluIHRoZSBmaXJzdCBwbGFjZT8NCj4+Pg0KPj4+IFRoYXQgaXMgdXN1YWxseSBh
biBpbGxlZ2FsIG9wZXJhdGlvbiBoZXJlLg0KPj4gVGhhdCBpcyBwcmUtZXhpc3RpbmcgaW4gdGhl
IGRyaXZlci4gSXQgcGVyZm9ybXMgZHJhdyBvcGVyYXRpb24gYW5kIGluDQo+PiBzb21lIGNhc2Vz
IHdhaXRzIGZvciB0aGUgY29tcGxldGlvbiBkdXJpbmcgYXRvbWljLiBXaGV0aGVyIGFsbCB0aGF0
DQo+PiBzeW5jaW5nIGlzIGNvcnJlY3QgaXMgaGFyZCB0byBzYXkgaW1tZWRpYXRlbHkgYXMgc29t
ZSBvZiBpdCBtYXkgYmUNCj4+IGhpc3RvcmljYWwgZWRnZSBjYXNlcy4NCj4gDQo+IEknbSBub3Qg
bm90IHNvIGRlZXBseSBpbiB0aGUgYXRvbWljIG1vZGUgc2V0dGluZyBzdHVmZiBidXQgaXQgc3Ry
b25nbHkgc291bmRzIGxpa2UgdGhhdCB0aGlzIGlzIHNlcmlvdXNseSBicm9rZW4uDQo+IA0KPiBU
aGUgYmFja2dyb3VuZCBpcyB0aGF0IHRoZSBhdG9taWMgbW9kZSBzZXQgZnJhbWV3b3JrIGFsbG93
cyBhbiBvdXRwdXQgZG1hX2ZlbmNlIHdoaWNoIGlzIHNpZ25hbGVkIHdoZW4gdGhlIGNvbW1pdCBp
cyBmaW5pc2hlZC4NCj4gDQo+IFNvIHdoZW4geW91IGFsbG9jYXRlIGEgZmVuY2Ugc2xvdCBhbmQg
YWRkIGEgbmV3IGZlbmNlIHRvIGZpbmlzaCB0aGUgYXRvbWljIGNvbW1pdCBpdCBpcyB0cml2aWFs
bHkgcG9zc2libGUgdGhhdCB0aGlzIGN5Y2xlcyBiYWNrIGFuZCB3YWl0cyBmb3IgdGhlIGF0b21p
YyBjb21taXQgdG8gZmluaXNoLiBJbiBvdGhlciB3b3JkcyB5b3UgaGF2ZSBhIGRlYWRsb2NrLg0K
PiANCj4gWW91IHByb2JhYmx5IG5lZWQgc3BlY2lhbGx5IGNyYWZ0ZWQgdXNlcnNwYWNlIHdpdGgg
dGhlIHJpZ2h0IHRpbWluZyB0byB0cmlnZ2VyIHRoYXQsIGJ1dCBzdWNoIGlzc3VlcyBhcmUgdXN1
YWxseSBhIHJhdGhlciBiaWcgbm8tbm8gYW5kIG5lZWQgdG8gYmUgZml4ZWQgaW4gdGhlIGxvbmcg
dGVybS4NCj4gDQo+IFRyeSB0byBhZGQgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGluZygpIGFuZCBk
bWFfZmVuY2VfZW5kX3NpZ25hbGluZygpIGFubm90YXRpb24gYW5kIGVuYWJsZSBsb2NrZGVwLCB0
aGUgdG9vbCBzaG91bGQgYmUgYWJsZSB0byBwb2ludCBvdXQgaWYgYW5kIHdoYXQgZXhhY3RseSBn
b2VzIHdyb25nLg0KPiANCj4gVGhlIHVzdWFsIGZpeCBpcyB0byBwcmVwYXJlIGV2ZXJ5dGhpbmcg
YmVmb3JlIGNvbW1pdF90YWlsIGlzIGNhbGxlZCAoYWxsb2MgbWVtb3J5LCBjcmVhdGUsIHJlc2Vy
dmUgc2xvdCwgYWRkIGRtYV9mZW5jZSBldGMuLi4uKSBhbmQgdGhlbiBqdXN0IHNlbmQgb3V0IHRo
ZSBwcmVwYXJlZCBjb21tYW5kcyBsYXRlciBvbi4NCg0KV2UgdHJpZWQgd2l0aCBtb3ZpbmcgcmVz
diBhbGxvYyB0byBwcmVwYXJlX2ZiKCkgaW4gYSBwcmV2aW91cyBwYXRjaA0KdmVyc2lvbiwgaXQg
cmVzdWx0ZWQgaW4gYSBub24tdHJpdmlhbCBkZWFkbG9ja3MuIFRoZSBnb2FsIG9mIHRoaXMgcGF0
Y2gNCmlzIHRvIGZpeCBpbW1lZGlhdGUgcHJvYmxlbSB3aXRoIGEgbWluaW1hbCBjb2RlIGNoYW5n
ZS4NCg0KV2hhdCB5b3UncmUgc2F5aW5nIGlzIGNvcnJlY3QsIGJ1dCBpdCBtYXkgcmVxdWlyZSBh
IHJhdGhlciBiaWcNCnJlZmFjdG9yaW5nIG9mIHRoZSBjb2RlLiBJbiBnZW5lcmFsLCBldmVyeXRo
aW5nIHdvcmtzIG9rYXkgdG9kYXksIHNvIG5vdA0KcmVhbGx5IGFuIHVyZ2VudCBwcm9ibGVtLg0K
DQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
