Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJYNI+Fl5mmJvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1809A431F21
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C03740489
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:44:00 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id A77F43F90B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 08:32:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=OeulM41R;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=uccK1UlL2q32e1lqqlAUKrHuRToJr+1oqiB2D8KJ9Yg=; b=OeulM41Rf9CI3FDF8rLSWIjC+9
	eMmpb/EjpJ6DkFSDG9BtOlSAoq3VHNB/aTadHr6u59crhbgjXtVufe5GLiSZjxeu6e6DOpOZEW+Eo
	QJl7ZpxN+ARQQTDmYMtEHHxz/vAQnLJpSV5dMGCISTc/r37Cr4vDpIvxxhch2Ipb9sRGsfffladBR
	LDR35MpKb0oJnvbEQ/jqCkkaJEuRujqh4nnZyqQphZ5xCKbBvDmuNwDPfzTuCspmdG2LFUyuJgTns
	LgOz0IJbkkN/G9xSlkR867pGVbvsSJMbs0cjwv3n+ExDIJHFHgVzLvo7uFA5WdazaAOVQjQ1fetL+
	NwLs7G8A==;
Received: from [90.240.106.137] (helo=localhost)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1wCvfO-00GHZP-5K; Wed, 15 Apr 2026 10:32:10 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 15 Apr 2026 09:32:06 +0100
Message-ID: <20260415083207.40513-1-tvrtko.ursulin@igalia.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GVZTUT7WJRK75WPC5M65TOLYFLV7FG37
X-Message-ID-Hash: GVZTUT7WJRK75WPC5M65TOLYFLV7FG37
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:32 +0000
CC: kernel-dev@igalia.com, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-fence: Silence sparse warning in dma_fence_describe
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GVZTUT7WJRK75WPC5M65TOLYFLV7FG37/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	DATE_IN_PAST(1.00)[129];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	NEURAL_HAM(-0.00)[-0.982];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,igalia.com:mid,igalia.com:email,lists.freedesktop.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1809A431F21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

U3BhcnNlIGNvbXBsYWlucyBhYm91dCBhc3NpZ25pbmcgYSBzdHJpbmcgdG8gYSBfX3JjdSBhbm5v
dGF0ZWQgbG9jYWwNCnZhcmlhYmxlOg0KDQpkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmM6MTA0
MDozODogd2FybmluZzogaW5jb3JyZWN0IHR5cGUgaW4gaW5pdGlhbGl6ZXIgKGRpZmZlcmVudCBh
ZGRyZXNzIHNwYWNlcykNCmRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYzoxMDQwOjM4OiAgICBl
eHBlY3RlZCBjaGFyIGNvbnN0IFtub2RlcmVmXSBfX3JjdSAqdGltZWxpbmUNCmRyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYzoxMDQwOjM4OiAgICBnb3QgY2hhciAqDQpkcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmM6MTA0MTozNjogd2FybmluZzogaW5jb3JyZWN0IHR5cGUgaW4gaW5pdGlhbGl6
ZXIgKGRpZmZlcmVudCBhZGRyZXNzIHNwYWNlcykNCmRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
YzoxMDQxOjM2OiAgICBleHBlY3RlZCBjaGFyIGNvbnN0IFtub2RlcmVmXSBfX3JjdSAqZHJpdmVy
DQpkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmM6MTA0MTozNjogICAgZ290IGNoYXIgKg0KDQpJ
dCBpcyBoYXJtbGVzcyBidXQgbGV0cyBzaWxlbmNlIGl0Lg0KDQpTaWduZWQtb2ZmLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCkZpeGVzOiBhYzM2NDAxNGZk
ODEgKCJkbWEtYnVmOiBjbGVhbnVwIGRtYV9mZW5jZV9kZXNjcmliZSB2MyIpDQpDYzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZw0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLmMgfCA0ICsrLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCAxODI2YmE3MzA5NGMuLmEyYWE4MmY0
ZWVkZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAtMTAzNyw4ICsxMDM3LDggQEAgRVhQT1JUX1NZ
TUJPTChkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKTsNCiAgKi8NCiB2b2lkIGRtYV9mZW5jZV9kZXNj
cmliZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IHNlcV9maWxlICpzZXEpDQogew0K
LQljb25zdCBjaGFyIF9fcmN1ICp0aW1lbGluZSA9ICIiOw0KLQljb25zdCBjaGFyIF9fcmN1ICpk
cml2ZXIgPSAiIjsNCisJY29uc3QgY2hhciBfX3JjdSAqdGltZWxpbmUgPSAoY29uc3QgY2hhciBf
X3JjdSAqKSIiOw0KKwljb25zdCBjaGFyIF9fcmN1ICpkcml2ZXIgPSAoY29uc3QgY2hhciBfX3Jj
dSAqKSIiOw0KIAljb25zdCBjaGFyICpzaWduYWxlZCA9ICIiOw0KIA0KIAlyY3VfcmVhZF9sb2Nr
KCk7DQotLSANCjIuNTIuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
