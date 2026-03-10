Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGB+BNA4sGlbhQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 16:29:20 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 89391253864
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 16:29:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D2123F6DC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 15:29:18 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id CE5013F6DC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 15:29:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Q3YZP+Oo;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.42 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4852ef20fe8so75175e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 08:29:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773156555; cv=none;
        d=google.com; s=arc-20240605;
        b=iy9QE5iYLC5tM5pYfC9SfsOlkF2Knd6ZFVqW+BEi9mBdWtVtjnsz6K/0KkSls1IMRy
         q1z9UKg+UlZXZrQ0OCCNVUPiQ35wGfvmAsi6vXRORNblm0jCCj/rXHEghJacLyPBi5/Q
         /iTiQj3m4Ccxusza79kakM+c9F68WUIYJ0AmJymtxBngJVvFUg6xVFrMBvYjnR8sr2r5
         bdvuStfRPtPgP/65NTRt5eNKyMaWsCSqVF0cJKNo59alkQPqtmfGwxU8b7cSpXT0aUpL
         TQRsJG3Abb+Uy81XbVOdmG2zl1c3dbft46D9VGewTcO/IAMn7f73kr45axE/5jx2DyO/
         2GRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zIiWwFMgmclSsyKUbL5OghY1eU+rJVt+C6uIngJuqC4=;
        fh=83g+FC6oDNxZ0aabdiFkXmNw30SLrvZZ/Aclnz2K6ac=;
        b=WiXs2r6BHT/v2RzD6cRttVs2d4k6ayxarFd3bHqgie9d2uQOzHTwCYd5JEQibmBvTm
         UWzVzU31k98naPBssFxLDV4UAWvvKBMlagtjzZ0P3/e99RC8Vl961lOtXk3ehMd4xy/a
         fLaPmvah+qGhqNg7FUi5OfIJ68i1lL5bhCuXIm+ma2myI+sXd8Ivg0LrycbL4wpGn38y
         8izcvfBO+JDH4ZgRFk/j4rCrdxj/XmGe/8g9rdxpyJ9dOtlRLoVoPrxYhPyDBnGDnrwO
         9TX4lDlLA6hutoVGzDeXrtTFxFgOcK2fiBauVm1mNoMUrcxW3RhWXgOQVdWXcmegScnZ
         w6lg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1773156555; x=1773761355; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zIiWwFMgmclSsyKUbL5OghY1eU+rJVt+C6uIngJuqC4=;
        b=Q3YZP+Oo6XcGkttNz1LSfr3njy1kdRFst6un9HeS1zRBVDrWuamblAC+qYj428sqYz
         Tf4+v+dPb+/abeLRekGhj06GyiJoVK/6rXl574M80sFyoikieEz8e3XXiV8fkGfbO0iy
         U98XXmv1wIVB2tDPmoFLfWGYnLZ3vfKwFoh3PrrKzugvaA0xFIPYqrQYIhiN2AXm11C4
         YxDATjh7824sBCTVqq+4XYks7YrlzRYlL3zrfz+T4p8U4FpZah21Gvt+EmvPIqnB8U/8
         eEGYeYGEK5ID3pG3pzcUhEFvgiug2Kcv9h4hwOKFUkGBJiUlYWx+ZwgttXmJRHcDR6I/
         x47Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773156555; x=1773761355;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zIiWwFMgmclSsyKUbL5OghY1eU+rJVt+C6uIngJuqC4=;
        b=VXUrfuJImMUKD7kLOahWvu5wZpj7NrZXJsL3IwPgwYxoVqn4BhiBJHrVmEOk8WAu4s
         N2i5dTswRcq4o9A4w7v1GFsIpbgGZDNc6jZ+Ict8UnmogZC0ldnXwnXRfoledc0coLys
         S/tkwZ5ZC7hS6Hz206fJlVZ+6KpQOITe2C3sP9G9Qj/9oeJvcypimPZqLO5dr8RiSfhs
         HDAO2iILuCu7uN4weC2G0ihXWh1CTKQ3RsW4jVplYNXanglX1+K619Xj7sayA2xg1Pva
         dxE54qxrQ5ayYBWOckip+SnsrUPJRyORv2OrJnUuiL0FMP7VANTj7txmqBGJrsr403wq
         sMMg==
