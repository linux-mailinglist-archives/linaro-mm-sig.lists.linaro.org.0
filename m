Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNxmBOdOn2n+ZwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:35:03 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F15919CC01
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:35:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BC74401AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:35:01 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id EBE2A401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:34:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=tzNryXxI;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48373ad38d2so14375e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:34:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772048096; cv=none;
        d=google.com; s=arc-20240605;
        b=KGNR5q8CziZsJB1KhgMzHfu+82p8SxFIOjHXh3LkKpTDfICLp+GZ5Wv852OWeJwVXD
         vihsHDIa/QNvu60vvcDGMSShnfuxZyGvA9KD9khmxLcDokNaGbKGmM5hZwLxiL5YOYRU
         lih97u3znIHT+G6SR6e/tA+ScrRzYtbejG6uYVpRXqCrBRLnDMQVd4pGzaHf549zvLA1
         Re9/zMUWxqS2+dzWMwGU1q2jRWaSsSTX6CQJVoDDmwh8xOpovOOGGGD7Ww5cIhSYfPfE
         5MfWaBzWwSg/Qz/p41puImmwcNkdy6Z2xULXf2LLkb41Zq7XwG9iWQ64q4DTcSTsHrpa
         k9bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JcGfZZLTy1EfxpUAiB3PslYr4DWldds2kTYxvCknlIw=;
        fh=WyXaReaqdEO5UYUl4oV2/fqbZDHRPB6q1JMAxwQ0R1s=;
        b=bohJifc8FvzQwpXtMKERP2tcRXx6WRLsUvK1mQaWx9a32RV13gtFU5vWX7VrWz/Dga
         2e4vgyRUrcRs7bZfKMyRq044bxlhssMinw/BxeuHrSO0tur9BTLXur0NNJFQZVgCxuGA
         cM3MMVBPss9vj99k/7V2zbokjRx/Y714dxtVeFuwJrtmoAcfLVfteiWvg+gt367npm2a
         7078VKsBQ7OsHlc+wMYKAaURtY3MGGrHvy174rsjnknq72MoYLEtlG/u/PvYGoBzMmRK
         M3pTJkZBojaCGOZBs4H97CLv/jkc+BdZxGkhauesj0EVYyg59LVvvuEqXhpDquD2SlrU
         Mtgg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772048096; x=1772652896; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JcGfZZLTy1EfxpUAiB3PslYr4DWldds2kTYxvCknlIw=;
        b=tzNryXxIvlQqxPYcLWH8mh6c2updgsBayK4w9L4MsEFgJsP+kLu4Gya1V9Jqvz70HH
         Q0zoSERCJEJ2Mge/86LSg1AUp25fASAUP0oNcA1rd5XPNNVt90MrbUi3y9DtHn7STZ3O
         1gCJvSbwahjtc3w7GoW6i6tLTAba4U8B/UiNZvj5k1LRV/VNWuSAGqI9iTlAlSfEkgpc
         rOnQVFM6BCklta3F3JhhiTD1tdt6xH68PUucQEAhzSf5LgyEOr32GCz4v1GIHUz3/cmw
         KyBNtCdxpPdzBPghHAU7oKMSb8Sm5TNgLsT2rJFTRryCtcCVtmY+dbjod/nEhEkijBaM
         JPIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772048096; x=1772652896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JcGfZZLTy1EfxpUAiB3PslYr4DWldds2kTYxvCknlIw=;
        b=JdjqGsSGwuk/lHs1kmhpHCijmGSEbMp6naJ4kAyRI/XV7JTB7mRE7N1418ERjSg9g/
         42TSLcNpm6cOqF2SkfxihRY594CjvMxxJJAWp48iVXXjB4K7MXmw4+cDMeEP0P/GiVW8
         ykXlwE5TIZCdN1lz5UPF4JG73AIkPneTUOxZwLhL4EDHRqkKzJSe1swX/Uu/kC5JbcRe
         jUgSWxfyWI4ATp869LiQvt5O3JzrDvYQ554F3zszbQzP7pMWzi3HoF9rds73IfxMYokv
         CZ4UZxKTRU9Ujyf6tsU07P2zqhdoBqDNqznEwVqMU9z4HZcmByLeav+kpOcGOyfoxy54
         NVJw==
