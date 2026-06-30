Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +a+EEYtcQ2oqXQoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 08:04:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BE84B6E093A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 08:04:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=XHDTJ+EY;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60F3840CBA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 06:04:57 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id 4758340AA9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 06:04:46 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-38005a36edbso1048899a91.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 23:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782799485; x=1783404285; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=10B4i4oL/7/zv30DqERWrYljWa6g0AJAQ99ZS+xoTjU=;
        b=XHDTJ+EYIdbAhue19+o5fTqavHNEoTVglXRjdOkFWbpc04QSze3JiFqKJBZsOuwitU
         cqNKtUU7WvGwry/wYupmd0gIH2w+Ll3MCQB/I6qkSRMNMnKu4TNF9M+5foEpBO4TgYwi
         mwd04XDEZRpnlz7/B34UdIqrwiPwcFzoorwBI2ba+8OCyjjtAAHYZJOsN/07MPsA9jCn
         V/FHZ5Rfs6hEE3g1ESDrteCDtaBb6oLRbgYZiegh36UL+1C6GMQRiDUyv28Mx8KJaIDD
         V/1JVIzhK+kiM4HGpJigNxGHsImmcNpZJRhKN8MMh6cHMrvK1dcVONnTYB/xx++iAKAL
         DUKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782799485; x=1783404285;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10B4i4oL/7/zv30DqERWrYljWa6g0AJAQ99ZS+xoTjU=;
        b=foNbRs/Pug51YZ6PpWlklqY98cKVSJ317fUWyq/dTfW2yAel6HOLzlbdERwUan6RQR
         U358QDZUqgol0Mr+Bh2yubRUCxnMSYk7RcTkChnWZ3eVkAKGeKtxgHm4sQUh9zgn5ZTB
         DE51TXU/tRWYI54nNdrkmp3bshqky6EB+WCvU67o0Pzl9bX53n2TtukyRBmnW4zyCKU8
         jsNoUIJifAzNTf/L+Fy7e5gQahZcndEfH+aTWitDZKDIcV7YiD4u4AGyU7W04JvJxQ/z
         HdpG2XBvgY4qLx0qle2TpYiYURK2OF6vUBcWZaYG7DLxG7MdXGszpbqarlWFOaEmfWZ6
         dcfw==
X-Forwarded-Encrypted: i=1; AHgh+RpNn2QDiMLNz9iR8nwQjOHwGB2dUurCYDDWuuX8aD9de9GnB9SdRZ/HivkuxUO0KizhdmJK1jq7vqTzYH7b@lists.linaro.org
X-Gm-Message-State: AOJu0YxMSqEQhVf8D/5OlBvuMnMdJIZz6G/QoQ47aYCaZ+iJI9upP7Xo
	lAFQCws9Pw26WsM17B+qg1vpB04OfrP4Q1x6Z3lnmsGG18AQxYj75Ot4
X-Gm-Gg: AfdE7clBeKmpgLNhUlOKmhcl7QO6h7UtjNUqjTlBMvvLnDbpiEitc9GoeOfI7z4d23L
	s2kXeKeREb8hrI0yw5UhBhbhRXGZPFWLMF82UQ43nHDp3MedVukODKt2tWPl9wp/H7/xQRSJDFX
	pbfDSVxDt/1L5aUwDnK2a3s+Kh9T2SiqH7OwOJezatHbB21eHkJ4G9bkgi2G5htX6AvsPtRRZw7
	NlObG7b6UYdz0EXqX9i2CtQRagcNWika6d8Lkg+CnJfOyl04FBhoCsqVgD363I96CNgnDWo0gTE
	rQAE7x0OSF++R0ny8fBelZcOxbYKx3dHJYhq5yCyvHitsxCoIbr3ABIvhmwX50L45h1Fs6rOip9
	qPp7yQrp18v31tIngGOew0HXwhMPSISZytGWZUq+5ZMbAazTYaKRlNl3a4IFHOeJAe/NvsmFHS3
	oIhN/zQTZiVPxLOFrRa2GA/KmmCgy8CDG/4umz44kBMvF3XVUlFo2usg==
X-Received: by 2002:a17:90b:510b:b0:37f:eda5:5169 with SMTP id 98e67ed59e1d1-380526d0477mr1902250a91.13.1782799485253;
        Mon, 29 Jun 2026 23:04:45 -0700 (PDT)
