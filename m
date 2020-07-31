Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B133234BAC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Jul 2020 21:38:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68776665A6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Jul 2020 19:38:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58857665E0; Fri, 31 Jul 2020 19:38:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 520E5665BE;
	Fri, 31 Jul 2020 19:38:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D705B665A5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Jul 2020 19:38:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C2B7A665BE; Fri, 31 Jul 2020 19:38:20 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by lists.linaro.org (Postfix) with ESMTPS id E5DA3665A5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Jul 2020 19:38:19 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id b22so1755202oic.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Jul 2020 12:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cp3GygB7F0b136lUhJrRkyNW4lR2kBcOJ00svd2oGS0=;
 b=XpifeOIlCf/qAlhQ3l20n90y7vjLA+ujIWzrnSHA5MBLFclBdmVWS8gAzd7xI4shUp
 tbAScJsy+lZ3POd2vqZZNm+NNFaYR+EtejHQavQaxt8uR4xUjIzHHPPz+HuBQxyFxsf3
 d3J7kNc1cmkd1UmMNhvX/Jda4W3ZTpfdpVJ9pLOXOiw8mLJcY/eZlGIzee4XYFJRSDEH
 Ir0enYTJPnD+VXfyFjGmTAlA7ZS2iLHhh7sQKjXeqdi2rERpNljRO7rNRYDzEDqLTPNX
 UIqDx86304crQS4XoaR+8UQJiw9/AC89CXtdl9YrjsXCGxO7nzyOLhj+fzNLlhcQklng
 cpXg==
X-Gm-Message-State: AOAM532YalQq/rcwrSJWJzQ9ERhFKel79JQATjXfB+EWOd9XH2w80c4i
 YoqUtffUEjKuUXEwktVsfjFyQavKFO82gPa3GCSO5iDI
X-Google-Smtp-Source: ABdhPJxRdmWM2JVXS+XJYjkXLwgmye2vV//B6mH9jWnOac/U12I6qldoTC6vypuWGHyySsNeb29bO+jhRX9xVpW97f0=
X-Received: by 2002:aca:b5c3:: with SMTP id e186mr4344099oif.10.1596224299067; 
 Fri, 31 Jul 2020 12:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <1594948208-4739-1-git-send-email-hayashi.kunihiko@socionext.com>
 <CALAqxLXuJQOCXcpyWwyBFZGFK_dEgG0edEEf2=vOpAw6Ng8mBQ@mail.gmail.com>
 <eacfc713-e98a-78fa-b316-3943600813d0@socionext.com>
In-Reply-To: <eacfc713-e98a-78fa-b316-3943600813d0@socionext.com>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 31 Jul 2020 12:38:07 -0700
Message-ID: <CALAqxLVzUnc5CH_pA7h3ygXFPRz05KtNZx+_M3eAXXrm7hhGBQ@mail.gmail.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christian Koenig <christian.koenig@amd.com>,
 lkml <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Brian Starkey <Brian.Starkey@arm.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Introduce
 dma_heap_add_cma() for non-default CMA heap
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

T24gRnJpLCBKdWwgMzEsIDIwMjAgYXQgMjozMiBBTSBLdW5paGlrbyBIYXlhc2hpCjxoYXlhc2hp
Lmt1bmloaWtvQHNvY2lvbmV4dC5jb20+IHdyb3RlOgo+IE9uIDIwMjAvMDcvMjkgNDoxNywgSm9o
biBTdHVsdHogd3JvdGU6Cj4gPiBEbyB5b3UgaGF2ZSBhIHVwc3RyZWFtIGRyaXZlciB0aGF0IHlv
dSBwbGFuIHRvIG1ha2UgdXNlIHRoaXMgbmV3IGNhbGw/Cj4KPiBVbmZvcnR1bmF0ZWx5IEkgZG9u
J3QgaGF2ZSBhbiB1cHN0cmVhbSBkcml2ZXIgdXNpbmcgdGhpcyBjYWxsLgo+Cj4gVGhpcyBjYWxs
IGlzIGNhbGxlZCBmcm9tIGRtYS1idWYgaGVhcHMgImltcG9ydGVyIiBvciAiY3VzdG9tZXIiLAo+
IGFuZCBJIG9ubHkgbWFkZSBhbiBleGFtcGxlIChkbyBub3RoaW5nKSBpbXBvcnRlciBkcml2ZXIK
PiB0byB0ZXN0IHRoZSBjYWxsLgo+Cj4gPiBXZSB3YW50IHRvIGhhdmUgaW4tdHJlZSB1c2VycyBv
ZiBjb2RlIGFkZGVkLgo+Cj4gSSB0aGluayB0aGlzIGlzIGEgZ2VuZXJpYyB3YXkgdG8gdXNlIG5v
bi1kZWZhdWx0IENNQSBoZWFwcywgaG93ZXZlciwKPiB3ZSBuZWVkIGluLXRyZWUgImltcG9ydGVy
IiBkcml2ZXJzIHRvIHdhbnQgdG8gdXNlIG5vbi1kZWZhdWx0IENNQSBoZWFwcy4KPiBJIGRvbid0
IGZpbmQgaXQgZnJvbSBub3cuCj4KClllYSwgSSBhbmQgYWdhaW4sIEkgZG8gYWdyZWUgdGhpcyBp
cyBmdW5jdGlvbmFsaXR5IHRoYXQgd2lsbCBiZQpuZWVkZWQuIEJ1dCB3ZSdsbCBuZWVkIHRvIHdh
aXQgZm9yIGEgdXNlciAoY2FtZXJhIGRyaXZlciwgZXRjIHdoaWNoCndvdWxkIHV0aWxpemUgdGhl
IHJlc2VydmVkIGNtYSByZWdpb24pIGJlZm9yZSB3ZSBjYW4gbWVyZ2UgaXQKdXBzdHJlYW0uIDoo
ICBEbyBsZXQgbWUga25vdyBpZiB5b3UgaGF2ZSBhbiBvdXQgb2YgdHJlZSBkcml2ZXIgdGhhdAp3
b3VsZCBtYWtlIHVzZSBvZiBpdCwgYW5kIHdlIGNhbiBzZWUgd2hhdCBjYW4gYmUgZG9uZSB0byBo
ZWxwIHVwc3RyZWFtCnRoaW5ncy4KCnRoYW5rcwotam9obgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
