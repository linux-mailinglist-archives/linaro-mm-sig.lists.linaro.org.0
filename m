Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD0630FDBF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 21:09:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C50FD6186A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 20:09:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AFD2361726; Thu,  4 Feb 2021 20:09:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2ECC560EE1;
	Thu,  4 Feb 2021 20:09:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F23C7609A8
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 20:09:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D7E0760EE1; Thu,  4 Feb 2021 20:09:20 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by lists.linaro.org (Postfix) with ESMTPS id E200C609A8
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 20:09:19 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id a12so4616432qkh.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 12:09:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n3MAu1N2zejjEBwZWxASgX9jIdMC53t0pYKMsc1ppNk=;
 b=h4t1rv6ydPeL7mwEQ29vZp/ROKsgQEjP7EClOACm7Ma3s7eB7Jjqq5t3VutfXaXndK
 92Y2Lizrla76cPghXX7Z3XOZ/J79cenMSW0OhfFTBzFk5rLeQQk2WEyb/Eav/O2mCv4n
 eoeZd//bpnPtAJKx+JtVMQn6as1SsWPYHlm3vRDRpb8mzxM6k4aZRwcaFo4yePTU7fMe
 moLLKlwvq2Rez9zMZKFxx64Tc91d4uBzymo/vRTNi3FFJ5xEvosOj8jmoJQNmDK1aP0W
 hIleidRfp3zsZbL9ix6CouUi4bBEs1NLg7Y8+QFWH3J/HwVwVpYgzYJl487B4IDp5bIa
 faaw==
X-Gm-Message-State: AOAM530hK0iD8lk8ehpZCvK0vg3nlpKckeSxOeiuL0RF8ymU1BXWaQ59
 k6bmaZDb/Cn188mLjpM/dQX4eg==
X-Google-Smtp-Source: ABdhPJwxkPhU5yCUGh2nhqN1PfCoHbyAYILljpnCVhMrLSVlD/QpbVxxtrM7Ce+Cd6yNcY/Mawl7Pw==
X-Received: by 2002:a37:6f06:: with SMTP id k6mr924841qkc.458.1612469359555;
 Thu, 04 Feb 2021 12:09:19 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-162-115-133.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.115.133])
 by smtp.gmail.com with ESMTPSA id s129sm5985441qkh.37.2021.02.04.12.09.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Feb 2021 12:09:19 -0800 (PST)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1l7kwI-003b1z-H9; Thu, 04 Feb 2021 16:09:18 -0400
Date: Thu, 4 Feb 2021 16:09:18 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210204200918.GA4718@ziepe.ca>
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
 <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
 <20210204183808.GY4718@ziepe.ca>
 <CAKMK7uFBzF00zTzAE5b7PJFUfmxp5ExbSQxfcOfd_P6dPm7k9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uFBzF00zTzAE5b7PJFUfmxp5ExbSQxfcOfd_P6dPm7k9A@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Require VM_SPECIAL vma
	for mmap
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

T24gVGh1LCBGZWIgMDQsIDIwMjEgYXQgMDg6NTk6NTlQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKCj4gU28gSSB0aGluayBqdXN0IGNoZWNraW5nIGZvciBWTV9QRk5NQVAgYWZ0ZXIgdGhl
IHZtYSBpcyBzZXQgdXAgc2hvdWxkCj4gYmUgZW5vdWdoIHRvIGd1YXJhbnRlZSB3ZSdsbCBvbmx5
IGhhdmUgcHRlX3NwZWNpYWwgcHRlcyBpbiB0aGVyZSwKPiBldmVyLiBCdXQgSSdtIG5vdCBzdXJl
LCB0aGlzIHN0dWZmIGFsbCBpc24ndCByZWFsbHkgZG9jdW1lbnRlZCBtdWNoCj4gYW5kIHRoZSBj
b2RlIGlzIHNvbWV0aW1lcyBhIG1hemUgKHRvIG1lIGF0IGxlYXN0KS4KClllcywgdGhhdCBtYWtl
cyBzZW5zZS4gVk1fUEZOTUFQIGFuZCAhVk1fTUlYRURNQVAgc2VlbXMgbGlrZSB0aGUgcmlnaHQK
Y2hlY2sgYWZ0ZXIgdGhlIFZNQSBpcyBwb3B1bGF0ZWQKCkJ1dCBob3cgZG8geW91IHN0dWZmIHNw
ZWNpYWwgcGZucyBpbnRvIGEgVk1BIG91dHNpZGUgdGhlIGZhdWx0CmhhbmRsZXI/CgpKYXNvbgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
