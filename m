Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oh/ED9JuVmqs5QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:16:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A81F575740C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:16:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b=DsTVFV9J;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C04123F732
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:16:00 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 7237C40AA9
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 09:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1TYMgFbsZk3C4VsIV6cOCwS3sYW9gqVKz0hDjm9HJmM=; b=DsTVFV9JoWtCweWr6kX9IAi8At
	PwNORQnTyasxMakqw37DYc/UVQ78O17cKXNxZ78IJt58z4QiyS+D7s8qeiICGF/rV/U3sjRAitSk7
	9X6TxB4wf3rOtAEoHXcXYVDtq3RBpjRxQfIfyJ2qXMhyCu40vQL23TqECUXg6F7pIE6KsFz9gpNW5
	IeG225lYq2xAtjbZXpVKALwhGO6x+Go/V3cMnbAWcTONjC6CL72iB4Gohkcwl/+jLpbKEvzMh9lmc
	+zqeRXiFunlgCIalJED+qTMcV8VJm4GlbsCHSQRmAbsMn2DQpAN6g0nIrTkcS1LULjrvKYOjkYqbz
	E+jl5jLA==;
Received: from [90.240.106.137] (helo=[192.168.0.116])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wer1C-007UF9-1h; Wed, 01 Jul 2026 11:14:06 +0200
Message-ID: <6f4a8e96-db41-4609-8c84-54d847911857@igalia.com>
Date: Wed, 1 Jul 2026 10:14:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: christian.koenig@amd.com, phasta@kernel.org, simona@ffwll.ch,
 sumit.semwal@linaro.org, dakr@kernel.org
References: <20260624122917.2483-1-christian.koenig@amd.com>
 <20260624122917.2483-4-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <20260624122917.2483-4-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5EYUDMXWDUTTUSS4HKBITPM7FTPWZACP
X-Message-ID-Hash: 5EYUDMXWDUTTUSS4HKBITPM7FTPWZACP
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:14:39 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/10] drm/amdgpu: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5EYUDMXWDUTTUSS4HKBITPM7FTPWZACP/>
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
X-Rspamd-Queue-Id: A81F575740C

