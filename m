Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLwTI7Nk5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:38:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB20431AB9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:38:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EEF8404F9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:38:58 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 540A43F8E9
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Apr 2026 21:49:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Ql5GTX9e;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=baohua@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9C15860180;
	Mon,  6 Apr 2026 21:49:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE36FC4CEF7;
	Mon,  6 Apr 2026 21:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775512184;
	bh=N+z22Wq+UEerxVHAHodhIfMR6FsXxwnZoZShwWjnMK0=;
	h=From:To:Cc:Subject:Date:From;
	b=Ql5GTX9eykHVTn0dJcvGAyRizNvXj1F315Z9c/ibdXYR25xTk3qp4CXm7MLy52cpa
	 OWgpQ2n6zIIpH3rWtG6co4qZ9DcV/uZGrNPgvHLwnt09ra0JgvHyAbxEe8B5e924gu
	 Lrv814OFg1k6eMYasonNNSbK8UmzDKpSm2iVvHzf5IEILthB6dlRhfsWYm95SX4v+B
	 BtWsyWwG2kcOW2AWVOHHJPZVWEExfOW5+BgmtAy0tqfARhfaM1sb1WwRAydlW9KwIR
	 6GIqblsKkLrfsa8gCi2o/LcSPMCcgus1qf+F6c8tN+xdbf9m569SGTmxx9ckctHrQY
	 UTjPM16TasV+A==
