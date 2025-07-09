Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 528FCAFDCEC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 03:29:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BD0E44861
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 01:29:23 +0000 (UTC)
Received: from mail.kapsi.fi (mail-auth.kapsi.fi [91.232.154.24])
	by lists.linaro.org (Postfix) with ESMTPS id 1009243D54
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jul 2025 01:29:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kapsi.fi header.s=20161220 header.b=rEhNdc7s;
	spf=pass (lists.linaro.org: domain of cyndis@kapsi.fi designates 91.232.154.24 as permitted sender) smtp.mailfrom=cyndis@kapsi.fi;
	dmarc=pass (policy=quarantine) header.from=kapsi.fi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=H30So9AdIyWkMEDjX7oZ8/lNt3wPb9URPVhtN/UoCoY=; b=rEhNdc7sYP5QbjLhEpRTTFVnp0
	ClbZhjfAN7rxmvfHdU7gK/TyLwxr0S4kyalUfl6O5lQVbmwXXj0GAm4y+D6eHK19w6rd00nl0NBD4
	fhsuc8+x4XfWBA6rw4mEUfEnTtaQdM97t9U+z2s5w8yIQjP/8QMnayxU0WH9CyApz47kIFv/YFPA2
	SO/Dvu2ZgUt6lOpKpAsS7uK0CjRMTS4bZ8lI7F0Y4ll1dm0R2X718scvBUGcN28ufbPYTYfZwSDrT
	wnrScpmzaMiDupKZt2STDmWCcWNUU3sEIBfENoqZ3F+wu3VOc5Zw3TE4pj2qn5RhnrS79LcW+7FUo
	4SwvH3bQ==;
Received: from [2404:7a80:b960:1a00:5eaa:b33c:a197:a90f]
	by mail.kapsi.fi with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96)
	(envelope-from <cyndis@kapsi.fi>)
	id 1uZJcD-00Amxc-2j;
	Wed, 09 Jul 2025 04:28:54 +0300
Message-ID: <17629989-891c-4026-b9d6-3e1403adba6c@kapsi.fi>
Date: Wed, 9 Jul 2025 10:28:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>
References: <20250708-syncfile-enable-signaling-v1-1-9f6e6cd9fcda@nvidia.com>
 <1ebba600-31d2-48ed-b08b-46d667d38054@amd.com>
Content-Language: en-US
From: Mikko Perttunen <cyndis@kapsi.fi>
In-Reply-To: <1ebba600-31d2-48ed-b08b-46d667d38054@amd.com>
X-SA-Exim-Connect-IP: 2404:7a80:b960:1a00:5eaa:b33c:a197:a90f
X-SA-Exim-Mail-From: cyndis@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1009243D54
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kapsi.fi,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:91.232.154.24];
	R_DKIM_ALLOW(-0.20)[kapsi.fi:s=20161220];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:57692, ipnet:91.232.154.0/24, country:FI];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[91.232.154.24:from,2404:7a80:b960:1a00:5eaa:b33c:a197:a90f:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kapsi.fi:+]
