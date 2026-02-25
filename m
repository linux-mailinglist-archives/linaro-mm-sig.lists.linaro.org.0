Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BKvCYhTn2nXaAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:54:48 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC319CF5A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:54:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C0B9401AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:54:46 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id B4447401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:54:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ZfL09FaT;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48371d2f661so12565e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:54:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772049284; cv=none;
        d=google.com; s=arc-20240605;
        b=VBZ6FJCD4E98hqwIBJIJRfrzzPjENAodK2TONlQ3GJ0tz2exsDMoxnpY7/7zPsIKeG
         mRyvw6NoVkJI71syIpXjGDydtrEOLoe+fUhT9JC8d2KjXZiEl1McNqQXk9N+wgVn8g9W
         Gw2wb0UQGtOobSDNJ3Vcs20GdStfj/CyLoR9QFk9FP4ATOuMr7Vxvn6KY2OQXzpSvg3m
         w3IH7RFKpPqTE24Ybvs8eX15DiQWCEd5Em1CW/Q69+P/L1yiAuW8cAlKPV7tYHNGpPYN
         vP330zNXQr+g/LHoSKljO3y+SOzLIdTR0tw56kkMHDlflzQd1Ky9aMoQV8b1mJYCIHAf
         VSzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5kHOrLDbHDmcLU0mU/NKuQBxgp05tP5/RxjExBXg+n4=;
        fh=gyI1xuvr9G+Aa9u9iW52RCPCo3NPAWzauR4JSSD6uyQ=;
        b=SnTib/H0VcC2VduDDpe/IKFelp6PRw1JD+Wh66nPbvSJt2MSMvrTmFld5TCVF5j/1O
         pLelaF0Qv9ARgHTv0XB0dGv67IrGVPvFevdqz+nPiynffU0RKJDNBN6TslnYSSRkYpSS
         vkOV80DcoGjGB51GeTCo1DppkfoYJ3l3SQFDv3Ox9w3Mb6RVLHawWv24HqMplT1afAFN
         TQOPweyGu1qaqspPmxK8mGytVl1hE/qvULEW72lfXCPxjZlSSHCaDNJjaYIN7wXC2dXi
         j0PgbIs7wPTgTBnN9RBgAKa2oALI1heQwy+LExa/WASD9rZ2ryAxwRiuEbS4IXtkjO0y
         0t5A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772049284; x=1772654084; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5kHOrLDbHDmcLU0mU/NKuQBxgp05tP5/RxjExBXg+n4=;
        b=ZfL09FaT1YVgQcaUB01VhvGo0eTiwr2ZwGLFqqYyfwKIGVJOT9k8rgS9qYpjRIwvYQ
         QBns/BlyGEfJj0bc76WJakawuyva+xMlow5NMorjl6/2mielxmKjHkU22ngs7w3vMj2R
         jYez32R5B9s2CL75K7Xtbsmk5jds8ciSoX6S6LxHcTMk7HJToJomcKAIM9+csziEaOer
         vuXY6X7wiCmzsBy7KxRpAITg805Edbdbb1IGwp8e0n3WcOv+OCchcVSqeOr/tfYj2VgA
         JRB+5qV+uHtai+HGfPG1+2pC/FPBa+eLNZl8pVWzzabZf9z7ODCF7XwFHsAFYtGrVw+4
         tjIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772049284; x=1772654084;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5kHOrLDbHDmcLU0mU/NKuQBxgp05tP5/RxjExBXg+n4=;
        b=lVMtA03w4EhmJsRx8hNWGsDzxEHvoO9/v+D7FVpRvUI/sbVXaNQ1vz63gAvnWMxZy1
         ARh81xNKfWBLeFDpw7g2gArr8JlQTjAhKnvymDdn180iLkMPlqqJFJZuSEKdT0p79Csv
         ff+MQuEALvkgXev0AbbbLXFHE89ZXNfB1++bjADGW3P9N6h0B7j5ue9tjm4agJcJLbwF
         g/WxoD5DFV+TRrYNixVQhA7kxPOAalgb5BVwgn8vjsmNKasmJLj91MQgRFVk7med7XLg
         NLi9afqvB033heYQjL+WxnbIxpQLsbOjYEOyXTP7bsHWJpNjeuQrftvMnxrYugvAxypB
         UCMw==