Received: from localhost.localdomain ([45.67.201.99])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-380532d4563sm988387a91.6.2026.06.29.23.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 23:04:44 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Tue, 30 Jun 2026 14:04:36 +0800
Message-Id: <20260630060436.1527498-1-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: GI3BCIYG6BUMENJBYKA7JRFX3HZQNKZ6
X-Message-ID-Hash: GI3BCIYG6BUMENJBYKA7JRFX3HZQNKZ6
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, phasta@kernel.org, tursulin@ursulin.net, akash.goel@arm.com, Baineng Shou <shoubaineng@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/test: add KUnit case for dma_fence_dedup_array() empty input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GI3BCIYG6BUMENJBYKA7JRFX3HZQNKZ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:phasta@kernel.org,m:tursulin@ursulin.net,m:akash.goel@arm.com,m:shoubaineng@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kernel.org,ursulin.net,arm.com,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE84B6E093A

QWRkIGEgS1VuaXQgY2FzZSB2ZXJpZnlpbmcgdGhhdCBkbWFfZmVuY2VfZGVkdXBfYXJyYXkoKSBy
ZXR1cm5zIDAsDQpub3QgMSwgd2hlbiBjYWxsZWQgd2l0aCBudW1fZmVuY2VzID09IDAuIFRoaXMg
bG9ja3MgZG93biB0aGUNCmNvbnRyYWN0IGRvY3VtZW50ZWQgaW4gdGhlIGtlcm5lbC1kb2MgYW5k
IHByZXZlbnRzIGEgcmVncmVzc2lvbg0Kb2YgY29tbWl0IDc3YTkyOTg3NDFmOCAoImRtYS1mZW5j
ZTogTWFrZSBkbWFfZmVuY2VfZGVkdXBfYXJyYXkoKQ0Kcm9idXN0IGFnYWluc3QgMC1jb3VudCBp
bnB1dCIpLg0KDQpTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NClNpZ25lZC1vZmYtYnk6IEJhaW5lbmcgU2hvdSA8c2hvdWJhaW5lbmdAZ21h
aWwuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYyB8IDEw
ICsrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMNCmluZGV4IDRlN2VlMjUzNzJiYS4uNzJkZWE2MDkx
ZDU4IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0KQEAgLTM3MCw2ICsz
NzAsMTUgQEAgc3RhdGljIHZvaWQgdGVzdF91bndyYXBfbWVyZ2Vfc2Vxbm8oc3RydWN0IGt1bml0
ICp0ZXN0KQ0KIAlkbWFfZmVuY2VfcHV0KGYxKTsNCiB9DQogDQorc3RhdGljIHZvaWQgdGVzdF9k
ZWR1cF9lbXB0eShzdHJ1Y3Qga3VuaXQgKnRlc3QpDQorew0KKwlzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZVsxXSA9IHsgTlVMTCB9Ow0KKwlpbnQgcmV0Ow0KKw0KKwlyZXQgPSBkbWFfZmVuY2VfZGVk
dXBfYXJyYXkoZmVuY2UsIDApOw0KKwlLVU5JVF9FWFBFQ1RfRVEodGVzdCwgcmV0LCAwKTsNCit9
DQorDQogc3RhdGljIHZvaWQgdGVzdF91bndyYXBfbWVyZ2Vfb3JkZXIoc3RydWN0IGt1bml0ICp0
ZXN0KQ0KIHsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsICpmMSwgKmYyLCAqYTEsICphMiwg
KmMxLCAqYzI7DQpAQCAtNTk1LDYgKzYwNCw3IEBAIHN0YXRpYyBzdHJ1Y3Qga3VuaXRfY2FzZSBk
bWFfZmVuY2VfdW53cmFwX2Nhc2VzW10gPSB7DQogCUtVTklUX0NBU0UodGVzdF91bndyYXBfbWVy
Z2Vfb3JkZXIpLA0KIAlLVU5JVF9DQVNFKHRlc3RfdW53cmFwX21lcmdlX2NvbXBsZXgpLA0KIAlL
VU5JVF9DQVNFKHRlc3RfdW53cmFwX21lcmdlX2NvbXBsZXhfc2Vxbm8pLA0KKwlLVU5JVF9DQVNF
KHRlc3RfZGVkdXBfZW1wdHkpLA0KIAl7fQ0KIH07DQogDQotLSANCjIuMzQuMQ0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
