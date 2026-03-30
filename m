Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GONqHJBj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C77431763
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF36B402F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:34:06 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 39D2A3F760
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 13:36:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b="r7SD/jLT";
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=OB2qHX3/E/OfwHyz3KlZXK1pTswdr7Ud7NtjnhGSaME=; b=r7SD/jLTge490yWowLLrZ47fFF
	laYtCSTcRtfi7blA06a0qzXV2uL9ELeHTa9pA3tnQ2VF7xcR+Ah1Op+IBH1hozmFXWGjso2VYuSkD
	8uuPkvGC9OWo9dzBiALNPtg/NjvMXGR8a/7Mt3RQRZR8pq9B3YuCXNDAywGzVU5pUzJuEv/ePPqiQ
	tW3v10dDr4NHW+49Z6VFjYMsuyYCtQ3zQTz0OwbapSpME+9g94WigwjQnvN9F+LYkm7qsU6QBJeCE
	evOFgx5Ys7GGH8Ugevs9W5dwAHnvcEwCZh0CQ8D7WP8biAI8ZOhJ4IYY7UuIyAnQat9f27jjGkHGi
	zBYom1aw==;
Received: from [90.240.106.137] (helo=localhost)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1w7Cn4-008zww-JY; Mon, 30 Mar 2026 15:36:26 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 30 Mar 2026 14:36:23 +0100
Message-ID: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TM5J332MCC4QK4FVCNGTYJCI2AY4DEZ6
X-Message-ID-Hash: TM5J332MCC4QK4FVCNGTYJCI2AY4DEZ6
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:29 +0000
CC: kernel-dev@igalia.com, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TM5J332MCC4QK4FVCNGTYJCI2AY4DEZ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	DATE_IN_PAST(1.00)[507];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: C7C77431763
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TW92ZSB0aGUgc2lnbmFsbGluZyB0cmFjZXBvaW50IHRvIGJlZm9yZSBmZW5jZS0+b3BzIGFyZSBy
ZXNldCBvdGhlcndpc2UNCnRyYWNlcG9pbnQgd2lsbCBkZXJlZmVyZW5jZSBhIG51bGwgcG9pbnRl
ci4NCg0KU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxp
YS5jb20+DQpGaXhlczogNTQxYzhmMjQ2OGI5ICgiZG1hLWJ1ZjogZGV0YWNoIGZlbmNlIG9wcyBv
biBzaWduYWwgdjMiKQ0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCkNjOiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KQ2M6IEJvcmlz
IEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+DQpDYzogbGludXgtbWVk
aWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQot
LS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAzICsrLQ0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KaW5kZXgg
MTgyNmJhNzMwOTRjLi4xYzFlYWVjYWYxYjAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KQEAgLTM2Myw2
ICszNjMsOCBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwNCiAJCQkJICAgICAgJmZlbmNlLT5mbGFncykpKQ0KIAkJcmV0dXJu
Ow0KIA0KKwl0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KKw0KIAkvKg0KIAkgKiBX
aGVuIG5laXRoZXIgYSByZWxlYXNlIG5vciBhIHdhaXQgb3BlcmF0aW9uIGlzIHNwZWNpZmllZCBz
ZXQgdGhlIG9wcw0KIAkgKiBwb2ludGVyIHRvIE5VTEwgdG8gYWxsb3cgdGhlIGZlbmNlIHN0cnVj
dHVyZSB0byBiZWNvbWUgaW5kZXBlbmRlbnQNCkBAIC0zNzcsNyArMzc5LDYgQEAgdm9pZCBkbWFf
ZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQog
DQogCWZlbmNlLT50aW1lc3RhbXAgPSB0aW1lc3RhbXA7DQogCXNldF9iaXQoRE1BX0ZFTkNFX0ZM
QUdfVElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7DQotCXRyYWNlX2RtYV9mZW5jZV9zaWdu
YWxlZChmZW5jZSk7DQogDQogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShjdXIsIHRtcCwgJmNi
X2xpc3QsIG5vZGUpIHsNCiAJCUlOSVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOw0KLS0gDQoyLjUy
LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