X-Rspamd-Action: no action
Message-ID-Hash: WBDJGW73NHQAMMHV52DKHKLJLECJTFTV
X-Message-ID-Hash: WBDJGW73NHQAMMHV52DKHKLJLECJTFTV
X-MailFrom: cyndis@kapsi.fi
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Mikko Perttunen <mperttunen@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma_buf/sync_file: Enable signaling for fences when querying status
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WBDJGW73NHQAMMHV52DKHKLJLECJTFTV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gNy84LzI1IDExOjIwIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAwOC4wNy4y
NSAxNDowMywgTWlra28gUGVydHR1bmVuIHdyb3RlOg0KPj4gRnJvbTogTWlra28gUGVydHR1bmVu
IDxtcGVydHR1bmVuQG52aWRpYS5jb20+DQo+Pg0KPj4gZG1hX2ZlbmNlX2dldF9zdGF0dXMgaXMg
bm90IGd1YXJhbnRlZWQgdG8gcmV0dXJuIHZhbGlkIGluZm9ybWF0aW9uDQo+PiBvbiBpZiB0aGUg
ZmVuY2UgaGFzIGJlZW4gc2lnbmFsZWQgb3Igbm90IGlmIFNXIHNpZ25hbGluZyBoYXMgbm90DQo+
PiBiZWVuIGVuYWJsZWQgZm9yIHRoZSBmZW5jZS4gVG8gZW5zdXJlIHZhbGlkIGluZm9ybWF0aW9u
IGlzIHJlcG9ydGVkLA0KPj4gZW5hYmxlIFNXIHNpZ25hbGluZyBmb3IgZmVuY2VzIGJlZm9yZSBn
ZXR0aW5nIHRoZWlyIHN0YXR1cy4NCj4gDQo+IEkgZG9uJ3Qga25vdyBob3cgb2Z0ZW4gSSBoYWQg
dG8gcmVqZWN0ZWQgdGhhdCBwYXRjaCBub3csIHdlIHJlYWxseSBuZWVkIHRvIGltcHJvdmUgdGhl
IGRvY3VtZW50YXRpb24gOigNCg0KU29ycnkgOigNCg0KSW1wcm92ZWQgZG9jdW1lbnRhdGlvbiBj
ZXJ0YWlubHkgd291bGQgYmUgZ29vZC4gSSd2ZSB0aG91Z2h0IG9mIFNXIA0Kc2lnbmFsaW5nIGFz
IGEga2VybmVsLXNpZGUgJ29wdGltaXphdGlvbicgYW5kIG5vdCBzb21ldGhpbmcgdGhhdCB3b3Vs
ZCANCmJlIHZpc2libGUgdG8gdGhlIHVzZXIgc3BhY2UuIFBlcmhhcHMgZG9jdW1lbnRhdGlvbiBj
b3VsZCBhbHNvIG1lbnRpb24gDQpzaXR1YXRpb25zIHdoZXJlIGNhbGxpbmcgdGhpcyB3aXRob3V0
IGVuYWJsaW5nIHNpZ25hbGluZyBpcyB1c2VmdWwuIA0KQW55d2F5LCBJJ2xsIGZpeCBvdXIgaXNz
dWUgaW4gdXNlcnNwYWNlIGJ5IGFkZGluZyB0aGUgemVyby10aW1lb3V0IHBvbGwgDQppbnN0ZWFk
Lg0KDQpUaGFua3MhDQpNaWtrbw0KDQo+IA0KPiBUaGUgZmVuY2UgaW5mbyBxdWVyeSBleGlzdHMg
dG8gcXVlcnkgdGhlIHN0YXR1cyAqd2l0aG91dCogZW5hYmxpbmcgc2lnbmFsaW5nLCB0aGF0IGlz
IHRoZSB3aG9sZSBwdXJwb3NlIG9mIHRoZSBmdW5jdGlvbiENCj4gDQo+IElmIHlvdSB3YW50IHRv
IGVuYWJsZSBzaWduYWxpbmcgKmFuZCogcXVlcnkgdGhlIHN0YXR1cyB0aGVuIGp1c3QgcG9sbCBv
biB0aGUgc3luYyBmaWxlIGZpbGUgZGVzY3JpcHRvciB3aXRoIGEgemVybyB0aW1lb3V0Lg0KPiAN
Cj4gSWYgdGhlIHNpZ25hbGluZyB0aW1lc3RhbXAgb3IgZXJyb3IgY29kZSBpcyBuZWVkZWQgdGhl
biB0aGF0IGNhbiBiZSByZXRyaWV2ZWQgYWZ0ZXIgc2lnbmFsaW5nIHRocm91Z2ggdGhlIGluZm8g
SU9DVEwuDQo+IA0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+IA0KPj4NCj4+IFNpZ25lZC1v
ZmYtYnk6IE1pa2tvIFBlcnR0dW5lbiA8bXBlcnR0dW5lbkBudmlkaWEuY29tPg0KPj4gLS0tDQo+
PiAgIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyB8IDMgKysrDQo+PiAgIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L3N5bmNfZmlsZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jDQo+PiBpbmRleCA3NDdl
Mzc3ZmI5NTQxN2RkZDUwNmI1Mjg2MThhNDI4OGJlYTlkNDU5Li5hNmZkMWQxNGRkZTE1NTU2MWI5
ZmQyYzA3ZTZhYTIwZGM5ODYzYThkIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5
bmNfZmlsZS5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMNCj4+IEBAIC0y
NzEsNiArMjcxLDggQEAgc3RhdGljIGludCBzeW5jX2ZpbGxfZmVuY2VfaW5mbyhzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSwNCj4+ICAgCWNvbnN0IGNoYXIgX19yY3UgKnRpbWVsaW5lOw0KPj4gICAJ
Y29uc3QgY2hhciBfX3JjdSAqZHJpdmVyOw0KPj4gICANCj4+ICsJZG1hX2ZlbmNlX2VuYWJsZV9z
d19zaWduYWxpbmcoZmVuY2UpOw0KPj4gKw0KPj4gICAJcmN1X3JlYWRfbG9jaygpOw0KPj4gICAN
Cj4+ICAgCWRyaXZlciA9IGRtYV9mZW5jZV9kcml2ZXJfbmFtZShmZW5jZSk7DQo+PiBAQCAtMzIw
LDYgKzMyMiw3IEBAIHN0YXRpYyBsb25nIHN5bmNfZmlsZV9pb2N0bF9mZW5jZV9pbmZvKHN0cnVj
dCBzeW5jX2ZpbGUgKnN5bmNfZmlsZSwNCj4+ICAgCSAqIGluZm8tPm51bV9mZW5jZXMuDQo+PiAg
IAkgKi8NCj4+ICAgCWlmICghaW5mby5udW1fZmVuY2VzKSB7DQo+PiArCQlkbWFfZmVuY2VfZW5h
YmxlX3N3X3NpZ25hbGluZyhzeW5jX2ZpbGUtPmZlbmNlKTsNCj4+ICAgCQlpbmZvLnN0YXR1cyA9
IGRtYV9mZW5jZV9nZXRfc3RhdHVzKHN5bmNfZmlsZS0+ZmVuY2UpOw0KPj4gICAJCWdvdG8gbm9f
ZmVuY2VzOw0KPj4gICAJfSBlbHNlIHsNCj4+DQo+PiAtLS0NCj4+IGJhc2UtY29tbWl0OiA1OGJh
ODBjNDc0MDIxMmMyOWExY2Y5YjQ4ZjU4OGU2MGE3NjEyMjA5DQo+PiBjaGFuZ2UtaWQ6IDIwMjUw
NzA4LXN5bmNmaWxlLWVuYWJsZS1zaWduYWxpbmctYTk5M2FjZmYxODYwDQo+Pg0KPiANCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
