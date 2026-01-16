Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2CFD38960
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Jan 2026 23:37:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 550A6401B8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Jan 2026 22:37:20 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id C137E401C1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 22:37:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=sQ51rlFC;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47a95a96d42so6705e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 14:37:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768603026; cv=none;
        d=google.com; s=arc-20240605;
        b=FBmgirhYZBsKLuwJMild+sH+mj+hTdgKCE15x38Kmp1F5388P/vtE30m6T0hh6UCUj
         /GbmkTVw3f2PV41QxWrMLh3xpIGF3+ArS1Vx9iJJwQIUaz3agsO4h+stXO3EDbR0skhf
         Zfs5zz1xr0QvbxN0nu1bPfBpZWxJGEZ4+Fab3jwXz/MtueYhvzWzIhTHnY6ti4GcU1+c
         C47Jbmf5gDbRW63K7WLL8tOvDaXvP/xMVLDUWIE263EUwJBEuaTIEVRCmUoxcma4/wB2
         4E4kpsbkJJ3ZgamtG1orLlRv0eX6NqX8DnTzwlyw14l1tj3A/Yf5enXC9vEGmv5xdvuG
         cdlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nPj7qs12piP/bjZVzPpDAGGP7hNz3JwnoCUD9QPt/xg=;
        fh=9CdaY0SVgvPUTpZu3+RpWR2nylCl3ncUQ17ZtQdmmpo=;
        b=Vskob9SSpktsjE9SOqNsj+MDgdIOhxa7SmUyzuZYhLx6CK4hycZqP9OWgkgFEpCH3V
         2V9+VlhESMnTI6bBrEHeAggTykbO6fGdePUIn0mzXM14Yt0uEjBQtwvdem6RW6KJj7HY
         yStSzBAh/48j3vU0c2D1z8xOCCBUkMY38FnXF/gs/7RQukIrmFXi+qCdiIcOjlQ2rxGk
         iJfmL04Afbhji7zoE8nw9pxzSeYexY4yP1C81a7ub6n0CMTtL41HugND/fEhdW1H1scE
         N4JyqkhpUmw6rKOSYdFWPQlCtnrZKK+qMr/+EMXUVJOU+QQO8bZ5t4L1lEgerj4BZjLW
         0u8A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1768603026; x=1769207826; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nPj7qs12piP/bjZVzPpDAGGP7hNz3JwnoCUD9QPt/xg=;
        b=sQ51rlFC1ayx9gAFrqZjrwPWw8uQ/qYr1sQJNy1tdlb6Ql/k+wi2dG2zjA5o5w0HtO
         fTSDIgcmwlvzzN8Rp/Z34OWbGNiSvrezFaoglqpDKDPt+xSoq3N7D2uat3KJtAiClKHj
         oX1s0SsSF8tPx02Q7VWcS2+zHKHRwSNkQjBzujK+ObIox0cP+yGR34vEwSNotILc3xTj
         +P1cTLTQ22eC57jLd4nJXDvMjjqg82RzRLWjrckYqTNxTQJx4q7KTR1gZIQ74kAMEHst
         p0QQrv7DKE4ApTUBUrtV1OGjlRti/hzhBcKltNX+h72KP/2I+EOyfMHdhOVfn/IlMINl
         1rJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768603026; x=1769207826;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nPj7qs12piP/bjZVzPpDAGGP7hNz3JwnoCUD9QPt/xg=;
        b=re7QVzR+kzXg/wf0k6nP2W/oTyEGi6fKOE5Y43pHbZKY5oMKQaFHtPfEAJGsmaGnrY
         wKqa1pHbgc3rOcLUaqwXUrbsWwc+jrboMYFMBVH9zEWzpsPJpv2qfgOdlaUanQj/p9RG
         3TnuZ4a5a3/oBlclegWG2guUXgGtOK6sTDD1PXy8o2R0KVkCimwNapxnE1ZqNEcZfzap
         kMelvrWVWoZFiuo8PEKVEC4cncN9xSNBvw9GEPXjLn2ogFhXPqaxVDXp8Qh81hK5dK3r
         Gp9elEwWQEoG3CAAlO80ci9EsnkUEDyvZ1vNdWmYeKn9R1XOEQRlw0Y9mv3WARisT7qp
         0/DA==
