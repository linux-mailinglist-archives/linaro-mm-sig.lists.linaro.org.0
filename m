Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AC126DE58
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 16:36:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B19A60795
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 14:36:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1FF09666DD; Thu, 17 Sep 2020 14:36:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17C39666DC;
	Thu, 17 Sep 2020 14:35:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6A9D26069A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 14:35:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5F5A8666DC; Thu, 17 Sep 2020 14:35:54 +0000 (UTC)
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by lists.linaro.org (Postfix) with ESMTPS id 2DD526069A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 14:35:53 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id n133so2376091qkn.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 07:35:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4FMmUqw3Ogf5DWfrcaBYE+88tcXzyk3qcn9Gd5hl3YQ=;
 b=JbnRjkQbNOLkh39IhIN1ALH2DxVM9CHR/hLMrD5qNfdgj058LLhmndQC4K75qb5ymr
 EdvZI+mogpcwg9qXdO5/gTJaDKGJpSDYx+OeUUJ14LZdZQuU6tNtpPknpLWnNbCkZWbu
 9KTaVPGnZo4ay8BDrdYA4v+4GKmhmKBsS2KJM6JEN26RXL49dbCZNaseV62idMCumUUe
 JzDDQKaGq/M2Pkx182TUGFZES++f2/HifSKDUtCaofS/e4fpa3peaRWmiZRoWBU9qvgX
 vpt+k2Diu3Yj3uzM0wTKZGW9ceagy/jQ4VCBW9UXBEbCJwngK72cZ7izsZIrPn6b0lOb
 cJpg==
X-Gm-Message-State: AOAM530aVJulDNF49tDQa8HA1YJW4pdtFtytW9FhE2W1kFtUD1zVnTxo
 +PO/pVKaMjzYY6FDL+SEPOBBNtDBAyLG1SSg
X-Google-Smtp-Source: ABdhPJzS5DvFjFRz09F8HD5ZwD/CTVt6TV63hE1mZt++JvtsXfCWDtAegDUHikgXHQCiEAeg2s8xdA==
X-Received: by 2002:a05:620a:15ac:: with SMTP id
 f12mr27633534qkk.19.1600353352699; 
 Thu, 17 Sep 2020 07:35:52 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id m36sm20906770qtd.10.2020.09.17.07.35.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 07:35:52 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kIv0p-000VC1-Ed; Thu, 17 Sep 2020 11:35:51 -0300
Date: Thu, 17 Sep 2020 11:35:51 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: christian.koenig@amd.com
Message-ID: <20200917143551.GG8409@ziepe.ca>
References: <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
 <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
 <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
 <CAKMK7uHJNRzCJfWVSmMrLmGXE0qo+OCXiMd+zPTOkeG2pnVrmQ@mail.gmail.com>
 <8d8693db-a3f0-4f5f-3e32-57d23ca620f8@amd.com>
 <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
 <20200917113110.GE8409@ziepe.ca>
 <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
 <20200917121858.GF8409@ziepe.ca>
 <d82f08ee-2dec-18e8-fb06-d26f18ed777a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d82f08ee-2dec-18e8-fb06-d26f18ed777a@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Daniel Vetter <daniel@ffwll.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

