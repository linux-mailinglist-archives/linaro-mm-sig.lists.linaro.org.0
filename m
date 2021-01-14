Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB052F55B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jan 2021 02:04:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7961617D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jan 2021 01:04:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D9C966672F; Thu, 14 Jan 2021 01:04:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65AAE666E9;
	Thu, 14 Jan 2021 01:04:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 820B160813
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 01:04:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7073F666E9; Thu, 14 Jan 2021 01:04:34 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by lists.linaro.org (Postfix) with ESMTPS id 9EC2D60813
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 01:04:33 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id r4so2046919pls.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 17:04:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=VpmEfhmuE4m3lCR0CbzUbqFZms+Fz8wndQrnmUOwqpU=;
 b=ntaXx9hFCjhYOrpnlEWtytG40GyQugABL7znxffrHxGBFEiDikD37aHFxb7LYaJlYo
 kV53U2WnI/JzR3hD/3Nbis1EjZmozNuOpQz3McPXnkE3+PoECYiZL5lmlZ3qA1EAcYeK
 4wKx3U+6qzLeM9gZlmXsqHflD4r0CnMxJzeXgtE2rk7BYUvSstHAwk+0H5E+kpTDyh5Y
 Yjwqtq39o3F7mR8GEiCJBPHbvdFXDgHomDE4WmzXY5vnTgc5mrFx8u898gfsY9Z30vH4
 +FhVUkHGO++lOBeVlRZOgz8Kf1Y0PAheRyggeAbaM5TaeFwzV6nu+xbGCwP5pHo2RsJe
 +A2A==
X-Gm-Message-State: AOAM5338eAUeSINI2E0OvK/t4dpam+p3agnR/cD0tGLg31NOl94ygf2v
 PisWFV3tZOkQ50BnXaKNUi0=
X-Google-Smtp-Source: ABdhPJwrJ8Isxj4nRytmMfOvMREHmP4joIOQKLfG5NRnAzquyOfiEt2ltmtABLIC4FEuwymZgPSspw==
X-Received: by 2002:a17:90a:f2c6:: with SMTP id
 gt6mr2130111pjb.35.1610586272925; 
 Wed, 13 Jan 2021 17:04:32 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id h1sm3901522pgj.59.2021.01.13.17.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Jan 2021 17:04:31 -0800 (PST)
Date: Wed, 13 Jan 2021 17:04:29 -0800
From: Minchan Kim <minchan@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <X/+Yne/3X3jvdCj0@google.com>
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-5-minchan@kernel.org>
 <23b60450-b6ac-447b-4a61-fc4649c3a390@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23b60450-b6ac-447b-4a61-fc4649c3a390@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v3 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBKYW4gMTIsIDIwMjEgYXQgMDc6Mzg6NDBQTSAtMDgwMCwgUmFuZHkgRHVubGFwIHdy
b3RlOgo+IE9uIDEvMTIvMjEgNToyMSBQTSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiArY29uZmln
IERNQUJVRl9IRUFQU19DSFVOSwo+ID4gKwlib29sICJETUEtQlVGIENIVU5LIEhlYXAiCj4gPiAr
CWRlcGVuZHMgb24gRE1BQlVGX0hFQVBTICYmIERNQV9DTUEKPiA+ICsJaGVscAo+ID4gKwkgIENo
b29zZSB0aGlzIG9wdGlvbiB0byBlbmFibGUgZG1hLWJ1ZiBDSFVOSyBoZWFwLiBUaGlzIGhlYXAg
aXMgYmFja2VkCj4gPiArCSAgYnkgdGhlIENvbnRpZ3VvdXMgTWVtb3J5IEFsbG9jYXRvciAoQ01B
KSBhbmQgYWxsb2NhdGVzIHRoZSBidWZmZXJzIHRoYXQKPiA+ICsJICBhcnJhbmdlZCBpbnRvIGEg
bGlzdCBvZiBmaXhlZCBzaXplIGNodW5rcyB0YWtlbiBmcm9tIENNQS4KPiAKPiBtYXliZToKPiAJ
ICBhcmUgYXJyYW5nZWQgaW50bwoKTGV0IG1lIGZpeCBpdC4KClRoYW5rcywgUmFuZHkuIApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
