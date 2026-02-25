Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDHDIExOn2nNZwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:32:28 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D28CD19CBB2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:32:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C725F401AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:32:26 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id A07E7401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:32:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=tAEleXFR;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.42 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48318d08ec2so9955e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:32:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772047943; cv=none;
        d=google.com; s=arc-20240605;
        b=Rz3aZqWZNIjLGi0xbnIlkImxe621vKiEPb24uFjzl9yeGJ9wWZdQhbyxOF+jW3PGGi
         PsOpoBmgFVBVfU/3f3ydkxBc0UKJ57gAzZ+nS4RQ8C+rGY5SVikHQAccV4L88hPS76Ex
         XaTf4bOk6Sq58h7tB+zpuYblQi2F+S0r5sYEInslsBREwxCgkNAnbGPts0p04QdFVAW+
         YgzU2WMhyUEJ2WecFPOfDpyr9m4v2620SsJFmpLaG4tHdafX12LkTlU9KwP2HICXPAbq
         iBis4nDXk73tNbzkOaOqcK8AI8NY95LtcK/nVRFGCdJWyEfzcp+jtR69FpNXljIQZVdN
         celA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jgvQ9LOkQazsPmWMTTjFvYurOXwrvdriypbs6xoQIpY=;
        fh=ok5wzQAzUyIPkQrSxkC9jr00zAQm5JBp6FxlnPQHyqE=;
        b=K6MaQzGfss3V4ZQCHtNMZNl/vPmlIaQy+tbtHhTYhaAvB9a2MIqBGbqCxPxOK420bV
         JtvlKhFTOyVl3sNBXCw8rLBgude7kM2TC2pjpT8PFGHcNMju97BI2igp2+n/hYUApkPZ
         ps8t+g5gTH1TOiXG/yHT3pS1aMqGYkIJm+vsgowTP8HchSjPP88a1j07eXvP53fjF6yh
         8dw+RTpTVMHJHCFvjuycUzp3ZpmD8bOvQppQxEAv9xLaPfh19LErCBciI8nrYYE7pdWl
         Ge8Wr+PeDOZJV/E+X/6Lpm7kE2r1t9oCRy0bSiRgs01+R6MTMLpn0+dUK2rcJICONfZO
         dEpA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772047943; x=1772652743; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jgvQ9LOkQazsPmWMTTjFvYurOXwrvdriypbs6xoQIpY=;
        b=tAEleXFRcf/3yZNsZH9JONEoBcym5af1P6+0PPJPvGZHArJSlsJ7/QFOE7rEj2jnKS
         b3uTRv7HVl9TFxVrk068FsZralQU5xxXysrlP0mEvFLI0CHuOcMhmMP1k8BxJeW3GHtV
         YDtREOB9Icu4tzjpPNopmgBSC48s4mSBexATe5P/j0iSmem/rtM7b3+DJVYMjHu5M7a+
         Q3fkqDZ3SkzTgI/r2/0kfXdLNtFy9cNoEgHPPnuNl0gYTxewkiARf4ZtHHr97Z/QaOuu
         xcIlLHArUyq+5TlAasmp9A/HlyN9gVYVSgNSsEjzlrE1u4x+noMvujcbtz8AZb9Ql5KC
         7FBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772047943; x=1772652743;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jgvQ9LOkQazsPmWMTTjFvYurOXwrvdriypbs6xoQIpY=;
        b=hbNut7y22XyXqPfug0dEIF60hZOf/1KS1j8ivKoxe0YRixYz2yRFkuDnKrxYkB81BV
         Sv3TytmxIQVcItr6WUc8PK8v6y2XKyajtfS728FXWZ++HjW0SoVtXWtdzvWCLmSPbEt9
         GxVPPJYCDGE5G27WsXLAyyf87eaKNrMx8Qb2TaiMOpkQNCdAMQ7CaX1bG91LIvB5dBGV
         VQFfKupDfNzIJceGIR9It8eharTEGr+6a2ETNkgaWMPMbq15oDHZdH6rReDw0OUyIf4Q
         kVp96Md2tKb2PWPT6KR+DEzHM3MfEOBRjZjGjFwt0KYQNQt6EEpttuDShPM0+yxmf1SH
         bwIw==
X-Forwarded-Encrypted: i=1; AJvYcCVuR7m81eXzMEewsU0/nAmjr4uXfyobySqniugUTLDnHf0CfUCENrvH8QjutTEwRsugQuXYYaEgICezl33W@lists.linaro.org
X-Gm-Message-State: AOJu0Yx3JtRN56K9V3OHoIRHnkAJVQDQ6uv2LjnppA7hPSR47ancQaUI
	jAtnz0W/0imuNRnFbNS8MxZW6MS8+G/6SKnGeoTJ8HfjgQy2l3gbAf5M+txXIBEmDFDmwwuAxPD
	RIgTN+ntvr/BNDajhLdUYqsqNscapDsvBZHWdqolx