X-Forwarded-Encrypted: i=1; AJvYcCWiieYQ8qG9gzigvpr2NVAd/UY0D5WKeMIXJ8h+pZdtgv3KJ005KwtxZrFg33pBkvR1w2Y/L0damxABnCOL@lists.linaro.org
X-Gm-Message-State: AOJu0Yz3XAziQ4raPpJOFtqbCpbBO/1L+K4PP2BqibzHydwqsLxvnsAc
	K1ldsIu4Nof8Uq+WsIU2WoODRMOqwJEAyqazrcsfmkApMVAtUE+1WXJHLLaTlZmn5pKmGpBq7b8
	6Z7t1DxruLPf89e6TsBI9hOMfNceL6J8FLAUAg887
X-Gm-Gg: ATEYQzxciLNwxNWnIT70WZC4XB9iG1mnfaKt25j7L6CW3VhPEIM4/vlT2ySH3A2OQTq
	YcxqemFaa8R+tT5HwcU1lCcnwpdQ4jzjer9MpyeQX+aVzcC7f0Dv6+49GHkc9JuFfZADVZ0MO47
	IrcsMjx0fmY5nLmxk44aA1yfHhLKXjY5VIWOHnIW8nLHxqTK6qyOUqWipSoSmW3GDU4N2pHBob3
	7OtBQHc+u373jM6fShR5bnEtGTVnAMyGux2TzFoeqNIACcxkO6agjjhvR6iMjsZZglwIpcKsI5k
	PwXx+3lFa+wZVK6Ey90BvZMKrNrrr7P9qmEcC+2pP0B55g1Rr4zRCKdTqgHfZcQtyad0LQ==
X-Received: by 2002:a05:600c:628e:b0:480:274f:843d with SMTP id
 5b1f17b1804b1-483c31b00d9mr66475e9.16.1772048095548; Wed, 25 Feb 2026
 11:34:55 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org> <20260225-dma-buf-heaps-as-modules-v1-3-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-3-2109225a090d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Feb 2026 11:34:43 -0800
X-Gm-Features: AaiRm50gu1dpca-LBzWZRd4gNx9rYHRkdAZSms4Y4Ytlet4IdIIADCtT7UW67vY
Message-ID: <CABdmKX0hGSSbRFwni+Mzq9KbpxwCHzAFPc70RZVv1GmFW92fzg@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: P73NXCZF5P2IMBG6LR44IG3GLGPOYROV
X-Message-ID-Hash: P73NXCZF5P2IMBG6LR44IG3GLGPOYROV
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/7] mm: cma: Export cma_get_name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P73NXCZF5P2IMBG6LR44IG3GLGPOYROV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.979];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 9F15919CC01
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgODo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSBDTUEgZG1hLWJ1ZiBoZWFwIHVzZXMgdGhlIGNt
YV9nZXRfbmFtZSgpIGZ1bmN0aW9uIHRvIGdldCB0aGUgbmFtZSBvZg0KPiB0aGUgaGVhcCBpbnN0
YW5jZSBpdCdzIGdvaW5nIHRvIGNyZWF0ZS4NCj4NCj4gSG93ZXZlciwgdGhpcyBmdW5jdGlvbiBp
cyBub3QgZXhwb3J0ZWQuIFNpbmNlIHdlIHdhbnQgdG8gdHVybiB0aGUgQ01BDQo+IGhlYXAgaW50
byBhIG1vZHVsZSwgbGV0J3MgZXhwb3J0IGl0Lg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUg
UmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQoNClJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIg
PHRqbWVyY2llckBnb29nbGUuY29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
