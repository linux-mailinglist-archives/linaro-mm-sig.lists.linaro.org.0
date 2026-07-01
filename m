Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IMcbCNxuVmqt5QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:16:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E33757412
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:16:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b="KX/VdJNn";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6C673F821
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:16:10 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id B9E343F8FF
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 09:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=lm2Lg0hziBPY14rNCyh+OlmQO8mTF2pGDV9lHYkkkSw=; b=KX/VdJNnQ0IWoRI8RlRbfGpInE
	7aC6wxDtZNSnwF/1iEyDH21N5CMR/+Lpco0mzVAxxyAOBBdE8iw37SEydgRNK3oKLduLsALL/wxZx
	oHTBJvg+O10p1V9TRuSBA7NMUPmwJgA6zkVbvp7DuZuidR1m8qMMXz+/OwfnhJIbMXZtEpVCn6iwy
	IrmQCM5E73J5lqw4jBUcoWkNXxMbDZ3S6CohGeds2sYw4UUvMcKWMNHEbpzMnN7myb0wvoiBDa+Sy
	x+MiRQi9NWST2pKnShCfvcG0fANhBmcsoDQ4nmX3p6RrPRLzLvrdZXuPc3Leuc65SFLlqK6AwEUms
	LuOUNcgA==;
Received: from [90.240.106.137] (helo=[192.168.0.116])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1werJM-007Udi-K1; Wed, 01 Jul 2026 11:32:52 +0200
Message-ID: <2c80b1d3-88f1-414d-a401-29ba56a6132b@igalia.com>
Date: Wed, 1 Jul 2026 10:32:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: christian.koenig@amd.com, phasta@kernel.org, simona@ffwll.ch,
 sumit.semwal@linaro.org, dakr@kernel.org
References: <20260624122917.2483-1-christian.koenig@amd.com>
 <20260624122917.2483-8-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <20260624122917.2483-8-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: A4OHBTN6UB4QCTZMSTQTSCSROP3WXKXF
X-Message-ID-Hash: A4OHBTN6UB4QCTZMSTQTSCSROP3WXKXF
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:14:39 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 07/10] dma-buf: remove dma_fence_is_signaled_locked()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A4OHBTN6UB4QCTZMSTQTSCSROP3WXKXF/>
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
	DATE_IN_PAST(1.00)[319];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,igalia.com:from_mime,igalia.com:email,igalia.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1E33757412