X-Gm-Gg: ATEYQzwQ5G8NpECTr/s4Yx3uo5WB6tAScHMeUrw88LYjIT8njh0sweN87R3jdS+mwxG
	FVa1PM0jGWigA/WKAqzsdVHBLso8P8pJLnGJfkeiUwcNgzVJuVcXJawwpX8BBxwlknhOEK/bmed
	zNYDj5nKbA5VaaXqVqbdKLzPBoCrmyqqe3cQLt2ETx3wgObKYKTwzqB0LcBN1ZKoD5ySdf96fyF
	i/Wenyr65IZ9oEXTFqVsRpScJsj9uZaRdiHdUYQ3a8SiVO0TJY5CXXFWpnpLpVHwDKlbKpek0Ec
	qfH7bFuxCqPttcvJx82hpIK6vlVj1SsqEsgrypGO1w26yeCNJsUM4CM8YhnMIkMUk1P/NQ==
X-Received: by 2002:a05:600c:628e:b0:480:274f:843d with SMTP id
 5b1f17b1804b1-483c31b00d9mr64725e9.16.1772047943193; Wed, 25 Feb 2026
 11:32:23 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org> <20260225-dma-buf-heaps-as-modules-v1-1-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-1-2109225a090d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Feb 2026 11:32:11 -0800
X-Gm-Features: AaiRm50SiWoOS9CfY38Fs_M7N-g3DOx_BZCYfNv6nN_YOmBm3wEPmTfvWS_ulms
Message-ID: <CABdmKX2_+zh9jg+Wc9iS-YndB1KefC6+fQZ5G7f1LyyCtuP67g@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: 4YFN6ZSYCWG3MYP7NWOHWHBHZOCPYHG4
X-Message-ID-Hash: 4YFN6ZSYCWG3MYP7NWOHWHBHZOCPYHG4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/7] dma: contiguous: Turn heap registration logic around
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4YFN6ZSYCWG3MYP7NWOHWHBHZOCPYHG4/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	NEURAL_HAM(-0.00)[-0.983];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: D28CD19CBB2
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgODo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSBDTUEgaGVhcCBpbnN0YW50aWF0aW9uIHdhcyBp
bml0aWFsbHkgZGV2ZWxvcGVkIGJ5IGhhdmluZyB0aGUNCj4gY29udGlndW91cyBETUEgY29kZSBj
YWxsIGludG8gdGhlIENNQSBoZWFwIHRvIGNyZWF0ZSBhIG5ldyBpbnN0YW5jZQ0KPiBldmVyeSB0
aW1lIGEgcmVzZXJ2ZWQgbWVtb3J5IGFyZWEgaXMgcHJvYmVkLg0KPg0KPiBUdXJuaW5nIHRoZSBD
TUEgaGVhcCBpbnRvIGEgbW9kdWxlIHdvdWxkIGNyZWF0ZSBhIGRlcGVuZGVuY3kgb2YgdGhlDQo+
IGtlcm5lbCBvbiBhIG1vZHVsZSwgd2hpY2ggZG9lc24ndCB3b3JrLg0KPg0KPiBMZXQncyB0dXJu
IHRoZSBsb2dpYyBhcm91bmQgYW5kIGRvIHRoZSBvcHBvc2l0ZTogc3RvcmUgYWxsIHRoZSByZXNl
cnZlZA0KPiBtZW1vcnkgQ01BIHJlZ2lvbnMgaW50byB0aGUgY29udGlndW91cyBETUEgY29kZSwg
YW5kIHByb3ZpZGUgYW4gaXRlcmF0b3INCj4gZm9yIHRoZSBoZWFwIHRvIHVzZSB3aGVuIGl0IHBy
b2Jlcy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwu
b3JnPg0KDQpSZXZpZXdlZC1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4N
Cg0KVGhhbmtzISBJIGRpc2FibGVkIHRoaXMgcmVnaXN0cmF0aW9uIGluIHRoZSBBbmRyb2lkIGtl
cm5lbHMgd2hlcmUgd2UNCmJ1aWxkIGFsbCBkbWFidWYgaGVhcHMgYXMgbW9kdWxlcyBpbnN0ZWFk
IG9mIGJ1aWx0LWluLCBzbyBJIGNhbiB1bmRvDQp0aGF0IGlmIHRoaXMgaXMgbWVyZ2VkLg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
