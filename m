Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CjRnCiRyVmrT5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C3075771D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=collabora.com header.s=zohomail header.b=EbxSN6TK;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=collabora.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4EE9404D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:30:10 +0000 (UTC)
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com [136.143.188.11])
	by lists.linaro.org (Postfix) with ESMTPS id 6BC1B409AC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Jul 2026 10:18:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1783937877; cv=none;
	d=zohomail.com; s=zohoarc;
	b=Bnbl8tTJoTfaGvyRZh19eYasH4GlvD7TOPy1Jz+1oKPn5sLTI4gDwsn0skyhDADEhq3dAZwuX4rJimB/zjA+rthcUcVcGbekaNMXBgjh+zAFRYLaho2N/WG3d6b7CUgAhhxoLFqt3QgmJTQccMGqoTgv3gfSChiuI3HCtozcPek=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1783937877; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=eF/PXcf5sIdDIk+5d8YuZl+bijPIvKV3sjgnL2+qmBQ=;
	b=i3w83ygpTmlBL/bKPlDv745OLrYadG1ksIx19btlL+fnAacW6RHqF/XosREGy06EtpfqHFhKlZDZ0US2h06Kjrv5riHStqv/iX8GXlAJpxD1zHPeOOtyvY+9S1JhPSi6qSahgOS/CBTL3x+NMCVvId+7MGrSqzo+GeyW3Pnsldo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=robert.mader@collabora.com;
	dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783937877;
	s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=eF/PXcf5sIdDIk+5d8YuZl+bijPIvKV3sjgnL2+qmBQ=;
	b=EbxSN6TKUlA5zMtHfxad/oc9MbDccq+wPYy2CoD2wp5bQzEs/DyRZFMdvYFt52iw
	1Bk9QRKUWxvh7MUPucZ8pFFqypg/l9cGWbAhEvzlu0N5Be1skzztRhOaDJFrCdNe0O+
	6dzegfpYMxr4aDQXJ849ry3YGXKDfy8bjqFFyD1Q=
Received: by mx.zohomail.com with SMTPS id 1783937875341589.3965950125053;
	Mon, 13 Jul 2026 03:17:55 -0700 (PDT)
Message-ID: <8b0d0180-09ef-42c7-b111-db51d5ddacca@collabora.com>
Date: Mon, 13 Jul 2026 12:17:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
References: <20260711144814.8205-1-robert.mader@collabora.com>
 <6764ca6f-b4d8-4baa-9d27-2ca867ac2d41@amd.com>
Content-Language: en-US, de-DE, en-GB
From: Robert Mader <robert.mader@collabora.com>
In-Reply-To: <6764ca6f-b4d8-4baa-9d27-2ca867ac2d41@amd.com>
X-Spamd-Bar: -----
X-MailFrom: robert.mader@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WUUY4BHMYVLY3FDVJPPPFGQREALGYMVN
X-Message-ID-Hash: WUUY4BHMYVLY3FDVJPPPFGQREALGYMVN
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:05 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 1/2] dma-buf/udmabuf: Introduce CONFIG_UDMABUF_SIZE_LIMIT_MBYTES
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WUUY4BHMYVLY3FDVJPPPFGQREALGYMVN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	DATE_IN_PAST(1.00)[31];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:sumit.semwal@linaro.org,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robert.mader@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.mader@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:email,collabora.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A8C3075771D