X-Forwarded-Encrypted: i=1; AJvYcCWA8a+GRfecJcFU0SGphxCDBxxUNIicITXTlxQeK+yuoTi7F2QfQntnXxRo5vu3bX+nf/LtV7xN1+HXlyn6@lists.linaro.org
X-Gm-Message-State: AOJu0Yzqe0y9+/qE67qlH3qexXEeWvH4fjnvYOkxcbYE1SWgfjlUHoBL
	iyjcO+mAsqZRN27vnfu+aVygbl21evYB38r8oiTUw7dTkZ5yC/zimyFtq1Mj+SzoKvnlq2MSiMA
	JF/BHOG7DQqqppiv4IuPgLXBIspzFmg/1OxTTHcsT
X-Gm-Gg: ATEYQzwiE2c5XS1YTfRJEWLGXCSbNBiQjpQK+nH72AtYaiuc3n/39ypKJy/bB+gNB29
	wjOnkxw7MYh4N5smXz2OrZPfYkYXanWuNhrFncMw2ahB1I25ATpvuu2JE/064DxD7cxSM7BwcQJ
	+ijbmPc1q9bxwPvgQzmiLRi3WKDWFx4ME0oL6epfjQ1u50Ria+ZHnu7qosF7LekZnmkNIFlwOnJ
	z5gf0dFsgZa0QU2NVp7/xTJuXG11TQe0o4Sj6xdGL+nLJstynjjClc3digwO6cPZ2L0Lp2ulHxW
	tA9oAVGcuQNTuhRYmxpdClXUKahP5KeL3CgTQrB+U3a86L3yT/CZ9UMbV4oVODemmkqgzw==
X-Received: by 2002:a05:600c:a011:b0:47d:7304:d759 with SMTP id
 5b1f17b1804b1-483c31a1fbfmr90505e9.15.1772049283315; Wed, 25 Feb 2026
 11:54:43 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org> <20260225-dma-buf-heaps-as-modules-v1-6-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-6-2109225a090d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Feb 2026 11:54:31 -0800
X-Gm-Features: AaiRm51QwXByHIj_4EAMjL0iJavUr_3DqvTRveBK0_qkEAD8H59M0Ces2LdyWWw
Message-ID: <CABdmKX26Q-DXsLEMbvsYbw_JotHpGk3zFDccAJaqir4aSBdt0w@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: SCKFACVWJ67TKFSFMU7POZ4KA6Y2IE5G
X-Message-ID-Hash: SCKFACVWJ67TKFSFMU7POZ4KA6Y2IE5G
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/7] dma-buf: heaps: cma: Turn the heap into a module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SCKFACVWJ67TKFSFMU7POZ4KA6Y2IE5G/>
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
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 97EC319CF5A
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgODo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IE5vdyB0aGF0IGFsbCB0aGUgc3ltYm9scyB1c2VkIGJ5
IHRoZSBDTUEgaGVhcCBhcmUgZXhwb3J0ZWQsIHR1cm5pbmcgdGhlDQo+IENNQSBoZWFwIGludG8g
YSBtb2R1bGUgYmVjb21lcyBwcmV0dHkgZWFzeTogd2UganVzdCBuZWVkIHRvIGFkZCB0aGUNCj4g
dXN1YWwgTU9EVUxFXyogbWFjcm9zLCBpbXBvcnQgdGhlIHByb3BlciBuYW1lc3BhY2VzIGFuZCBj
aGFuZ2UgdGhlDQo+IEtjb25maWcgc3ltYm9sIHRvIGEgdHJpc3RhdGUuDQo+DQo+IFNpZ25lZC1v
ZmYtYnk6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCg0KSXQnZCBiZSBnb29k
IHRvIGFkZCBhIG5vdGUgdGhhdCBoZWFwIG1vZHVsZXMgY2FuJ3QgYmUgdW5sb2FkZWQgKHVubGVz
cw0Kd2UgYWRkIG1vcmUgY29kZSB0byB2ZXJpZnkgdGhlcmUgYXJlIG5vIGxpdmUgaGVhcCBhbGxv
Y2F0aW9ucykuIFdpdGgNCnRoYXQ6DQoNClJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVy
Y2llckBnb29nbGUuY29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