DQpPbiAyNC8wNi8yMDI2IDEyOjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBGaW5hbGx5
IHJlbW92ZSBvbmUgb2YgdGhlIGJpZ2dlc3QgdHJvdWJsZSBtYWtlcnMgaW4gdGhlIGRtYV9mZW5j
ZQ0KPiBoYW5kbGluZy4NCj4gDQo+IFRoZSBzaWduYWxlZCBjYWxsYmFjayBpcyBub3cgY29uc2lz
dGVudGx5IGNhbGxlZCB3aXRob3V0IGhvbGRpbmcgdGhlDQo+IGRtYV9mZW5jZSBsb2NrLg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KPiAtLS0NCj4gICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIHwgMzYgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM2IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IGluZGV4IDgwM2UxMGNhNzZlMy4uYWQ2OWFjYmVh
MjE4IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gQEAgLTQ5Myw0MCArNDkzLDYgQEAgZG1hX2ZlbmNl
X3Rlc3Rfc2lnbmFsZWRfZmxhZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gICAJcmV0dXJu
IHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5mbGFncyk7DQo+
ICAgfQ0KPiAgIA0KPiAtLyoqDQo+IC0gKiBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkIC0g
UmV0dXJuIGFuIGluZGljYXRpb24gaWYgdGhlIGZlbmNlDQo+IC0gKiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaXMgc2lnbmFsZWQgeWV0Lg0KPiAtICogQGZlbmNlOiB0aGUgZmVuY2Ug
dG8gY2hlY2sNCj4gLSAqDQo+IC0gKiBSZXR1cm5zIHRydWUgaWYgdGhlIGZlbmNlIHdhcyBhbHJl
YWR5IHNpZ25hbGVkLCBmYWxzZSBpZiBub3QuIFNpbmNlIHRoaXMNCj4gLSAqIGZ1bmN0aW9uIGRv
ZXNuJ3QgZW5hYmxlIHNpZ25hbGluZywgaXQgaXMgbm90IGd1YXJhbnRlZWQgdG8gZXZlciByZXR1
cm4NCj4gLSAqIHRydWUgaWYgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaygpLCBkbWFfZmVuY2Vfd2Fp
dCgpIG9yDQo+IC0gKiBkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZygpIGhhdmVuJ3QgYmVl
biBjYWxsZWQgYmVmb3JlLg0KPiAtICoNCj4gLSAqIFRoaXMgZnVuY3Rpb24gcmVxdWlyZXMgJmRt
YV9mZW5jZS5sb2NrIHRvIGJlIGhlbGQuDQo+IC0gKg0KPiAtICogU2VlIGFsc28gZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKCkuDQo+IC0gKi8NCj4gLXN0YXRpYyBpbmxpbmUgYm9vbA0KPiAtZG1hX2Zl
bmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gLXsNCj4g
LQljb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzOw0KPiAtDQo+IC0JaWYgKGRtYV9mZW5j
ZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2UpKQ0KPiAtCQlyZXR1cm4gdHJ1ZTsNCj4gLQ0KPiAt
CXJjdV9yZWFkX2xvY2soKTsNCj4gLQlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7
DQo+IC0JaWYgKG9wcyAmJiBvcHMtPnNpZ25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7
DQo+IC0JCXJjdV9yZWFkX3VubG9jaygpOw0KPiAtCQlkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChm
ZW5jZSk7DQo+IC0JCXJldHVybiB0cnVlOw0KPiAtCX0NCj4gLQlyY3VfcmVhZF91bmxvY2soKTsN
Cj4gLQ0KPiAtCXJldHVybiBmYWxzZTsNCj4gLX0NCj4gLQ0KPiAgIC8qKg0KPiAgICAqIGRtYV9m
ZW5jZV9pc19zaWduYWxlZCAtIFJldHVybiBhbiBpbmRpY2F0aW9uIGlmIHRoZSBmZW5jZSBpcyBz
aWduYWxlZCB5ZXQuDQo+ICAgICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gY2hlY2sNCj4gQEAgLTU0
MCw4ICs1MDYsNiBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQ0KPiAgICAqIG9wZXJhdGlvbiBpcyBjb21wbGV0ZSwgaXQgbWFrZXMgaXQgcG9z
c2libGUgdG8gcHJldmVudCBpc3N1ZXMgZnJvbQ0KPiAgICAqIHdyYXBhcm91bmQgYmV0d2VlbiB0
aW1lIG9mIGlzc3VlIGFuZCB0aW1lIG9mIHVzZSBieSBjaGVja2luZyB0aGUgcmV0dXJuDQo+ICAg
ICogdmFsdWUgb2YgdGhpcyBmdW5jdGlvbiBiZWZvcmUgY2FsbGluZyBoYXJkd2FyZS1zcGVjaWZp
YyB3YWl0IGluc3RydWN0aW9ucy4NCj4gLSAqDQo+IC0gKiBTZWUgYWxzbyBkbWFfZmVuY2VfaXNf
c2lnbmFsZWRfbG9ja2VkKCkuDQo+ICAgICovDQo+ICAgc3RhdGljIGlubGluZSBib29sDQo+ICAg
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KDQpBc3N1bWlu
ZyB0aGUgcmVzdCBvZiB0aGUgc2VyaWVzIHBsYXlzIG91dCB0byB0aGlzIHBvaW50Og0KDQpSZXZp
ZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQoNClJl
Z2FyZHMsDQoNClR2cnRrbw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
