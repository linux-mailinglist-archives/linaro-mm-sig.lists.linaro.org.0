Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B514E5687
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Mar 2022 17:32:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 110DC3F05A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Mar 2022 16:32:48 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by lists.linaro.org (Postfix) with ESMTPS id 91A283EE36
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 16:32:44 +0000 (UTC)
Received: by mail-qv1-f45.google.com with SMTP id r1so1595910qvr.12
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 09:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=7LH/BAJ5JIiAI3E0xe273jWZ+iAloz6/lGJSM6J+7qc=;
        b=UUg+s18BivN7Ydyj2Ln4yb45sBSGsRz/zT14LWD4Y+rRELLyXCvQHk7hpbcgzcn9ni
         iy7BZaBsQjGIOpygvNMl82NGgay+S5LVTg5lmNUc78+cJgwEsRZ0B9XrcRyZabJgrvNA
         cq0g3tEKC3UHqTl2QJGv7BrfJAQRwk3P5WA6WtnGGrBfcEYTK5TWAQjyOD1Prb489rZZ
         XJ5aS0AX8Q52whoJ//Ckj0x+hXg66HJEC3iA3mAgAtkYr21rDnaxQAKiQ94mV0LftGSU
         82uSFpw5H/NuKHm6o6yJA9aFV8Bewpep2O2QYCeJPO5wDvtPvcrUm13o9et24+K65FO0
         0Irg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=7LH/BAJ5JIiAI3E0xe273jWZ+iAloz6/lGJSM6J+7qc=;
        b=fbZp+mNNoZcqzTwSLNZqDMFeBVo1wai9eJ0UolGTkurM1Mpb/gHADJn6Xb2ETWsqZz
         g1Uvg8hs68L2Wmuv7ctPg4yWsIBgRiJdK8NBpWDKgR91I7MpyLM4mKu65DoYfv2dyo6+
         9JxiWDkES1kkgjjKOucZ7vvS6mooDKDr2yoicbnVbZbptWPTwD2gN21uGEVDoTaZyGOf
         /ZlKtzGjO8fmSvPsBAeKPdtigTiQ+uqxQ0Tt5Ro+YrWX+oGbDoGZt+l8bidwno1ObCF7
         QojcuKJjsvBhDV1eweBqrVKKSTQ3ky1Y7RZEihm8RBsdnQY/THuxEwzXGHLdcCH03AOO
         rSDQ==
X-Gm-Message-State: AOAM530Sp81lW5BG9UcIzJbpdR1/dsW3bhbLSyNDyov76rd+8MTlIFgw
	U0yWbxEBv8aNJEA1kZcUPUhofA==
X-Google-Smtp-Source: ABdhPJyZieS4yH7sj5HKr466jKN3HJ6IQr0Aix1wpCOMBxPMNqtld1II12OSbI55/DAsq2dmJpfpNg==
X-Received: by 2002:ad4:5a11:0:b0:441:1485:33ff with SMTP id ei17-20020ad45a11000000b00441148533ffmr340193qvb.127.1648053164217;
        Wed, 23 Mar 2022 09:32:44 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-113-129.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.113.129])
        by smtp.gmail.com with ESMTPSA id h206-20020a379ed7000000b0067b5192da4csm214905qke.12.2022.03.23.09.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 09:32:43 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1nX3uc-004xPv-BA; Wed, 23 Mar 2022 13:32:42 -0300
Date: Wed, 23 Mar 2022 13:32:42 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20220323163242.GJ64706@ziepe.ca>
References: <20220321135856.1331-1-christian.koenig@amd.com>
 <20220321135856.1331-4-christian.koenig@amd.com>
 <Yjse+S0bf4P6QTfu@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yjse+S0bf4P6QTfu@phenom.ffwll.local>
Message-ID-Hash: C3QHM55SJY5MFJCSO3M4J6LNOPIPYZJR
X-Message-ID-Hash: C3QHM55SJY5MFJCSO3M4J6LNOPIPYZJR
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Leon Romanovsky <leon@kernel.org>, Maor Gottlieb <maorg@nvidia.com>, Gal Pressman <galpress@amazon.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/23] RDMA: use dma_resv_wait() instead of extracting the fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C3QHM55SJY5MFJCSO3M4J6LNOPIPYZJR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgMjMsIDIwMjIgYXQgMDI6MjI6MDFQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToNCj4gT24gTW9uLCBNYXIgMjEsIDIwMjIgYXQgMDI6NTg6MzdQTSArMDEwMCwgQ2hyaXN0
aWFuIEvDtm5pZyB3cm90ZToNCj4gPiBVc2UgZG1hX3Jlc3Zfd2FpdCgpIGluc3RlYWQgb2YgZXh0
cmFjdGluZyB0aGUgZXhjbHVzaXZlIGZlbmNlIGFuZA0KPiA+IHdhaXRpbmcgb24gaXQgbWFudWFs
bHkuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGZmd2xsLmNoPg0KPiA+IENjOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4N
Cj4gDQo+IEphc29uLCBjYW4geW91IGFjayB0aGlzIGZvciBtZXJnaW5nIHRocm91Z2ggZHJtIHRy
ZWVzIHBsZWFzZT8NCg0KU3VyZSwgaXQgbG9va3MgdHJpdmlhbCwgYnV0IEkgZGlkbid0IHNlZSB0
aGUgd2hvbGUgc2VyaWVzOg0KDQpBY2tlZC1ieTogSmFzb24gR3VudGhvcnBlIDxqZ2dAbnZpZGlh
LmNvbT4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
