Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OF2qM8ZOn2n+ZwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:34:30 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4E919CBDA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:34:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BF97401AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:34:29 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 0F489401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:34:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="I/Zc9Z81";
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4806b0963a9so12605e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:34:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772048066; cv=none;
        d=google.com; s=arc-20240605;
        b=WWj3QaBvTK4JJpgMhj3fb4Utvxg+5rLDgXldPZs56CbbB66S7jTNvPnt3FYqn6Bnca
         B+IOQ9bPUK9yyADWLz0cYB41c29Mf4o2YbgLg/9NUq/ZBWoKq0UlaJicJapWJJUQG0KX
         hTBq1gjm+kxy0m69UPaFUVuX6gvySar4QxtwuE8Qpn8z6MGyjuYhlzgbLUu9ZJMTJBhi
         U0xtvlRX5bq9fK4dyEAVt22JMNNDmbeBl4+2ydcSO2um+8isY7qCE6xzwcnY6qOqOzlo
         6SFqxkGfGFa74hwvkcjGIiov/uKip/W7pBx4tB5fkxiRE+rZLioLNXJOjqsa6ktKXesE
         Zf4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7Si8z437tvGEJio1pwGBHAqSsYapkryN7R/ntn+VLWw=;
        fh=jXhJkV6TrJyHzxSYtPIP7tu5Ue0TQk97Dz93TEJQm3o=;
        b=iBP2d0XPLWRP6uCS4QhwGuJoLjEE1coHZNjZMbe/+pF0JhPX+Db8bwASR9Gi+uCpVT
         RnqJE/3ZGOprWfo2d+HIJ6FLHsV2E3EI2ddCCQJUKdHcM3ScIe7ehBmhsqrahhp9prK+
         nRIyNzoJRJHzUProsvxVJ9xasQklWeO855h1KRosESts2Ml2nx9dNkJ4gYgnvF93SiUx
         1cTzbwq6s620LZ7BjebteNDEhLKD+71eJb1cyvUNaoImjfH3ly0DNfLqbqQg+KhhrFjT
         cx1uyM2DQ7iuLnZ3jjNU/R5Cjkk3M4q52R9AKTT+dniKzqtP7JFE+onqvtWRnT/V9uNF
         3t5A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772048066; x=1772652866; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Si8z437tvGEJio1pwGBHAqSsYapkryN7R/ntn+VLWw=;
        b=I/Zc9Z81Z2MoJHnWMBl2wzGtAj6pi3j77C+aXA1t15lCv7nYw3pYpCdxysXv6u7eX6
         qw7hYFubtxRlMjBpq/6lCbLdYfNOHFeIe2SZx7wHUtaZLkewIom9DW/jD15J/XU/udA8
         bbPXwfAjVBznW6cWwqhQG/HNnS0V2a/FxzXi7UKU7RQPqFy6Kb2fYREhgNcDMvrbxJ0C
         1Wcu4jFG8sjiQeYc6JWjHEl4cIRjXpJrNuV37KjLFSZf0ZCu6e2aPYVjkoSqMBN5Gxxe
         I7fkL+gbzQwc9nWJ4Z2CN6iwAyBNe3lMnabgNLxdOUrZJkT5oAg8uN4epPmrBnoDPR/e
         wfPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772048066; x=1772652866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7Si8z437tvGEJio1pwGBHAqSsYapkryN7R/ntn+VLWw=;
        b=LkLjJMwacwL8VIlZnsAHjKJTbkggPd2Qj+4IXzfLr+6RoySUxz++lSXlOIUwRwd6VA
         L/RAh+lOdrqIPCCXQ2bvu45sxCw+LwmCkucPaU2dB+5ZSB4haUlfrqFSQXo+whSSYYR+
         AUmLu7iGGK/ctBXuTxA4XhMe+9Lpn3ORrGEXOxa4FBwWag7/iS7QfaDVkjQ6bQ6WFKBV
         YYv+UEMfdvu/wPVLfsZP0/Jls9MPfnj8dfjdEKM5gA9qGwZke6F7H4LR9PvrWBBoynu7
         /VC0rhUp0T46J1R0zjOIY4DVLg8wq3N3voVDr6wyV+nUZ+XuAgyYCWbFc8KnMoy8EJ0O
         Jqvw==
