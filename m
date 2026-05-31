Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CgoOOguHGoZLQkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 31 May 2026 14:51:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 731E96162A9
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 31 May 2026 14:51:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57D2940985
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 31 May 2026 12:51:51 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 5E9F53F949
	for <linaro-mm-sig@lists.linaro.org>; Sun, 31 May 2026 12:51:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=MBi1BGY+;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=pass (policy=none) header.from=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=T19dATSGsOmgdG0JVLLDrc2KMsViQ9BcXruRIIyeRZ4=; b=MBi1BGY+47JMi27j3yCdDvUmiB
	5pJw9IwBBaH7KPa861CewrRW/WeXGX7Wpz71rimUU03gVAgEoaWHgG55aiw2nyjU6iCOyegstXxz/
	YAn6p1SyahYcCgpUnd11DzHVdi891FBwt7ra7elKPdygjQCpWng2LRYRLzVlUlAyJM46gBTY0HPcd
	H7zHXNzaKmH1uOR2jEzQn3t1+48WHl71tD6MqO9mz4gufpmynowpZ+0zIuWsyaABf4zPKPm4vhN00
	+jqy2UJLyMhDgNY3hrtVUN2KaQtgB2Whoq2ZWaTujVU2uD+CyIMrbaLdoA2Cfg0KlbXxsy1Xt9z/b
	XDfWyZHQ==;
Received: from [189.7.87.67] (helo=prince)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1wTfdV-00Aa0I-Cl; Sun, 31 May 2026 14:51:25 +0200
From: =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
	Philipp Stanner <phasta@kernel.org>
