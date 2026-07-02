Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k0qHM2YTRmpLJQsAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Jul 2026 09:29:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DD66F42C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Jul 2026 09:29:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=DEv0uzJA;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 875DC40A6A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Jul 2026 07:29:41 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 04F693F7BF
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 07:29:31 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4grT6J0t5Fz9tFL;
	Thu,  2 Jul 2026 09:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782977368; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vBbebS2OwZPm7sHgbFW0Ki3IJSy/62qddr5vkTOY9Ws=;
	b=DEv0uzJASpK4GLQb5gKGSCeK8F+W1LrM6iCTDHS7JCnely+GbspAIX9Fu2hAz8FzMCQ2JW
	zd7D9WappJBc7Q6aZQBudT4En1k9yGaGADIult6h4PwCOEgQZk+02wwi1Xb33RhUo2no/p
	IAEAQlaSflUDGGugEG/LoOETP5qmKBoxU/H+zC/jMYH+sHAqmSJyLD601nN6601dwt57L7
	ygKH8dtA3wBVQzXXAM1IwoeVxY11085iAzYlfX0pXty1LyoNmKhcVJ/UEJ/hUh/gN4eNsd
	GP8df10TbufimC0KfqsAhscNxITE+w3tipUUXBHIG2K7TDbxgyEB9P22//tqLw==
Message-ID: <d1e82acdaa6b63b2e0b11d91ce244f0554f71a27.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: christian.koenig@amd.com, phasta@kernel.org, simona@ffwll.ch,
	sumit.semwal@linaro.org, tvrtko.ursulin@igalia.com, dakr@kernel.org
Date: Thu, 02 Jul 2026 09:29:22 +0200
In-Reply-To: <20260624122917.2483-6-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
	 <20260624122917.2483-6-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: e9ede8f42704973847b
X-MBO-RS-META: bq4oxfcwzw3fj9ysqp93ycjj1sczxe41
X-Spamd-Bar: ----
Message-ID-Hash: QR7XOU5CWDTKIYG4WXNQYTA6KLIGFRXJ
X-Message-ID-Hash: QR7XOU5CWDTKIYG4WXNQYTA6KLIGFRXJ
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 05/10] drm/sched: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QR7XOU5CWDTKIYG4WXNQYTA6KLIGFRXJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,mailbox.org:from_mime,linaro.org:email,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63DD66F42C7

T24gV2VkLCAyMDI2LTA2LTI0IGF0IDEzOjEzICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBJbnN0ZWFkIG9mIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoKSB1c2UNCj4gZG1h
X2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZygpLg0KPiANCj4gTm8gZnVuY3Rpb25hbCBkaWZmZXJl
bmNlIHRoZSBtb2NrIEhXIGZlbmNlIGhhcyBubyBzaWduYWxlZCBjYWxsYmFjaw0KPiBhbnl3YXku
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQoNCkZpbmUgYnkgbWUsIGJ1dCB0aGUgY29tbWl0IG1lc3NhZ2UgbmVlZHMgdG8g
YmUgdHVuZWQgdXAgYSBiaXQsIHNlZSBteQ0Kb3RoZXIgY29tbWVudCBvbiB0aGlzIHNlcmllcyA6
KQ0KDQoNClAuDQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci90ZXN0cy9t
b2NrX3NjaGVkdWxlci5jIHwgNCArKy0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3Rlc3RzL21vY2tfc2NoZWR1bGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3Rlc3RzL21vY2tfc2NoZWR1bGVyLmMNCj4gaW5kZXggMTQ0MDNhNzYyMzM1Li44MmRjZTM0
NGJmYTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvdGVzdHMvbW9j
a19zY2hlZHVsZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Rlc3RzL21v
Y2tfc2NoZWR1bGVyLmMNCj4gQEAgLTIyNCw3ICsyMjQsNyBAQCBtb2NrX3NjaGVkX3RpbWVkb3V0
X2pvYihzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9iKQ0KPiDCoAl9DQo+IMKgDQo+IMKg
CXNwaW5fbG9ja19pcnFzYXZlKCZzY2hlZC0+bG9jaywgZmxhZ3MpOw0KPiAtCWlmICghZG1hX2Zl
bmNlX2lzX3NpZ25hbGVkX2xvY2tlZCgmam9iLT5od19mZW5jZSkpIHsNCj4gKwlpZiAoIWRtYV9m
ZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoJmpvYi0+aHdfZmVuY2UpKSB7DQo+IMKgCQlsaXN0X2Rl
bCgmam9iLT5saW5rKTsNCj4gwqAJCWpvYi0+ZmxhZ3MgfD0gRFJNX01PQ0tfU0NIRURfSk9CX1RJ
TUVET1VUOw0KPiDCoAkJZG1hX2ZlbmNlX3NldF9lcnJvcigmam9iLT5od19mZW5jZSwgLUVUSU1F
RE9VVCk7DQo+IEBAIC0yNTgsNyArMjU4LDcgQEAgc3RhdGljIHZvaWQgbW9ja19zY2hlZF9jYW5j
ZWxfam9iKHN0cnVjdCBkcm1fc2NoZWRfam9iICpzY2hlZF9qb2IpDQo+IMKgCWhydGltZXJfY2Fu
Y2VsKCZqb2ItPnRpbWVyKTsNCj4gwqANCj4gwqAJc3Bpbl9sb2NrX2lycXNhdmUoJnNjaGVkLT5s
b2NrLCBmbGFncyk7DQo+IC0JaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKCZqb2It
Pmh3X2ZlbmNlKSkgew0KPiArCWlmICghZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZygmam9i
LT5od19mZW5jZSkpIHsNCj4gwqAJCWxpc3RfZGVsKCZqb2ItPmxpbmspOw0KPiDCoAkJZG1hX2Zl
bmNlX3NldF9lcnJvcigmam9iLT5od19mZW5jZSwgLUVDQU5DRUxFRCk7DQo+IMKgCQlkbWFfZmVu
Y2Vfc2lnbmFsX2xvY2tlZCgmam9iLT5od19mZW5jZSk7DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
