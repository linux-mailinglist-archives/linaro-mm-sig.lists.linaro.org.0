Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QB3EEKbd5GkibQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 19 Apr 2026 15:50:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0274243F6
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 19 Apr 2026 15:50:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D1EA404B6
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 19 Apr 2026 13:50:28 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 573AD3F907
	for <linaro-mm-sig@lists.linaro.org>; Sun, 19 Apr 2026 13:50:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=Qgk9gHJz;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=CLJsyouNMejv17zbbnbx5olGhCMXQM3w350Ea2kQLNk=; b=Qgk9gHJz07/X5zIwqfXvQfpPG+
	mJJVQyYm1mIdUo7081Z2ONiSyB+s8LUcFFQNnowpX2jz5/30mdPFMCFNiuky4eAzZfVhSX/c/Vzu/
	Ahm92XqpZM49bhMrEzf6rCYX4u72E42BxWYUIbY3ZhJ0FGY5s0n5gNGyLqzsx6dhZMbiCJIkSfV/S
	xT+nXkrCmZ+vwbKWGtj3YMXd36YYxlHoQ4KNFz9JgVfDEPqqkUbJO9YZrOe8Buq2F8OXGXvuvYH4z
	DrXalxVBJkaSsKqVsLaDgc1mGgSCy8UCXATNqhyEVAKhVnpj1gzohXhg5ZWi2PhI4HiFtH2LLW7iq
	SsbtHpcA==;
Received: from [187.36.208.231] (helo=localhost.localdomain)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA512__CHACHA20_POLY1305:256) (Exim)
	id 1wESXH-000bE6-7V; Sun, 19 Apr 2026 15:50:07 +0200
From: =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
	Philipp Stanner <phasta@kernel.org>
