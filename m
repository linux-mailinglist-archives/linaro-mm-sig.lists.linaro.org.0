Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCFxBOcS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D4B411FCF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBE95448D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:37 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 357A03F700
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 15:49:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=euVSCPcV;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771516145;
	bh=qZyc7S2pnypUfMT9iqtILOLjkgz49Qxah5rmq/l0rZY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=euVSCPcVcbq1yi4/RraGyuXZhvdD13iMhCfRzP9nKhRMKPXmYhLXOqsikcV5ptaXa
	 TBsHo8g0/Do3vBasu3CG8npoI4ADNXuWtmHrVpibNlF+wA4YlkcY2GaktU0koW5ihv
	 SUSnF7OuhMscQM7jr/VBSzNy2d1JYe3uSnHIBDRG8AUCMYO+xgNaqc7nCdDnSp7VQJ
	 ucL4IZcrdoNYK1WfZSAeqlRnJYe8uAlAvLUGrZEroX+7yB4jKJt6gW4K6k57L3Xdgh
	 9JBetvQ4IkvtfrZpLbuept4mkoQ8wQXmlN5QgRUb2g4FjYhFQx3dJWnDSB3HC+cf68
	 G/fTmFpnJA1Ww==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BF92C17E137B;
	Thu, 19 Feb 2026 16:49:04 +0100 (CET)
Date: Thu, 19 Feb 2026 16:49:01 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260219164901.02b7409f@fedora>
In-Reply-To: <10fa03cc-6575-48ce-b2ff-401b6a8bf4ce@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	<20260210102232.1642-3-christian.koenig@amd.com>
	<20260213152257.2651e2bb@fedora>
	<10fa03cc-6575-48ce-b2ff-401b6a8bf4ce@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: R2SEDP575JDMPIZFKZO2ZZUOIWH5MVXW
X-Message-ID-Hash: R2SEDP575JDMPIZFKZO2ZZUOIWH5MVXW
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:34 +0000
CC: phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/8] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R2SEDP575JDMPIZFKZO2ZZUOIWH5MVXW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	DATE_IN_PAST(1.00)[1344];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: B7D4B411FCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAxOSBGZWIgMjAyNiAxMzo1Mjo0MyArMDEwMA0KQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCg0KPiBPbiAyLzEzLzI2IDE1OjIyLCBCb3Jp
cyBCcmV6aWxsb24gd3JvdGU6DQo+ID4+IC0tLQ0KPiA+PiAgZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jIHwgMTYgKysrKysrKysrKysrLS0tLQ0KPiA+PiAgaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaCAgIHwgIDQgKystLQ0KPiA+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4+IGluZGV4IGRl
OWJmMThiZTNkNC4uYmEwMjMyMWJlZjBiIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMNCj4gPj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+
ID4+IEBAIC0zNzEsNiArMzcxLDE0IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBf
bG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPiA+PiAgCQkJCSAgICAgICZmZW5jZS0+
ZmxhZ3MpKSkNCj4gPj4gIAkJcmV0dXJuOw0KPiA+PiAgDQo+ID4+ICsJLyoNCj4gPj4gKwkgKiBX
aGVuIG5laXRoZXIgYSByZWxlYXNlIG5vciBhIHdhaXQgb3BlcmF0aW9uIGlzIHNwZWNpZmllZCBz
ZXQgdGhlIG9wcw0KPiA+PiArCSAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ug
c3RydWN0dXJlIHRvIGJlY29tZSBpbmRlcGVuZGVudA0KPiA+PiArCSAqIGZyb20gd2hvIG9yaWdp
bmFsbHkgaXNzdWVkIGl0LiAgDQo+ID4gDQo+ID4gSSB0aGluayB0aGlzIGRlc2VydmVzIHNvbWUg
Y29tbWVudCBpbiB0aGUgZG1hX2ZlbmNlX29wcyBkb2MsIHNvIHRoYXQNCj4gPiBwZW9wbGUga25v
dyB3aGF0IHRvIGV4cGVjdCB3aGVuIHRoZXkgaW1wbGVtZW50IHRoaXMgaW50ZXJmYWNlLiAgDQo+
IFRoZXJlIHdhcyBhbHJlYWR5IGEgd2FybmluZyBhZGRlZCBsaWtlIH41eWVhcnMgYWdvIHRoYXQg
aW1wbGVtZW50YXRpb25zIHNob3VsZG4ndCB1c2UgdGhlIHdhaXQgY2FsbGJhY2suDQo+IA0KPiBD
b21wbGV0ZWx5IGluZGVwZW5kZW50IG9mIHRoaXMgcGF0Y2ggc2V0IGhlcmUgd2UgYWxyZWFkeSBo
YWQgdG9ucyBvZiB0cm91YmxlIHdpdGggaXQgYmVjYXVzZSBpdCBjYW4ndCB0YWtlIGludG8gYWNj
b3VudCB3aGVuIHVzZXJwc2FjZSB3YWl0cyBmb3IgbXVsdGlwbGUgZmVuY2VzIGZyb20gZGlmZmVy
ZW50IGltcGxlbWVudGF0aW9ucy4NCj4gDQo+IEl0IHBvdGVudGlhbGx5IHdhcyBuZXZlciBhIGdv
b2QgaWRlYSB0byBoYXZlIGluIHRoZSBmaXJzdCBwbGFjZSwgd2UgYmFzaWNhbGx5IG9ubHkgaGFk
IGl0IGJlY2F1c2UgcmFkZW9uIChhbmQgSUlSQyBub3V2ZWF1IGF0IHRoYXQgcG9pbnQpIGRlcGVu
ZGVkIG9uIGl0Lg0KDQpGYWlyIGVub3VnaC4gSWYgaXQncyBmbGFnZ2VkIGRlcHJlY2F0ZWQgYWxy
ZWFkeSwgbGV0J3Mga2VlcCB0aGluZ3MgbGlrZQ0KdGhhdC4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
