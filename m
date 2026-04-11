Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB0bAPSZ2mkC4QgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Apr 2026 20:59:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DB53E161A
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Apr 2026 20:58:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 264C8400FF
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Apr 2026 18:58:58 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 32F503F728
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Apr 2026 18:58:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b="GcF/nW8I";
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=rfR/xs54iud7qjWeo87LTD8Cmitowf/vA43TFtPNilg=; b=GcF/nW8Ix57ePYZUjwiT2qGAqq
	FGUPSxXoVtUY5rS9XjVpwYPSLrqZPUJ9MNVaLrXFN17E8LU5EbUDj15csHk/Yio31BGQ54M6WhEoI
	oHSifD9t/euCsVP9dlDWCVV0s8jPhf+h9YNbdfiCitbX0gCylkfo98AB9lOqNUdZCtGbvshsnfZKr
	U7KRlZ54x3H5ovkkl6r8gbgmn8SpAF0vIeAxvCQpMK1fr5tXimTV2In2X77fepR5OzsFDziwU+Peg
	xuQTmdivHcdKxFSldAszUCJng3iIC9gArP2CeQfVAhGeBxyLigsNR9SSABdFV5PexBPL0Dxoi0Vgg
	OS3qOyKQ==;
Received: from [189.7.87.169] (helo=prince)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1wBdXV-00Epqg-1H; Sat, 11 Apr 2026 20:58:41 +0200
From: =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
	Philipp Stanner <phasta@kernel.org>
Date: Sat, 11 Apr 2026 15:47:33 -0300
Message-ID: <20260411185756.1887119-4-mcanal@igalia.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: 2LO6QN5ZF7ID374VHODN2Q3C75NUG7WA
X-Message-ID-Hash: 2LO6QN5ZF7ID374VHODN2Q3C75NUG7WA
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com, =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2LO6QN5ZF7ID374VHODN2Q3C75NUG7WA/>
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
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,collabora.com,igalia.com,kernel.org];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[mcanal@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.473];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 79DB53E161A
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
DQoNClNpZ25lZC1vZmYtYnk6IE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+DQotLS0N
Cg0KSGksDQoNCldoaWxlIHJlYWRpbmcgdGhlIGRvY3VtZW50YXRpb24sIEkgZm91bmQgdGhpcyBw
YXJ0aWN1bGFyIHBhcmFncmFwaCBxdWl0ZQ0KaGFyZCB0byB1bmRlcnN0YW5kLiBBcyBJIHVuZGVy
c3RhbmQgaXQsIGxvY2tzIGRvbid0IGVuZm9yY2Ugb3JkZXIsIG9ubHkNCnNlcmlhbGl6YXRpb24s
IGJ1dCB0aGUgcGFyYWdyYXBoIHNlZW1zIHRvIGNvbW11bmljYXRlIHRoZSBvdGhlciB3YXkgYXJv
dW5kLg0KRHVlIHRvIHRoYXQsIEkgaGFkIHRoZSBpbXByZXNzaW9uIHRoYXQgdGhlIGN1cnJlbnQg
d29yZGluZyBjYW4gYmUNCm1pc2xlYWRpbmcgZm9yIGRyaXZlciBkZXZlbG9wZXJzLg0KDQpJJ20g
cHJvcG9zaW5nIGEgbmV3IHdvcmRpbmcgdG8gYmV0dGVyIGRlc2NyaWJlIHRoZSB1c2UgY2FzZSBv
ZiB0aGUNCmV4dGVybmFsIGxvY2sgYmFzZWQgb24gbXkgdW5kZXJzdGFuZGluZywgYnV0IGl0IHdv
dWxkIGJlIGdyZWF0IHRvIGhlYXINCnRoZSBmZWVkYmFjayBhbmQgc3VnZ2VzdGlvbnMgZnJvbSBt
b3JlIGV4cGVyaWVuY2VkIGRldmVsb3BlcnMgd2hvIG1pZ2h0DQpoYXZlIG1vcmUgaW5zaWdodCBh
Ym91dCB0aGVzZSBsZWdhY3kgdXNlIGNhc2VzLg0KDQpCZXN0IHJlZ2FyZHMsDQotIE1hw61yYQ0K
DQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMTIgKysrKysrKystLS0tDQogMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
Yw0KaW5kZXggMTgyNmJhNzMwOTRjLi5iZGMyOWQxYzFiNWMgMTAwNjQ0DQotLS0gYS9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0K
QEAgLTExMDIsOCArMTEwMiwxMCBAQCBfX2RtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KICAqIHRvIGNoZWNrIHdo
aWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1c2luZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCiAg
Kg0KICAqIEl0IGlzIHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwg
bG9jayBiZWNhdXNlIHRoaXMgY291cGxlcw0KLSAqIGxvY2sgYW5kIGZlbmNlIGxpZmUgdGltZS4g
VGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgd2hlbg0KLSAqIG11bHRp
cGxlIGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3Jk
ZXIuDQorICogbG9jayBhbmQgZmVuY2UgbGlmZXRpbWUuIFRoaXMgaXMgb25seSBhbGxvd2VkIGZv
ciBsZWdhY3kgdXNlIGNhc2VzIHRoYXQgbmVlZA0KKyAqIGEgc2hhcmVkIGxvY2sgdG8gc2VyaWFs
aXplIHNpZ25hbGluZyBhbmQgb2JzZXJ2YXRpb24gb2YgZmVuY2VzIHdpdGhpbiBhDQorICogY29u
dGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXIgc2VlIGEgbGF0ZXIgZmVuY2Ugc2lnbmFsZWQg
d2hpbGUgYW4gZWFybGllcg0KKyAqIG9uZSBpc24ndC4NCiAgKi8NCiB2b2lkDQogZG1hX2ZlbmNl
X2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3Bz
ICpvcHMsDQpAQCAtMTEyOSw4ICsxMTMxLDEwIEBAIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2lu
aXQpOw0KICAqIHRvIGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1c2luZyBk
bWFfZmVuY2VfbGF0ZXIoKS4NCiAgKg0KICAqIEl0IGlzIHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIHRv
IHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBiZWNhdXNlIHRoaXMgY291cGxlcw0KLSAqIGxvY2sg
YW5kIGZlbmNlIGxpZmUgdGltZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2Ug
Y2FzZXMgd2hlbg0KLSAqIG11bHRpcGxlIGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBmcm9t
IHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuDQorICogbG9jayBhbmQgZmVuY2UgbGlmZXRpbWUuIFRo
aXMgaXMgb25seSBhbGxvd2VkIGZvciBsZWdhY3kgdXNlIGNhc2VzIHRoYXQgbmVlZA0KKyAqIGEg
c2hhcmVkIGxvY2sgdG8gc2VyaWFsaXplIHNpZ25hbGluZyBhbmQgb2JzZXJ2YXRpb24gb2YgZmVu
Y2VzIHdpdGhpbiBhDQorICogY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXIgc2VlIGEg
bGF0ZXIgZmVuY2Ugc2lnbmFsZWQgd2hpbGUgYW4gZWFybGllcg0KKyAqIG9uZSBpc24ndC4NCiAg
Ki8NCiB2b2lkDQogZG1hX2ZlbmNlX2luaXQ2NChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29u
c3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCi0tIA0KMi41My4wDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