X-Forwarded-Encrypted: i=1; AJvYcCXxti+VVVxFp2IjFlO7aAp5EN6zdaIaRVYBHRL7AYu99bDiAxAsFz1yIAjdw11YSqNJyj4CfM58jM0UwTR8@lists.linaro.org
X-Gm-Message-State: AOJu0YwVjD7rnpyEuccQVQHk4yrCC7SuJd34SwP0B1kzBd7ZMOQnAOO9
	GUBblBZxo6WBbuTHsrvgPSMAYj4E677kaNEEaKpg8erZUbikmTfs0v2fy2dKYbWzMgqroAhkhFP
	ltV+cuKimxzkQJvjsqa6/ksCVQw/mcDsm78vfZjWHvt8eqi5PVUzEcj+99Js=
X-Gm-Gg: ATEYQzy6nm257P0e9eYEeaBp7JSXF+T8bNeTrZFAJl7UN4y3GlP+gKOy7Z4uTb2CbnW
	hujAmHpLjuK9acRfzr4t4Afg5faXw1LaeVrbADSA3MowlIjEDnTtZqUybv1jWAuj6Hu2mbEC/1I
	5fUFz+6XlXQwqtnODL4Dut5Hjn5eMYj+3XZAfn4ZXgbUDiQYgwrB5UXkejd1FkIwnd8Mg0pu/dj
	IESnE6hX5diI714u+9L6s52fsuEv1SiJQjzQAUJObQ9ENjWVAwxMAorLGvPDDVwjDVLrRCtL9ds
	f50HuMGBU1ORTrJcsI+O1B6WX3N10GXs13i9bA==
X-Received: by 2002:a05:600c:1c03:b0:483:6a76:11a6 with SMTP id
 5b1f17b1804b1-4854368e59emr1089915e9.5.1773156554348; Tue, 10 Mar 2026
 08:29:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org> <20260310-cma-heap-clear-pages-v2-2-ecbbed3d7e6d@kernel.org>
In-Reply-To: <20260310-cma-heap-clear-pages-v2-2-ecbbed3d7e6d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 10 Mar 2026 08:29:01 -0700
X-Gm-Features: AaiRm52I43ALNUPu6gwaVYUD5_lwue7logMuffJ6OYtcEMWpxfloG1qbQuiJ490
Message-ID: <CABdmKX1RFZJuvRtnebPzQDs-8DVEK4gzVa=V8LAztmCG0Cicqg@mail.gmail.com>
To: Linus Walleij <linusw@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: MUL6NGEY4NGK2GIJRVLUK5ATCUWOR7CS
X-Message-ID-Hash: MUL6NGEY4NGK2GIJRVLUK5ATCUWOR7CS
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Clear CMA highages using helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MUL6NGEY4NGK2GIJRVLUK5ATCUWOR7CS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 89391253864
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:-]
X-Rspamd-Action: no action

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgMTo1M+KAr0FNIExpbnVzIFdhbGxlaWogPGxpbnVzd0Br
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gQ3VycmVudGx5IHRoZSBDTUEgYWxsb2NhdG9yIGNsZWFy
cyBoaWdobWVtIHBhZ2VzIHVzaW5nDQo+IGttYXAoKS0+Y2xlYXJfcGFnZSgpLT5rdW5tYXAoKSwg
YnV0IHRoZXJlIGlzIGEgaGVscGVyDQo+IHN0YXRpYyBpbmxpbmUgaW4gPGxpbnV4L2hpZ2htZW0u
aD4gdGhhdCBkb2VzIHRoZSBzYW1lIGZvcg0KPiB1cyBzbyB1c2UgY2xlYXJfaGlnaHBhZ2UoKSBp
bnN0ZWFkIG9mIG9wZW4gY29kaW5nIHRoaXMuDQo+DQo+IFN1Z2dlc3RlZC1ieTogVC5KLiBNZXJj
aWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTGludXMgV2FsbGVp
aiA8bGludXN3QGtlcm5lbC5vcmc+DQoNClJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVy
Y2llckBnb29nbGUuY29tPg0KDQpUaGFua3MhDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
