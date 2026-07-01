Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WqI3BOduVmqw5QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:16:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEEE75741B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:16:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b=dbi780vP;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A267D40977
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:16:21 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 57CA740AA9
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 09:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rkkSHqFyVp2fyO4zhsA5xQzb55y8BJkjvdnC/dmJ7zc=; b=dbi780vPfR0drg5RINie+jGdE8
	mPUp0ueEEct0j7NBYL3UhDqKkYfe2YaMuIxqwEOxjArdH8Xrp0y7zU87XrjLzuGj/DmzjxtiiHJ4M
	C/aVrhTiYUY7+lVh6c1S21eH10NRgaVfDDvMC08qcBVzm2KKNgiUSORgS4Lprapx5jrVYQOZwRCOD
	c4/M7VPv7iD295rCgrQOi7LEj1iKRJmhE0yo5Qdc5MRFlfIXHBasyQFPzpSPkGCUovtKt0JfEIOg+
	9iGIAj/uPDd3O42m84Joma9507V1pkiT9KPJkMQ3bcLUZzZ3A2onS8RrsCmRURUl37SLn98eXS9kp
	UzGKhNaQ==;
Received: from [90.240.106.137] (helo=[192.168.0.116])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1werLE-007Ufe-6F; Wed, 01 Jul 2026 11:34:48 +0200
Message-ID: <65d4d6dd-a526-409e-96b7-e9a71ed47f23@igalia.com>
Date: Wed, 1 Jul 2026 10:34:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: christian.koenig@amd.com, phasta@kernel.org, simona@ffwll.ch,
 sumit.semwal@linaro.org, dakr@kernel.org
References: <20260624122917.2483-1-christian.koenig@amd.com>
 <20260624122917.2483-6-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <20260624122917.2483-6-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SY6BDZHC2SI6TLA2B3YXE4JPOTAQBIC4
X-Message-ID-Hash: SY6BDZHC2SI6TLA2B3YXE4JPOTAQBIC4
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:14:40 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/10] drm/sched: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SY6BDZHC2SI6TLA2B3YXE4JPOTAQBIC4/>
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
X-Rspamd-Queue-Id: 8BEEE75741B

DQpPbiAyNC8wNi8yMDI2IDEyOjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBJbnN0ZWFk
IG9mIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoKSB1c2UNCj4gZG1hX2ZlbmNlX3Rlc3Rf
c2lnbmFsZWRfZmxhZygpLg0KPiANCj4gTm8gZnVuY3Rpb25hbCBkaWZmZXJlbmNlIHRoZSBtb2Nr
IEhXIGZlbmNlIGhhcyBubyBzaWduYWxlZCBjYWxsYmFjaw0KPiBhbnl3YXkuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+
IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvdGVzdHMvbW9ja19zY2hlZHVsZXIu
YyB8IDQgKystLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci90ZXN0
cy9tb2NrX3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci90ZXN0cy9tb2Nr
X3NjaGVkdWxlci5jDQo+IGluZGV4IDE0NDAzYTc2MjMzNS4uODJkY2UzNDRiZmExIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Rlc3RzL21vY2tfc2NoZWR1bGVyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci90ZXN0cy9tb2NrX3NjaGVkdWxlci5j
DQo+IEBAIC0yMjQsNyArMjI0LDcgQEAgbW9ja19zY2hlZF90aW1lZG91dF9qb2Ioc3RydWN0IGRy
bV9zY2hlZF9qb2IgKnNjaGVkX2pvYikNCj4gICAJfQ0KPiAgIA0KPiAgIAlzcGluX2xvY2tfaXJx
c2F2ZSgmc2NoZWQtPmxvY2ssIGZsYWdzKTsNCj4gLQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxl
ZF9sb2NrZWQoJmpvYi0+aHdfZmVuY2UpKSB7DQo+ICsJaWYgKCFkbWFfZmVuY2VfdGVzdF9zaWdu
YWxlZF9mbGFnKCZqb2ItPmh3X2ZlbmNlKSkgew0KPiAgIAkJbGlzdF9kZWwoJmpvYi0+bGluayk7
DQo+ICAgCQlqb2ItPmZsYWdzIHw9IERSTV9NT0NLX1NDSEVEX0pPQl9USU1FRE9VVDsNCj4gICAJ
CWRtYV9mZW5jZV9zZXRfZXJyb3IoJmpvYi0+aHdfZmVuY2UsIC1FVElNRURPVVQpOw0KPiBAQCAt
MjU4LDcgKzI1OCw3IEBAIHN0YXRpYyB2b2lkIG1vY2tfc2NoZWRfY2FuY2VsX2pvYihzdHJ1Y3Qg
ZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9iKQ0KPiAgIAlocnRpbWVyX2NhbmNlbCgmam9iLT50aW1l
cik7DQo+ICAgDQo+ICAgCXNwaW5fbG9ja19pcnFzYXZlKCZzY2hlZC0+bG9jaywgZmxhZ3MpOw0K
PiAtCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZCgmam9iLT5od19mZW5jZSkpIHsN
Cj4gKwlpZiAoIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoJmpvYi0+aHdfZmVuY2UpKSB7
DQo+ICAgCQlsaXN0X2RlbCgmam9iLT5saW5rKTsNCj4gICAJCWRtYV9mZW5jZV9zZXRfZXJyb3Io
JmpvYi0+aHdfZmVuY2UsIC1FQ0FOQ0VMRUQpOw0KPiAgIAkJZG1hX2ZlbmNlX3NpZ25hbF9sb2Nr
ZWQoJmpvYi0+aHdfZmVuY2UpOw0KDQpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGlnYWxpYS5jb20+DQoNClJlZ2FyZHMsDQoNClR2cnRrbw0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