Date: Sun, 31 May 2026 09:49:59 -0300
Message-ID: <20260531125115.1136036-1-mcanal@igalia.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: NYAUBXTZJUEGFS72CRMPKTNLOI4XSTD4
X-Message-ID-Hash: NYAUBXTZJUEGFS72CRMPKTNLOI4XSTD4
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com, =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NYAUBXTZJUEGFS72CRMPKTNLOI4XSTD4/>
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
	FREEMAIL_TO(0.00)[gmail.com,amd.com,linaro.org,collabora.com,igalia.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.303];
	FROM_NEQ_ENVFROM(0.00)[mcanal@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: 731E96162A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIGtlcm5lbGRvYyBjb21tZW50IG9uIGRtYV9mZW5jZV9pbml0KCkgYW5kIGRtYV9mZW5jZV9p
bml0NjQoKSBkZXNjcmliZQ0KdGhlIGxlZ2FjeSByZWFzb24gdG8gcGFzcyBhbiBleHRlcm5hbCBs
b2NrIGFzIGEgbmVlZCB0byBwcmV2ZW50IG11bHRpcGxlDQpmZW5jZXMgImZyb20gc2lnbmFsaW5n
IG91dCBvZiBvcmRlciIuIEhvd2V2ZXIsIHRoaXMgd29yZGluZyBpcyBhIGJpdA0KbWlzbGVhZGlu
ZzogYSBzaGFyZWQgc3BpbmxvY2sgZG9lcyBub3QgKGFuZCBjYW5ub3QpIHByZXZlbnQgdGhlIHNp
Z25hbGVyDQpmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuIFNpZ25hbGluZyBvcmRlciBpcyB0
aGUgZHJpdmVyJ3MgcmVzcG9uc2liaWxpdHkNCnJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGUgbG9j
ayBpcyBzaGFyZWQgb3IgcGVyLWZlbmNlLg0KDQpSZXdvcmQgYm90aCBjb21tZW50cyB0byBiZXR0
ZXIgZGVzY3JpYmUgdGhlIGxlZ2FjeSB1c2UgY2FzZXMgd2hlcmUgYQ0Kc2hhcmVkIGxvY2sgd2Fz
IG5lZWRlZC4NCg0KU2lnbmVkLW9mZi1ieTogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNv
bT4NCg0KLS0tDQoNCnYxIC0+IHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyNjA0MTExODU3NTYuMTg4NzExOS00LW1jYW5hbEBpZ2FsaWEuY29tLw0KDQotIEJlIG1vcmUg
ZXhwbGljaXQgYWJvdXQgbm90IGFsbG93aW5nIG5ldyB1c2VycyB0byB1c2UgYW4gZXh0ZXJuYWwg
bG9jay4NCi0gRGUtZHVwbGljYXRlIHRoZSBleHBsYW5hdGlvbiBpbiBkbWFfZmVuY2VfaW5pdDY0
KCkgYnkgcG9pbnRpbmcgdG8gdGhlDQogIGRtYV9mZW5jZV9pbml0KCkgZG9jdW1lbnRhdGlvbi4N
Cg0KdjIgLT4gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDQxOTEz
NDk0My41NDgzMy0yLW1jYW5hbEBpZ2FsaWEuY29tL1QvDQoNCi0gQXBwbHkgQ2hyaXN0aWFuJ3Mg
c3VnZ2VzdGlvbiB3aXRoIHNtYWxsIHJlYWRhYmlsaXR5IGltcHJvdmVtZW50cy4NCg0KLS0tDQog
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMTQgKysrKysrKystLS0tLS0NCiAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
DQppbmRleCBiM2JmYTY5NDNhOGUuLmM3ZWExZTc1ZDM4YSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpA
QCAtMTEwMiw5ICsxMTAyLDEyIEBAIF9fZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHMsDQogICogY29udGV4dCBhbmQg
c2Vxbm8gYXJlIHVzZWQgZm9yIGVhc3kgY29tcGFyaXNvbiBiZXR3ZWVuIGZlbmNlcywgYWxsb3dp
bmcNCiAgKiB0byBjaGVjayB3aGljaCBmZW5jZSBpcyBsYXRlciBieSBzaW1wbHkgdXNpbmcgZG1h
X2ZlbmNlX2xhdGVyKCkuDQogICoNCi0gKiBJdCBpcyBzdHJvbmdseSBkaXNjb3VyYWdlZCB0byBw
cm92aWRlIGFuIGV4dGVybmFsIGxvY2sgYmVjYXVzZSB0aGlzIGNvdXBsZXMNCi0gKiBsb2NrIGFu
ZCBmZW5jZSBsaWZlIHRpbWUuIFRoaXMgaXMgb25seSBhbGxvd2VkIGZvciBsZWdhY3kgdXNlIGNh
c2VzIHdoZW4NCi0gKiBtdWx0aXBsZSBmZW5jZXMgbmVlZCB0byBiZSBwcmV2ZW50ZWQgZnJvbSBz
aWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KKyAqIEV4dGVybmFsIGxvY2tzIGFyZSBhIHJlbGljIG9m
IGxlZ2FjeSB1c2UgY2FzZXMgdGhhdCBuZWVkZWQgYSBzaGFyZWQgbG9jaw0KKyAqIHRvIHNlcmlh
bGl6ZSBzaWduYWxpbmcgd2hlbiBubyBvdXQtb2Ytb3JkZXIgc2lnbmFsaW5nIHdhcyBwb3NzaWJs
ZSB0aHJvdWdoDQorICogJmRtYV9mZW5jZV9vcHMuc2lnbmFsZWQuIERyaXZlcnMgaGF2ZSBhYmFu
ZG9uZWQgdGhpcyBjb25jZXB0IHNpbmNlIHRoZQ0KKyAqIGludHJvZHVjdGlvbiBvZiB0aGUgY2Fs
bGJhY2ssIGJ1dCB0aGUgZXh0ZXJuYWwgbG9jayBpcyBzdGlsbCBhcm91bmQuIE5ldw0KKyAqIHVz
ZXJzIE1VU1QgTk9UIHVzZSBleHRlcm5hbCBsb2NrcywgYXMgdGhleSBmb3JjZSB0aGUgaXNzdWVy
IHRvIG91dGxpdmUgYWxsDQorICogZmVuY2VzIHRoYXQgcmVmZXJlbmNlIHRoZSBsb2NrLg0KICAq
Lw0KIHZvaWQNCiBkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qg
c3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCkBAIC0xMTI5LDkgKzExMzIsOCBAQCBFWFBPUlRf
U1lNQk9MKGRtYV9mZW5jZV9pbml0KTsNCiAgKiBDb250ZXh0IGFuZCBzZXFubyBhcmUgdXNlZCBm
b3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2VzLCBhbGxvd2luZw0KICAqIHRvIGNoZWNr
IHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1c2luZyBkbWFfZmVuY2VfbGF0ZXIoKS4N
CiAgKg0KLSAqIEl0IGlzIHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJu
YWwgbG9jayBiZWNhdXNlIHRoaXMgY291cGxlcw0KLSAqIGxvY2sgYW5kIGZlbmNlIGxpZmUgdGlt
ZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgd2hlbg0KLSAqIG11
bHRpcGxlIGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBmcm9tIHNpZ25hbGluZyBvdXQgb2Yg
b3JkZXIuDQorICogTmV3IHVzZXJzIE1VU1QgTk9UIHVzZSBleHRlcm5hbCBsb2Nrcy4gQ2hlY2sg
dGhlIGRvY3VtZW50YXRpb24gaW4NCisgKiBkbWFfZmVuY2VfaW5pdCgpIHRvIHVuZGVyc3RhbmQg
dGhlIG1vdGl2ZXMgYmVoaW5kIHRoZSBsZWdhY3kgdXNlIGNhc2VzLg0KICAqLw0KIHZvaWQNCiBk
bWFfZmVuY2VfaW5pdDY0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1h
X2ZlbmNlX29wcyAqb3BzLA0KLS0gDQoyLjU0LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