T24gVGh1LCBTZXAgMTcsIDIwMjAgYXQgMDI6MjQ6MjlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxNy4wOS4yMCB1bSAxNDoxOCBzY2hyaWViIEphc29uIEd1bnRob3JwZToK
PiA+IE9uIFRodSwgU2VwIDE3LCAyMDIwIGF0IDAyOjAzOjQ4UE0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6Cj4gPiA+IEFtIDE3LjA5LjIwIHVtIDEzOjMxIHNjaHJpZWIgSmFzb24gR3Vu
dGhvcnBlOgo+ID4gPiA+IE9uIFRodSwgU2VwIDE3LCAyMDIwIGF0IDEwOjA5OjEyQU0gKzAyMDAs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4gPiBZZWFoLCBidXQgaXQgZG9l
c24ndCB3b3JrIHdoZW4gZm9yd2FyZGluZyBmcm9tIHRoZSBkcm0gY2hhcmRldiB0byB0aGUKPiA+
ID4gPiA+IGRtYS1idWYgb24gdGhlIGltcG9ydGVyIHNpZGUsIHNpbmNlIHlvdSdkIG5lZWQgYSB0
b24gb2YgZGlmZmVyZW50Cj4gPiA+ID4gPiBhZGRyZXNzIHNwYWNlcy4gQW5kIHlvdSBzdGlsbCBy
ZWx5IG9uIHRoZSBjb3JlIGNvZGUgcGlja2luZyB1cCB5b3VyCj4gPiA+ID4gPiBwZ29mZiBtYW5n
bGluZywgd2hpY2ggZmVlbHMgYWJvdXQgYXMgcmlza3kgdG8gbWUgYXMgdGhlIHZtYSBmaWxlCj4g
PiA+ID4gPiBwb2ludGVyIHdyYW5nbGluZyAtIGlmIGl0J3Mgbm90IGNvbnNpc3RlbnRseSBhcHBs
aWVkIHRoZSByZXZlcnNlIG1hcAo+ID4gPiA+ID4gaXMgdG9hc3QgYW5kIHVubWFwX21hcHBpbmdf
cmFuZ2UgZG9lc24ndCB3b3JrIGNvcnJlY3RseSBmb3Igb3VyIG5lZWRzLgo+ID4gPiA+IEkgd291
bGQgdGhpbmsgdGhlIHBnb2ZmIGhhcyB0byBiZSB0cmFuc2xhdGVkIGF0IHRoZSBzYW1lIHRpbWUg
dGhlCj4gPiA+ID4gdm0tPnZtX2ZpbGUgaXMgY2hhbmdlZD8KPiA+ID4gPiAKPiA+ID4gPiBUaGUg
b3duZXIgb2YgdGhlIGRtYV9idWYgc2hvdWxkIGhhdmUgb25lIHZpcnR1YWwgYWRkcmVzcyBzcGFj
ZSBhbmQgRkQsCj4gPiA+ID4gYWxsIGl0cyBkbWEgYnVmcyBzaG91bGQgYmUgbGlua2VkIHRvIGl0
LCBhbmQgYWxsIHBnb2ZmcyB0cmFuc2xhdGVkIHRvCj4gPiA+ID4gdGhhdCBzcGFjZS4KPiA+ID4g
WWVhaCwgdGhhdCBpcyBleGFjdGx5IGxpa2UgYW1kZ3B1IGlzIGRvaW5nIGl0Lgo+ID4gPiAKPiA+
ID4gR29pbmcgdG8gZG9jdW1lbnQgdGhhdCBzb21laG93IHdoZW4gSSdtIGRvbmUgd2l0aCBUVE0g
Y2xlYW51cHMuCj4gPiBCVFcsIHdoaWxlIHBlb3BsZSBhcmUgbG9va2luZyBhdCB0aGlzLCBpcyB0
aGVyZSBhIHdheSB0byBnbyBmcm9tIGEgVk1BCj4gPiB0byBhIGRtYV9idWYgdGhhdCBvd25zIGl0
Pwo+IAo+IE9ubHkgYSBkcml2ZXIgc3BlY2lmaWMgb25lLgoKU291bmRzIE9LCgo+IEZvciBUVE0g
ZHJpdmVycyB2bWEtPnZtX3ByaXZhdGVfZGF0YSBwb2ludHMgdG8gdGhlIGJ1ZmZlciBvYmplY3Qu
IE5vdCBzdXJlCj4gYWJvdXQgdGhlIGRyaXZlcnMgdXNpbmcgR0VNIG9ubHkuCgpXaHkgYXJlIGRy
aXZlcnMgaW4gY29udHJvbCBvZiB0aGUgdm1hPyBJIHdvdWxkIHRoaW5rIGRtYV9idWYgc2hvdWxk
IGJlCnRoZSB2bWEgb3duZXIuIElJUkMgbW9kdWxlIGxpZmV0aW1lIGNvcnJlY3RuZXNzIGVzc2Vu
dGlhbGx5IGhpbmdzIG9uCnRoZSBtb2R1bGUgb3duZXIgb2YgdGhlIHN0cnVjdCBmaWxlCgo+IFdo
eSBhcmUgeW91IGFza2luZz8KCkknbSB0aGlua2luZyBhYm91dCB1c2luZyBmaW5kX3ZtYSBvbiBz
b21ldGhpbmcgdGhhdCBpcyBub3QKZ2V0X3VzZXJfcGFnZXMoKSdhYmxlIHRvIGdvIHRvIHRoZSB1
bmRlcmx5aW5nIG9iamVjdCwgaW4gdGhpcyBjYXNlIGRtYQpidWYuCgpTbywgdXNlciBWQSAtPiBm
aW5kX3ZtYSAtPiBkbWFfYnVmIG9iamVjdCAtPiBkbWFfYnVmIG9wZXJhdGlvbnMgb24gdGhlCm1l
bW9yeSBpdCByZXByZXNlbnRzCgpKYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