DQpPbiAyNC8wNi8yMDI2IDEyOjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBJbnN0ZWFk
IG9mIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoKSB1c2UNCj4gZG1hX2ZlbmNlX3Rlc3Rf
c2lnbmFsZWRfZmxhZygpLg0KPiANCj4gVGhlIGV4dHJhIHBvbGxpbmcgY2hlY2sgc2VlbXMgdW5l
Y2Vzc2FyeSBmb3IgdGhvc2UgdXNlIGNhc2VzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gICBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYyAgICAgICB8IDggKysrKy0tLS0NCj4g
ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5jICAgICAgICB8IDIgKy0N
Cj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuYyB8IDIg
Ky0NCj4gICAzIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVu
Y2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQo+IGluZGV4
IGVhNjliMWJhYzdjNi4uMTE5MmI5ODAwZmYyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZmVuY2UuYw0KPiBAQCAtNjUyLDcgKzY1Miw3IEBAIHZvaWQgYW1kZ3B1
X2ZlbmNlX2RyaXZlcl9zZXRfZXJyb3Ioc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCBpbnQgZXJy
b3IpDQo+ICAgDQo+ICAgCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZHJ2LT5m
ZW5jZXNbaV0sDQo+ICAgCQkJCQkJICBsb2NrZGVwX2lzX2hlbGQoJmRydi0+bG9jaykpOw0KPiAt
CQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoZmVuY2UpKQ0KPiAr
CQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2UpKQ0KPiAg
IAkJCWRtYV9mZW5jZV9zZXRfZXJyb3IoZmVuY2UsIGVycm9yKTsNCj4gICAJfQ0KPiAgIAlzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZkcnYtPmxvY2ssIGZsYWdzKTsNCj4gQEAgLTY3Nyw3ICs2Nzcs
NyBAQCB2b2lkIGFtZGdwdV9mZW5jZV9kcml2ZXJfZm9yY2VfY29tcGxldGlvbihzdHJ1Y3QgYW1k
Z3B1X3JpbmcgKnJpbmcsDQo+ICAgDQo+ICAgCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90
ZWN0ZWQoZHJ2LT5mZW5jZXNbaV0sDQo+ICAgCQkJCQkJICBsb2NrZGVwX2lzX2hlbGQoJmRydi0+
bG9jaykpOw0KPiAtCQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQo
ZmVuY2UpKSB7DQo+ICsJCWlmIChmZW5jZSAmJiAhZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxh
ZyhmZW5jZSkpIHsNCj4gICAJCQlpZiAoZmVuY2UgPT0gdGltZWRvdXRfZmVuY2UpDQo+ICAgCQkJ
CWRtYV9mZW5jZV9zZXRfZXJyb3IoZmVuY2UsIC1FVElNRSk7DQo+ICAgCQkJZWxzZQ0KPiBAQCAt
NzM4LDcgKzczOCw3IEBAIHZvaWQgYW1kZ3B1X3Jpbmdfc2V0X2ZlbmNlX2Vycm9yc19hbmRfcmVl
bWl0KHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywNCj4gICAJCXJjdV9yZWFkX2xvY2soKTsNCj4g
ICAJCXVucHJvY2Vzc2VkID0gcmN1X2RlcmVmZXJlbmNlKCpwdHIpOw0KPiAgIA0KPiAtCQlpZiAo
dW5wcm9jZXNzZWQgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQodW5wcm9jZXNzZWQp
KSB7DQo+ICsJCWlmICh1bnByb2Nlc3NlZCAmJiAhZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxh
Zyh1bnByb2Nlc3NlZCkpIHsNCj4gICAJCQlmZW5jZSA9IGNvbnRhaW5lcl9vZih1bnByb2Nlc3Nl
ZCwgc3RydWN0IGFtZGdwdV9mZW5jZSwgYmFzZSk7DQo+ICAgCQkJaXNfZ3VpbHR5X2ZlbmNlID0g
ZmVuY2UgPT0gZ3VpbHR5X2ZlbmNlOw0KPiAgIAkJCWlzX2d1aWx0eV9jb250ZXh0ID0gZmVuY2Ut
PmNvbnRleHQgPT0gZ3VpbHR5X2ZlbmNlLT5jb250ZXh0Ow0KPiBAQCAtODAyLDcgKzgwMiw3IEBA
IHZvaWQgYW1kZ3B1X3JpbmdfYmFja3VwX3VucHJvY2Vzc2VkX2NvbW1hbmRzKHN0cnVjdCBhbWRn
cHVfcmluZyAqcmluZywNCj4gICAJCXJjdV9yZWFkX2xvY2soKTsNCj4gICAJCXVucHJvY2Vzc2Vk
ID0gcmN1X2RlcmVmZXJlbmNlKCpwdHIpOw0KPiAgIA0KPiAtCQlpZiAodW5wcm9jZXNzZWQgJiYg
IWRtYV9mZW5jZV9pc19zaWduYWxlZCh1bnByb2Nlc3NlZCkpIHsNCj4gKwkJaWYgKHVucHJvY2Vz
c2VkICYmICFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKHVucHJvY2Vzc2VkKSkgew0KPiAg
IAkJCWZlbmNlID0gY29udGFpbmVyX29mKHVucHJvY2Vzc2VkLCBzdHJ1Y3QgYW1kZ3B1X2ZlbmNl
LCBiYXNlKTsNCj4gICANCj4gICAJCQlhbWRncHVfcmluZ19iYWNrdXBfdW5wcm9jZXNzZWRfY29t
bWFuZChyaW5nLCBmZW5jZSk7DQoNCk5vIGZlbmNlLT5vcHMtPnNpZ25hbGVkIHNvIGFsbCBnb29k
Lg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmlu
Zy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYw0KPiBpbmRleCBk
NmJlZTVjMzAwNzMuLmFlOWQ2YTJlZWZhYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfcmluZy5jDQo+IEBAIC00NjAsNyArNDYwLDcgQEAgYm9vbCBhbWRncHVfcmlu
Z19zb2Z0X3JlY292ZXJ5KHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgdW5zaWduZWQgaW50IHZt
aWQsDQo+ICAgCQlyZXR1cm4gZmFsc2U7DQo+ICAgDQo+ICAgCWRtYV9mZW5jZV9sb2NrX2lycXNh
dmUoZmVuY2UsIGZsYWdzKTsNCj4gLQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQo
ZmVuY2UpKQ0KPiArCWlmICghZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmZW5jZSkpDQo+
ICAgCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKGZlbmNlLCAtRU5PREFUQSk7DQo+ICAgCWRtYV9mZW5j
ZV91bmxvY2tfaXJxcmVzdG9yZShmZW5jZSwgZmxhZ3MpOw0KDQpBIGJpdCBvZiBhbiBvZGQgZnVu
Y3Rpb24/IFdpdGggdGhpcyBjaGFuZ2UgaXQgYmVjb21lczoNCg0KCWRtYV9mZW5jZV9sb2NrX2ly
cXNhdmUoZmVuY2UsIGZsYWdzKTsNCglpZiAoIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWco
ZmVuY2UpKQ0KCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKGZlbmNlLCAtRU5PREFUQSk7DQoJZG1hX2Zl
bmNlX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLCBmbGFncyk7DQoNCgl3aGlsZSAoIWRtYV9mZW5j
ZV9pc19zaWduYWxlZChmZW5jZSkgJiYNCgkgICAgICAga3RpbWVfdG9fbnMoa3RpbWVfc3ViKGRl
YWRsaW5lLCBrdGltZV9nZXQoKSkpID4gMCkNCgkJcmluZy0+ZnVuY3MtPnNvZnRfcmVjb3Zlcnko
cmluZywgdm1pZCk7DQoNCglyZXQgPSBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpOw0KDQpE
b2VzIHRoaXMgZmxvdyBtYWtlIHNlbnNlPw0KDQo+ICAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV91c2VycV9mZW5jZS5jDQo+IGluZGV4IGE0MWZiNzJkYmE5NC4u
MmNjNjU1MmE2Mzk5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfdXNlcnFfZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfdXNlcnFfZmVuY2UuYw0KPiBAQCAtNDI2LDcgKzQyNiw3IEBAIGFtZGdwdV91c2VycV9m
ZW5jZV9kcml2ZXJfc2V0X2Vycm9yKHN0cnVjdCBhbWRncHVfdXNlcnFfZmVuY2UgKmZlbmNlLA0K
PiAgIA0KPiAgIAlmID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZCgmZmVuY2UtPmJhc2UsDQo+
ICAgCQkJCSAgICAgIGxvY2tkZXBfaXNfaGVsZCgmZmVuY2VfZHJ2LT5mZW5jZV9saXN0X2xvY2sp
KTsNCj4gLQlpZiAoZiAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChmKSkNCj4gKwlp
ZiAoZiAmJiAhZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmKSkNCj4gICAJCWRtYV9mZW5j
ZV9zZXRfZXJyb3IoZiwgZXJyb3IpOw0KPiAgIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZmZW5j
ZV9kcnYtPmZlbmNlX2xpc3RfbG9jaywgZmxhZ3MpOw0KPiAgIH0NCg0KYW1kZ3B1X3VzZXJxX2Zl
bmNlX3NpZ25hbGVkIGRvZXMgZXhpc3RzIHNvIGlzIHRoZXJlIGFueSBzY29wZSBmb3IgdGhpcyAN
CnRvIG9wZW4gYSBmYWxzZSBwb3NpdGl2ZSB3aW5kb3c/DQoNClJlZ2FyZHMsDQoNClR2cnRrbw0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