From: "Barry Song (Xiaomi)" <baohua@kernel.org>
To: linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Apr 2026 05:49:38 +0800
Message-Id: <20260406214938.24142-1-baohua@kernel.org>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V3SV3FVAPMEYGU4LI4SM4KRTDHSLA3DX
X-Message-ID-Hash: V3SV3FVAPMEYGU4LI4SM4KRTDHSLA3DX
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:51 +0000
CC: linux-kernel@vger.kernel.org, Xueyuan Chen <Xueyuan.chen21@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Barry Song <baohua@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: system_heap: Optimize sg_table-to-pages conversion in vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V3SV3FVAPMEYGU4LI4SM4KRTDHSLA3DX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[331];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.825];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,collabora.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 4CB20431AB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogWHVleXVhbiBDaGVuIDxYdWV5dWFuLmNoZW4yMUBnbWFpbC5jb20+DQoNClJlcGxhY2Ug
dGhlIGhlYXZ5IGZvcl9lYWNoX3NndGFibGVfcGFnZSgpIGl0ZXJhdG9yIGluIHN5c3RlbV9oZWFw
X2RvX3ZtYXAoKQ0Kd2l0aCBhIG1vcmUgZWZmaWNpZW50IG5lc3RlZCBsb29wIGFwcHJvYWNoLg0K
DQpJbnN0ZWFkIG9mIGl0ZXJhdGluZyBwYWdlIGJ5IHBhZ2UsIHdlIG5vdyBpdGVyYXRlIHRocm91
Z2ggdGhlIHNjYXR0ZXJsaXN0DQplbnRyaWVzIHZpYSBmb3JfZWFjaF9zZ3RhYmxlX3NnKCkuIEJl
Y2F1c2UgcGFnZXMgd2l0aGluIGEgc2luZ2xlIHNnIGVudHJ5DQphcmUgcGh5c2ljYWxseSBjb250
aWd1b3VzLCB3ZSBjYW4gcG9wdWxhdGUgdGhlIHBhZ2UgYXJyYXkgd2l0aCBhIGluIGFuDQppbm5l
ciBsb29wIHVzaW5nIHNpbXBsZSBwb2ludGVyIG1hdGguIFRoaXMgc2F2ZSBhIGxvdCBvZiB0aW1l
Lg0KDQpUaGUgV0FSTl9PTiBjaGVjayBpcyBhbHNvIHB1bGxlZCBvdXQgb2YgdGhlIGxvb3AgdG8g
c2F2ZSBicmFuY2gNCmluc3RydWN0aW9ucy4NCg0KUGVyZm9ybWFuY2UgcmVzdWx0cyBtYXBwaW5n
IGEgMkdCIGJ1ZmZlciBvbiBSYWR4YSBPNjoNCi0gQmVmb3JlOiB+MTQ0MDAwMCBucw0KLSBBZnRl
cjogIH4yMzIwMDAgbnMNCih+ODQlIHJlZHVjdGlvbiBpbiBpdGVyYXRpb24gdGltZSwgb3IgfjYu
MnggZmFzdGVyKQ0KDQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4N
CkNjOiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4N
CkNjOiBCcmlhbiBTdGFya2V5IDxCcmlhbi5TdGFya2V5QGFybS5jb20+DQpDYzogSm9obiBTdHVs
dHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCkNjOiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29n
bGUuY29tPg0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
ClNpZ25lZC1vZmYtYnk6IFh1ZXl1YW4gQ2hlbiA8WHVleXVhbi5jaGVuMjFAZ21haWwuY29tPg0K
U2lnbmVkLW9mZi1ieTogQmFycnkgU29uZyAoWGlhb21pKSA8YmFvaHVhQGtlcm5lbC5vcmc+DQot
LS0NCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyB8IDEzICsrKysrKysrKy0t
LS0NCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgYi9kcml2ZXJz
L2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KaW5kZXggYjM2NTBkOGZkNjUxLi43NjlmMDFm
MGNjOTYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCkBAIC0yMjQsMTYgKzIy
NCwyMSBAQCBzdGF0aWMgdm9pZCAqc3lzdGVtX2hlYXBfZG9fdm1hcChzdHJ1Y3Qgc3lzdGVtX2hl
YXBfYnVmZmVyICpidWZmZXIpDQogCWludCBucGFnZXMgPSBQQUdFX0FMSUdOKGJ1ZmZlci0+bGVu
KSAvIFBBR0VfU0laRTsNCiAJc3RydWN0IHBhZ2UgKipwYWdlcyA9IHZtYWxsb2Moc2l6ZW9mKHN0
cnVjdCBwYWdlICopICogbnBhZ2VzKTsNCiAJc3RydWN0IHBhZ2UgKip0bXAgPSBwYWdlczsNCi0J
c3RydWN0IHNnX3BhZ2VfaXRlciBwaXRlcjsNCiAJdm9pZCAqdmFkZHI7DQorCXUzMiBpLCBqLCBj
b3VudDsNCisJc3RydWN0IHBhZ2UgKmJhc2VfcGFnZTsNCisJc3RydWN0IHNjYXR0ZXJsaXN0ICpz
ZzsNCiANCiAJaWYgKCFwYWdlcykNCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOw0KIA0KLQlm
b3JfZWFjaF9zZ3RhYmxlX3BhZ2UodGFibGUsICZwaXRlciwgMCkgew0KLQkJV0FSTl9PTih0bXAg
LSBwYWdlcyA+PSBucGFnZXMpOw0KLQkJKnRtcCsrID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnBpdGVy
KTsNCisJZm9yX2VhY2hfc2d0YWJsZV9zZyh0YWJsZSwgc2csIGkpIHsNCisJCWJhc2VfcGFnZSA9
IHNnX3BhZ2Uoc2cpOw0KKwkJY291bnQgPSBzZy0+bGVuZ3RoID4+IFBBR0VfU0hJRlQ7DQorCQlm
b3IgKGogPSAwOyBqIDwgY291bnQ7IGorKykNCisJCQkqdG1wKysgPSBiYXNlX3BhZ2UgKyBqOw0K
IAl9DQorCVdBUk5fT04odG1wIC0gcGFnZXMgIT0gbnBhZ2VzKTsNCiANCiAJdmFkZHIgPSB2bWFw
KHBhZ2VzLCBucGFnZXMsIFZNX01BUCwgUEFHRV9LRVJORUwpOw0KIAl2ZnJlZShwYWdlcyk7DQot
LSANCjIuMzkuMyAoQXBwbGUgR2l0LTE0NikNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
