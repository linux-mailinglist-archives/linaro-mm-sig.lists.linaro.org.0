Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F05DC890EC8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Mar 2024 01:00:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B09923F087
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Mar 2024 00:00:21 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by lists.linaro.org (Postfix) with ESMTPS id BCDDE3F087
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Mar 2024 00:00:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=TQdNYSYm;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.177 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dd045349d42so1485213276.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Mar 2024 17:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711670419; x=1712275219; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T11tKOiumhan7/aJq4T1XnpxT0P/7w0lhoUT1uDz5xc=;
        b=TQdNYSYmROvFI54COvsV+woCI8lhbEG9NrkTm8ouGKtRhJUoAaO5Lc1vJKHsms3n6U
         flzsbhjGosPssL+IB6vXuOoOAPq8ohcNiaZxy607npiGR6HDQZzyX8V6iQxIRIo4Ilqf
         jhJz5wB4NSlEJE1/BmR7PJZcAyrfiAVgBevKyK5YgGZv7CvKYkWfwiNMZgj+zFoZ+feX
         PvgZ2B0ysk/iNFs0bJqSRNO84kVozlz+dPzBMxh1NolFxsi2REIwC7ST+G2LSOjDTvOG
         nK+YMd4lEz7ULegMMjSFZSGGBA1DNPF/o6GSimNaG+SRpiBQKKrqa54II+UB7JOsgJR7
         763A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711670419; x=1712275219;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T11tKOiumhan7/aJq4T1XnpxT0P/7w0lhoUT1uDz5xc=;
        b=huPHMjuXYrRsXrLZeNbpzvcPP0M/AOZmRFvF+fuyh2/GnGD9dxVsvUVOGvCtgznnxP
         rQalY3txqzB+j00bsrnn6wzekbOZpHadMEuf/MtLxsptk70UNXUKafvEZHYEuBRJkwFv
         agplDF9l1pynOMocinuXCuMH564AgQkQkSK81aej1E7X1eBEoOB+EAypcC+DmwAWi08A
         wjm2ZR7Sde7U52GRiPtIzNxvwX8ybL1zZKPeKN2bbAQIg0N2Mtcb7E46VDqDO6DFGN9E
         Z8fUVOqaO7Z79Ckg5mZglJui6cJYavAW4Eh9e0SVkPlc+oh5tz4FliNSAHOkW2z6T2cV
         w9UA==
X-Forwarded-Encrypted: i=1; AJvYcCXmfcO7hdJnEUpeBs9AFLDMOArSwjUR/N7sPxy3MpXD2dS/z6SgStAqh68JNqMBQJrwEpWqSmcuCLBT79xOYNIEitcCFuPdt3whc0Ioifk=
X-Gm-Message-State: AOJu0YzXw4lFmT8FlLSaHC43Q4x9ezKImvp5vQj+vF37uXQt+RNzuadI
	buWYFxpUNB4wXj9IztHkFf5NB6W2//cFBIYTO07w5frRNKDE1Q7GpXjtSj1QgAes5n6q3a6/hku
	BGjFDuMru7ZsVI3bCbhtOtqygI6ROPc9YZYQl
X-Google-Smtp-Source: AGHT+IGF3VENnshqQcApg+O/wjOuPYywblLF9c/PO9GX1CsUXA48nDaHFlPvXqTRUPIpQ75kg493PggsfmaoNGiJqu4=
X-Received: by 2002:a25:9b05:0:b0:dcd:2f89:6aac with SMTP id
 y5-20020a259b05000000b00dcd2f896aacmr820996ybn.10.1711670419054; Thu, 28 Mar
 2024 17:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240328145323.68872-1-tursulin@igalia.com>
In-Reply-To: <20240328145323.68872-1-tursulin@igalia.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 28 Mar 2024 17:00:06 -0700
Message-ID: <CABdmKX3V3HGA4mNQvqHqhcLqyr-A5kJK8v9vmuDybRvV-KsiOg@mail.gmail.com>
To: Tvrtko Ursulin <tursulin@igalia.com>
X-Rspamd-Queue-Id: BCDDE3F087
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.177:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AZCENJZHZCMXSMN2DBYA6Q3BYEIN42NS
X-Message-ID-Hash: AZCENJZHZCMXSMN2DBYA6Q3BYEIN42NS
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Tvrtko Ursulin <tursulin@ursulin.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Do not build debugfs related code when !CONFIG_DEBUG_FS
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AZCENJZHZCMXSMN2DBYA6Q3BYEIN42NS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXIgMjgsIDIwMjQgYXQgNzo1M+KAr0FNIFR2cnRrbyBVcnN1bGluIDx0dXJzdWxp
bkBpZ2FsaWEuY29tPiB3cm90ZToNCj4NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR1cnN1bGlu
QHVyc3VsaW4ubmV0Pg0KPg0KPiBUaGVyZSBpcyBubyBwb2ludCBpbiBjb21waWxpbmcgaW4gdGhl
IGxpc3QgYW5kIG11dGV4IG9wZXJhdGlvbnMgd2hpY2ggYXJlDQo+IG9ubHkgdXNlZCBmcm9tIHRo
ZSBkbWEtYnVmIGRlYnVnZnMgY29kZSwgaWYgZGVidWdmcyBpcyBub3QgY29tcGlsZWQgaW4uDQo+
DQo+IFB1dCB0aGUgY29kZSBpbiBxdWVzdGlvbnMgYmVoaW5kIHNvbWUga2NvbmZpZyBndWFyZHMg
YW5kIHNvIHNhdmUgc29tZSB0ZXh0DQo+IGFuZCBtYXliZSBldmVuIGEgcG9pbnRlciBwZXIgb2Jq
ZWN0IGF0IHJ1bnRpbWUgd2hlbiBub3QgZW5hYmxlZC4NCj4NCj4gU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR1cnN1bGluQHVyc3VsaW4ubmV0Pg0KDQpSZXZpZXdlZC1ieTogVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
