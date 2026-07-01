Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WOQxJMhuVmqp5QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:15:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 26824757404
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:15:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b=CNK8dPCz;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43DC240165
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:15:51 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 2D08F40AAD
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 08:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Vcr9hDLfN5srlwZ5qfiqQl9LSdudUQDmJHBwn+BWzxc=; b=CNK8dPCzUY0KTxowYj9l/wPf5V
	Xq4Lh9DqMwr/uiu0tjxHrFyffPmPDpMlIQ0woTTCjARljDZaocyLZ/4bfNEMG+92YQ5X7QtBHGt+Z
	ekSNdDbXziQzudZ8pDOSDjkPJZUY0q5IDh2E+IYHn6NC6DwDs37HFtIvp4Jh9qobyZG6epO1SUSf+
	Fcku8rZcAme5wPNLexwQHBEiJQ3+C5KstkLiklRE1FKM5ySzcWTSrolioRughWoWWxl7l9QpFObQU
	ybpv9aBxSgoxOe8hSI5EZir4Ski7mJ6HmdHV18l/FPYq4njK14Xwe5mdPCi+qBiJhHhso+dTLbPU3
	Ut03HdTg==;
Received: from [90.240.106.137] (helo=[192.168.0.116])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1weqYt-007Tf1-I4; Wed, 01 Jul 2026 10:44:51 +0200
Message-ID: <d30b496e-2971-429d-b49d-4fe6e15a1830@igalia.com>
Date: Wed, 1 Jul 2026 09:44:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: christian.koenig@amd.com, phasta@kernel.org, simona@ffwll.ch,
 sumit.semwal@linaro.org, dakr@kernel.org
References: <20260624122917.2483-1-christian.koenig@amd.com>
 <20260624122917.2483-3-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <20260624122917.2483-3-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IFIOLMWZBIVYUOEBSKMJGZ7L42E6ZMRW
X-Message-ID-Hash: IFIOLMWZBIVYUOEBSKMJGZ7L42E6ZMRW
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:14:39 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/10] dma-buf: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IFIOLMWZBIVYUOEBSKMJGZ7L42E6ZMRW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[320];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:from_mime,igalia.com:mid,linaro.org:email,amd.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 26824757404

DQpPbiAyNC8wNi8yMDI2IDEyOjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBJbnN0ZWFk
IG9mIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoKSB1c2UNCj4gZG1hX2ZlbmNlX3Rlc3Rf
c2lnbmFsZWRfZmxhZygpLg0KPiANCj4gVGhlIGV4dHJhIHBvbGxpbmcgY2hlY2sgc2VlbXMgdW5l
Y2Vzc2FyeSBmb3IgdGhvc2UgdXNlIGNhc2VzLg0KDQpJIGVjaG8gdGhlIGNvbW1lbnQgdGhhdCBi
ZXR0ZXIgY29tbWl0IG1lc3NhZ2VzIGFyZSBuZWVkZWQgaW4gdGhpcyANCnNlcmllcy4gQWxzbywg
dGhlIHBhdGNoIGFmZmVjdHMgdHdvIHJlYWxseSBkaWZmZXJlbnQgYXJlYXMgc28gc2hvdWxkIGJl
IA0Kc3BsaXQgaW4gdHdvLg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9z
d19zeW5jLmMgfCAyICstDQo+ICAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCB8IDIgKy0NCj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIGIvZHJpdmVycy9kbWEtYnVm
L3N3X3N5bmMuYw0KPiBpbmRleCA4ZGYyMGIwMjE4YTkuLjI0Mzk5MWJjMTUwNiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYv
c3dfc3luYy5jDQo+IEBAIC0yNjIsNyArMjYyLDcgQEAgc3RhdGljIHN0cnVjdCBzeW5jX3B0ICpz
eW5jX3B0X2NyZWF0ZShzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLA0KPiAgIAlJTklUX0xJU1Rf
SEVBRCgmcHQtPmxpbmspOw0KPiAgIA0KPiAgIAlzcGluX2xvY2tfaXJxKCZvYmotPmxvY2spOw0K
PiAtCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZCgmcHQtPmJhc2UpKSB7DQo+ICsJ
aWYgKCFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKCZwdC0+YmFzZSkpIHsNCj4gICAJCXN0
cnVjdCByYl9ub2RlICoqcCA9ICZvYmotPnB0X3RyZWUucmJfbm9kZTsNCj4gICAJCXN0cnVjdCBy
Yl9ub2RlICpwYXJlbnQgPSBOVUxMOw0KPiAgIA0KDQpJIGFtIG5vdCBmYW1pbGlhciB3aXRoIHRo
ZSBpbXBsZW1lbnRhdGlvbiBidXQgdGhpcyBsb29rcyBzYWZlIHRvIG1lLiBJdCANCmFwcGVhcnMg
dGhlIHBvaW50IGlzIHRvIGp1c3Qgbm90IGFsbG93IHVzZXJzcGFjZSBpbnNlcnRpbmcgcGFzdCBm
ZW5jZXMgDQppbnRvIHRoZSBpbnRlcm5hbCB0cmFja2luZyBzdHJ1Y3R1cmVzLg0KDQo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaA0KPiBpbmRleCAxNThjZDYwOWYxMDMuLjgwM2UxMGNhNzZlMyAxMDA2NDQNCj4gLS0tIGEv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS5oDQo+IEBAIC02NTgsNyArNjU4LDcgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2ZlbmNl
ICpkbWFfZmVuY2VfbGF0ZXIoc3RydWN0IGRtYV9mZW5jZSAqZjEsDQo+ICAgICovDQo+ICAgc3Rh
dGljIGlubGluZSBpbnQgZG1hX2ZlbmNlX2dldF9zdGF0dXNfbG9ja2VkKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQ0KPiAgIHsNCj4gLQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChm
ZW5jZSkpDQo+ICsJaWYgKGRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2UpKQ0KPiAg
IAkJcmV0dXJuIGZlbmNlLT5lcnJvciA/OiAxOw0KPiAgIAllbHNlDQo+ICAgCQlyZXR1cm4gMDsN
Cg0KVGhpcyBvbmUgaGFzIG1vcmUgY2FsbGVycy4NCg0KMS4gc3luY19mZW5jZSAtIHNob3VsZCBi
ZSBmaW5lLg0KMi4gYW1kZ3B1IC0gU21hbGxpc2ggZmFsc2UgcG9zaXRpdmUgcmFjZSBvbiByZXNl
dD8gQnV0IHBvc3NpYmx5IG9rYXkuIA0KWW91ciBjYWxsLg0KMy4gU2VsZnRlc3RzIC0gc2luZ2xl
IHRocmVhZGVkIHNvIG9rYXkuDQo0LiBOb3V2ZWF1IC0gbG9va3MgbGlrZSBzb21lIHNvcnQgb2Yg
YSBsYXN0IGdhc3AgY2hlY2sgZm9yIHNpZ25hbGVkIA0Kc3RhdHVzIHdoZW4gd2FpdCBleHBpcmVk
LiBJdCdzIGEgMTUgc2Vjb25kIHRpbWVvdXQgc28gSSBndWVzcyBmaW5lIGFzIHdlbGwuDQoNClNv
IGluIHN1bW1hcnksIGNoYW5nZXMgbG9vayBmaW5lIHRvIG1lLiBCdXQgSSB3b3VsZCBzcGxpdCBz
d19zeW5jIGFuZCANCmdldF9zdGF0dXMgYW5kIGltcHJvdmUgdGhlIGNvbW1pdCBtZXNzYWdlIGZv
ciBib3RoLg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