X-Forwarded-Encrypted: i=1; AJvYcCUSU5F/S66ghExN/2OVx3Rw09AxLAwfBWz2/qmIAXwKcRxtg249AQoOXsuZUcxTr8ItgcymMn2sOne/I1GB@lists.linaro.org
X-Gm-Message-State: AOJu0Yy8yOPOOgS6JlOKGmWtIl/FGx0hIZELzSKCFaGD9BawMQbAg33+
	CY9Afw3u2xWj/uzpOskdKponFVPJOVQDtiu53lOy5Q4YUcB2inqJYyTWNXVotFFO4mx7sfxheqC
	oREAZfWvBsyfh/LYYihWKY+KgMo4G80sFdnle//a2
X-Gm-Gg: ATEYQzyGD6RZ/d10+EIQn5RCZZlkM/J8vexARRrcCqoNcI4sUIj+LjpeqMBJImnYZAt
	gbPzFqA94vuEKoDP0kX2ZeUCdPOSBUCawP3Ry7FMewF5MmWWbdpHpRlRkgonXhzX31lwot738R5
	vijLpmojMPtHoLMk2iMDspnoB2gzeNIjXBe7dyc7TmdKogaIgQ81llddsxd/T3Pbq+o+e40c8Gg
	1hZPB7RpgePyc/jWBsLCZ/aX/40nQR8rc3wI3Tk49hJkEJ52ugRi3I8dATxqfLlli+lGak7RK4z
	ldLdZg6Jl4jfpVnm8U4IRVf1RCu6EnjeOPISkgL73lYaLq9qbXTsGv+jkhjJ0MoShXzisQ==
X-Received: by 2002:a7b:c059:0:b0:480:4a7b:228 with SMTP id
 5b1f17b1804b1-483c3195488mr93045e9.1.1772048065599; Wed, 25 Feb 2026 11:34:25
 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org> <20260225-dma-buf-heaps-as-modules-v1-2-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-2-2109225a090d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Feb 2026 11:34:13 -0800
X-Gm-Features: AaiRm51mS0fj4CpzrUrBMi_FPuw0tp6YT-qMjNhlthEAQ04zl32goABU8oOB09E
Message-ID: <CABdmKX06VsekPpwairaWC6JuH6BHMj-NqJj1cYgR=-rd6iY9ZA@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: XCM7RZY26CAQ5BYFPIVTUZGFNE44MC23
X-Message-ID-Hash: XCM7RZY26CAQ5BYFPIVTUZGFNE44MC23
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/7] mm: cma: Export cma_alloc and cma_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XCM7RZY26CAQ5BYFPIVTUZGFNE44MC23/>
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
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 6C4E919CBDA
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgODo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSBDTUEgZG1hLWJ1ZiBoZWFwIHVzZXMgY21hX2Fs
bG9jKCkgYW5kIGNtYV9yZWxlYXNlKCkgdG8gYWxsb2NhdGUgYW5kDQo+IGZyZWUsIHJlc3BlY3Rp
dmVseSwgaXRzIENNQSBidWZmZXJzLg0KPg0KPiBIb3dldmVyLCB0aGVzZSBmdW5jdGlvbnMgYXJl
IG5vdCBleHBvcnRlZC4gU2luY2Ugd2Ugd2FudCB0byB0dXJuIHRoZSBDTUENCj4gaGVhcCBpbnRv
IGEgbW9kdWxlLCBsZXQncyBleHBvcnQgdGhlbSBib3RoLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBN
YXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQoNClJldmlld2VkLWJ5OiBULkouIE1l
cmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