Date: Sun, 19 Apr 2026 10:48:58 -0300
Message-ID: <20260419134943.54833-2-mcanal@igalia.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: J2ZEDHHXFCDHA46BCQF6MTLUBM6GAJNU
X-Message-ID-Hash: J2ZEDHHXFCDHA46BCQF6MTLUBM6GAJNU
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com, =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J2ZEDHHXFCDHA46BCQF6MTLUBM6GAJNU/>
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
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,collabora.com,igalia.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.032];
	FROM_NEQ_ENVFROM(0.00)[mcanal@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: AD0274243F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIGtlcm5lbGRvYyBjb21tZW50IG9uIGRtYV9mZW5jZV9pbml0KCkgYW5kIGRtYV9mZW5jZV9p
bml0NjQoKSBkZXNjcmliZQ0KdGhlIGxlZ2FjeSByZWFzb24gdG8gcGFzcyBhbiBleHRlcm5hbCBs
b2NrIGFzIGEgbmVlZCB0byBwcmV2ZW50IG11bHRpcGxlDQpmZW5jZXMgImZyb20gc2lnbmFsaW5n
IG91dCBvZiBvcmRlciIuIEhvd2V2ZXIsIHRoaXMgd29yZGluZyBpcyBhIGJpdA0KbWlzbGVhZGlu
ZzogYSBzaGFyZWQgc3BpbmxvY2sgZG9lcyBub3QgKGFuZCBjYW5ub3QpIHByZXZlbnQgdGhlIHNp
Z25hbGVyDQpmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuIFNpZ25hbGluZyBvcmRlciBpcyB0
aGUgZHJpdmVyJ3MgcmVzcG9uc2liaWxpdHkNCnJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGUgbG9j
ayBpcyBzaGFyZWQgb3IgcGVyLWZlbmNlLg0KDQpXaGF0IGEgc2hhcmVkIGxvY2sgYWN0dWFsbHkg
cHJvdmlkZXMgaXMgc2VyaWFsaXphdGlvbiBvZiBzaWduYWxpbmcgYW5kDQpvYnNlcnZhdGlvbiBh
Y3Jvc3MgZmVuY2VzIGluIGEgZ2l2ZW4gY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXIN
CnNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVkIHdoaWxlIGFuIGVhcmxpZXIgb25lIGlzIG5vdC4N
Cg0KUmV3b3JkIGJvdGggY29tbWVudHMgdG8gZGVzY3JpYmUgdGhpcyBtb3JlIGFjY3VyYXRlbHku
DQoNClNpZ25lZC1vZmYtYnk6IE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+DQoNCi0t
LQ0KDQp2MSAtPiB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjYwNDEx
MTg1NzU2LjE4ODcxMTktNC1tY2FuYWxAaWdhbGlhLmNvbS8NCg0KLSBCZSBtb3JlIGV4cGxpY2l0
IGFib3V0IG5vdCBhbGxvd2luZyBuZXcgdXNlcnMgdG8gdXNlIGFuIGV4dGVybmFsIGxvY2suDQot
IERlLWR1cGxpY2F0ZSB0aGUgZXhwbGFuYXRpb24gaW4gZG1hX2ZlbmNlX2luaXQ2NCgpIGJ5IHBv
aW50aW5nIHRvIHRoZQ0KICBkbWFfZmVuY2VfaW5pdCgpIGRvY3VtZW50YXRpb24uDQotLS0NCiBk
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxMyArKysrKysrLS0tLS0tDQogMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0K
aW5kZXggMWMxZWFlY2FmMWIwLi42M2IzNDliYTlhMzQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KQEAg
LTExMDIsOSArMTEwMiwxMSBAQCBfX2RtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KICAqIGNvbnRleHQgYW5kIHNl
cW5vIGFyZSB1c2VkIGZvciBlYXN5IGNvbXBhcmlzb24gYmV0d2VlbiBmZW5jZXMsIGFsbG93aW5n
DQogICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9m
ZW5jZV9sYXRlcigpLg0KICAqDQotICogSXQgaXMgc3Ryb25nbHkgZGlzY291cmFnZWQgdG8gcHJv
dmlkZSBhbiBleHRlcm5hbCBsb2NrIGJlY2F1c2UgdGhpcyBjb3VwbGVzDQotICogbG9jayBhbmQg
ZmVuY2UgbGlmZSB0aW1lLiBUaGlzIGlzIG9ubHkgYWxsb3dlZCBmb3IgbGVnYWN5IHVzZSBjYXNl
cyB3aGVuDQotICogbXVsdGlwbGUgZmVuY2VzIG5lZWQgdG8gYmUgcHJldmVudGVkIGZyb20gc2ln
bmFsaW5nIG91dCBvZiBvcmRlci4NCisgKiBFeHRlcm5hbCBsb2NrcyBhcmUgYSByZWxpYyBmcm9t
IGxlZ2FjeSB1c2UgY2FzZXMgdGhhdCBuZWVkZWQgYSBzaGFyZWQgbG9jaw0KKyAqIHRvIHNlcmlh
bGl6ZSBzaWduYWxpbmcgYW5kIG9ic2VydmF0aW9uIG9mIGZlbmNlcyB3aXRoaW4gYSBjb250ZXh0
LCBzbyB0aGF0DQorICogb2JzZXJ2ZXJzIG5ldmVyIHNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVk
IHdoaWxlIGFuIGVhcmxpZXIgb25lIGlzbid0LiBOZXcNCisgKiB1c2VycyBNVVNUIE5PVCB1c2Ug
ZXh0ZXJuYWwgbG9ja3MsIGFzIHRoZXkgZm9yY2UgdGhlIGlzc3VlciB0byBvdXRsaXZlIGFsbA0K
KyAqIGZlbmNlcyB0aGF0IHJlZmVyZW5jZSB0aGUgbG9jay4NCiAgKi8NCiB2b2lkDQogZG1hX2Zl
bmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vf
b3BzICpvcHMsDQpAQCAtMTEyOSw5ICsxMTMxLDggQEAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vf
aW5pdCk7DQogICogQ29udGV4dCBhbmQgc2Vxbm8gYXJlIHVzZWQgZm9yIGVhc3kgY29tcGFyaXNv
biBiZXR3ZWVuIGZlbmNlcywgYWxsb3dpbmcNCiAgKiB0byBjaGVjayB3aGljaCBmZW5jZSBpcyBs
YXRlciBieSBzaW1wbHkgdXNpbmcgZG1hX2ZlbmNlX2xhdGVyKCkuDQogICoNCi0gKiBJdCBpcyBz
dHJvbmdseSBkaXNjb3VyYWdlZCB0byBwcm92aWRlIGFuIGV4dGVybmFsIGxvY2sgYmVjYXVzZSB0
aGlzIGNvdXBsZXMNCi0gKiBsb2NrIGFuZCBmZW5jZSBsaWZlIHRpbWUuIFRoaXMgaXMgb25seSBh
bGxvd2VkIGZvciBsZWdhY3kgdXNlIGNhc2VzIHdoZW4NCi0gKiBtdWx0aXBsZSBmZW5jZXMgbmVl
ZCB0byBiZSBwcmV2ZW50ZWQgZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KKyAqIE5ldyB1
c2VycyBNVVNUIE5PVCB1c2UgZXh0ZXJuYWwgbG9ja3MuIENoZWNrIHRoZSBkb2N1bWVudGF0aW9u
IGluDQorICogZG1hX2ZlbmNlX2luaXQoKSB0byB1bmRlcnN0YW5kIHRoZSBtb3RpdmVzIGJlaGlu
ZCB0aGUgbGVnYWN5IHVzZSBjYXNlcy4NCiAgKi8NCiB2b2lkDQogZG1hX2ZlbmNlX2luaXQ2NChz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywN
Ci0tIA0KMi41My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