SGksDQoNCk9uIDEzLjA3LjI2IDExOjEyLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiA3
LzExLzI2IDE2OjQ4LCBSb2JlcnQgTWFkZXIgd3JvdGU6DQo+PiBBcyB1ZG1hYnVmIGluY3JlYXNp
bmdseSBlbmpveXMgcG9wdWxhcml0eSAtIGJlaW5nIHVzZWQgaW4gcHJvamVjdHMgbGlrZQ0KPj4g
bGliY2FtZXJhLCBHc3RyZWFtZXIsIE1lc2EgYW5kIEtXaW4gLSB1c2VycyBtb3JlIGZyZXF1ZW50
bHkgZW5jb3VudGVyDQo+PiBjYXNlcyB3aGVyZSB0aGUgY3VycmVudCBkZWZhdWx0IHNpemUgbGlt
aXQgb2YgNjRNQiBpcyB0b28gbG93LiBFeGFtcGxlcw0KPj4gaW5jbHVkZSBhbGxvY2F0aW5nIHZp
ZGVvIGJ1ZmZlcnMgYXQgYSA4SyByZXNvbHV0aW9uIC0gYW5kIGV2ZW4gNEsgaXMNCj4+IGFmZmVj
dGVkIHdoZW4gdXNpbmcgbm9uLXN1YnNhbXBsZWQgdmlkZW8gZm9ybWF0cyBvciBoaWdoIGJpdCBk
ZXB0aHMuDQo+Pg0KPj4gV2hpbGUgdGhlIGxpbWl0IGNhbiBhbHJlYWR5IGJlIGNoYW5nZWQgdmlh
IHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lLA0KPj4gZXhwb3NpbmcgaXQgYXMgYSBrZXJuZWwgY29u
ZmlnIG1ha2VzIHRoYXQgZWFzaWVyIGFuZCBtb3JlIGRpc2NvdmVyYWJsZQ0KPj4gZm9yIGRpc3Ry
b3MuIFRodXMgbGV0J3MgZG8gdGhhdC4NCj4gV2VsbCBjb25maWcgb3B0aW9ucyBhcmUgdXN1YWxs
eSBvbmx5IHVzZWZ1bCBpZiB0aGUgdmFsdWUgY2FuJ3QgYmUgY2hhbmdlZCBvbiBydW50aW1lIHRo
cm91Z2ggYSBtb2R1bGUgcGFyYW1ldGVyLCBidXQgdGhhdCBpcyBjbGVhcmx5IG5vdCB0aGUgY2Fz
ZSBoZXJlLg0KPg0KPiBPbiB0aGUgb3RoZXIgaGFuZCBJIGRvIHNlZSB5b3VyIHByb2JsZW0uIEkg
d291bGQganVzdCB2b3RlIHRvIGRpc2FibGUgdGhlIGxpbWl0IGJ5IGRlZmF1bHQsIHRoZXJlIGlz
IG5vdGhpbmcgcHJldmVudGluZyB1c2Vyc3BhY2UgZnJvbSBhbGxvY2F0aW5nIG11bHRpcGxlIHVE
TUEtYnVmcyBzbyBpdCBkb2Vzbid0IHNlZW0gdG8gcHJldmVudCBhbnkgc2VjdXJpdHkgaXNzdWUg
b3Igc2ltaWxhci4NCg0KSSBmdWxseSBhZ3JlZSBhbmQgd291bGQgcHJlZmVyIHRoYXQgYXMgd2Vs
bC4gSWYgdGhlcmUgaXMgbm8gcmVzaXN0YW5jZSAvIA0KY29uY2VybnMgZnJvbSBhbnlib2R5IEkn
bGwgc2VuZCBhIGNvcnJlc3BvbmRpbmcgcGF0Y2ggYXQgdGhlIGVuZCBvZiB0aGUgDQp3ZWVrLg0K
DQpUaGFua3MsDQoNClJvYmVydA0KDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4N
Cj4+IFNpZ25lZC1vZmYtYnk6IFJvYmVydCBNYWRlciA8cm9iZXJ0Lm1hZGVyQGNvbGxhYm9yYS5j
b20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9kbWEtYnVmL0tjb25maWcgICB8IDYgKysrKysrDQo+
PiAgIGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgfCA0ICsrKysNCj4+ICAgMiBmaWxlcyBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCj4+IGluZGV4IDdlZmMwZjBkMDcx
Mi4uMzVmMDc3OWNkYzgwIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcN
Cj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQo+PiBAQCAtNDAsNiArNDAsMTIgQEAg
Y29uZmlnIFVETUFCVUYNCj4+ICAgICAgICAgICAgQSBkcml2ZXIgdG8gbGV0IHVzZXJzcGFjZSB0
dXJuIG1lbWZkIHJlZ2lvbnMgaW50byBkbWEtYnVmcy4NCj4+ICAgICAgICAgICAgUWVtdSBjYW4g
dXNlIHRoaXMgdG8gY3JlYXRlIGhvc3QgZG1hYnVmcyBmb3IgZ3Vlc3QgZnJhbWVidWZmZXJzLg0K
Pj4NCj4+ICtjb25maWcgVURNQUJVRl9TSVpFX0xJTUlUX01CWVRFUw0KPj4gKyAgICAgICBpbnQg
IlNpemUgbGltaXQgaW4gTWVnYSBCeXRlcyINCj4+ICsgICAgICAgZGVmYXVsdCA2NA0KPj4gKyAg
ICAgICBoZWxwDQo+PiArICAgICAgICAgTWF4aW11bSBzaXplIG9mIGEgdWRtYWJ1ZiwgaW4gbWVn
YWJ5dGVzLiBEZWZhdWx0IGlzIDY0Lg0KPj4gKw0KPj4gICBjb25maWcgRE1BQlVGX0RFQlVHDQo+
PiAgICAgICAgICBib29sICJETUEtQlVGIGRlYnVnIGNoZWNrcyINCj4+ICAgICAgICAgIGRlcGVu
ZHMgb24gRE1BX1NIQVJFRF9CVUZGRVINCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
dWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPj4gaW5kZXggYmNlZDQyMWMw
ZDY1Li5hODMxNTMzMjYzNjIgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1
Zi5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+PiBAQCAtMjAsNyArMjAs
MTEgQEAgc3RhdGljIGludCBsaXN0X2xpbWl0ID0gMTAyNDsNCj4+ICAgbW9kdWxlX3BhcmFtKGxp
c3RfbGltaXQsIGludCwgMDY0NCk7DQo+PiAgIE1PRFVMRV9QQVJNX0RFU0MobGlzdF9saW1pdCwg
InVkbWFidWZfY3JlYXRlX2xpc3QtPmNvdW50IGxpbWl0LiBEZWZhdWx0IGlzIDEwMjQuIik7DQo+
Pg0KPj4gKyNpZmRlZiBDT05GSUdfVURNQUJVRl9TSVpFX0xJTUlUX01CWVRFUw0KPj4gK3N0YXRp
YyBpbnQgc2l6ZV9saW1pdF9tYiA9IENPTkZJR19VRE1BQlVGX1NJWkVfTElNSVRfTUJZVEVTOw0K
Pj4gKyNlbHNlDQo+PiAgIHN0YXRpYyBpbnQgc2l6ZV9saW1pdF9tYiA9IDY0Ow0KPj4gKyNlbmRp
Zg0KPj4gICBtb2R1bGVfcGFyYW0oc2l6ZV9saW1pdF9tYiwgaW50LCAwNjQ0KTsNCj4+ICAgTU9E
VUxFX1BBUk1fREVTQyhzaXplX2xpbWl0X21iLCAiTWF4IHNpemUgb2YgYSBkbWFidWYsIGluIG1l
Z2FieXRlcy4gRGVmYXVsdCBpcyA2NC4iKTsNCj4+DQo+PiAtLQ0KPj4gMi41NS4wDQo+Pg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