X-Forwarded-Encrypted: i=1; AJvYcCWe66Z9BW59bd37cWYnfFUWsbdNslvR+YHDL5Z3akEGozCOuDT1qF+zzkEIctM3ov2VUqVj/Yzf4l2S+Ifw@lists.linaro.org
X-Gm-Message-State: AOJu0Yxw0WvnBFTkHt0YbeXUsyY91ZHGNQpW8EYi4FnS7JDHsW6w0f0R
	PaFuFj+GPLFXhIb39m/KMEwM1II/glpl/04wZ6Y/0rjKFDemal+qzCHKcwNbbbNphyfORBAOsY6
	aGTR2fRAg+tBlak5hpIZnExcP60JJFdYwI0Z5NC6j
X-Gm-Gg: AY/fxX62Be6Q29Vw0w4gTLzQYPvFtiG4UasKtVAd+wEa1WeYA8n+viyShm4KO2vbanL
	kpinEee1mCx85LZ2ZNtwOziuyL1QoI+VNhT9DDSn/fjdICdYM+H3/aSYrm4JzgZ8Jnbkgd1qUph
	9DzPUd2hkNccCeBQozuCxsvuLG9vftiKS/PlKkQO+Q5woDUFgVIPIWUFsBfngkMkYZCXQ89y4vu
	z64pl7j9X54as+FaQ/spLK9uJ0mJwJ/2n8pva4f+XTg7A7sF3Syn75fq5oUPZrgOFJyqFlcLFxr
	gn4sYgyLNPeV1fpFHVfUGMbfCw==
X-Received: by 2002:a05:600c:4884:b0:47e:de1d:ce99 with SMTP id
 5b1f17b1804b1-480278c7966mr158495e9.12.1768603025656; Fri, 16 Jan 2026
 14:37:05 -0800 (PST)
MIME-Version: 1.0
References: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com> <20260116-dmabuf-heap-system-memcg-v3-2-ecc6b62cc446@redhat.com>
In-Reply-To: <20260116-dmabuf-heap-system-memcg-v3-2-ecc6b62cc446@redhat.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 16 Jan 2026 14:36:53 -0800
X-Gm-Features: AZwV_Qij6KmRcwRqfzeiTk7l4B0hSiDhM7NFKcXm1BXyseKimbBVodrdbzenvJQ
Message-ID: <CABdmKX21XWwwOWZ969GT=DOu7_aofKR7E6+4iMggbELVM=zYAQ@mail.gmail.com>
To: Eric Chanudet <echanude@redhat.com>
X-Rspamd-Queue-Id: C137E401C1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.53:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JLK37FBCULNFAGTIGEUFHVOSYFKRHXVY
X-Message-ID-Hash: JLK37FBCULNFAGTIGEUFHVOSYFKRHXVY
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maxime Ripard <mripard@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JLK37FBCULNFAGTIGEUFHVOSYFKRHXVY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMTI6MDbigK9QTSBFcmljIENoYW51ZGV0IDxlY2hhbnVk
ZUByZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gVGhlIHN5c3RlbSBkbWEtYnVmIGhlYXAgbGV0cyB1
c2Vyc3BhY2UgYWxsb2NhdGUgYnVmZmVycyBmcm9tIHRoZSBwYWdlDQo+IGFsbG9jYXRvci4gSG93
ZXZlciwgdGhlc2UgYWxsb2NhdGlvbnMgYXJlIG5vdCBhY2NvdW50ZWQgZm9yIGluIG1lbWNnLA0K
PiBhbGxvd2luZyBwcm9jZXNzZXMgdG8gZXNjYXBlIGxpbWl0cyB0aGF0IG1heSBiZSBjb25maWd1
cmVkLg0KPg0KPiBQYXNzIF9fR0ZQX0FDQ09VTlQgZm9yIHN5c3RlbSBoZWFwIGFsbG9jYXRpb25z
LCBiYXNlZCBvbiB0aGUNCj4gZG1hX2hlYXAubWVtX2FjY291bnRpbmcgcGFyYW1ldGVyLCB0byB1
c2UgbWVtY2cgYW5kIGFjY291bnQgZm9yIHRoZW0uDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEVyaWMg
Q2hhbnVkZXQgPGVjaGFudWRlQHJlZGhhdC5jb20+DQoNClJldmlld2VkLWJ5OiBULkouIE1lcmNp
ZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
