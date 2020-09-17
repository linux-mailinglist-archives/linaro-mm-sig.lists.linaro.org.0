Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1563026DB71
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 14:25:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46616666E0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 12:25:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3A682666DE; Thu, 17 Sep 2020 12:25:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AEA8666D9;
	Thu, 17 Sep 2020 12:24:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 36E36614FE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 12:24:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1C637666D9; Thu, 17 Sep 2020 12:24:34 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by lists.linaro.org (Postfix) with ESMTPS id E947B614FE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 12:24:32 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id l17so2236801edq.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 05:24:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=GBPWnK+O45hDPiwD6Yl2FVueQas8+06W2RHndFOU4x0=;
 b=k5btdmXn6T3S/9HyOCJ+bJZoIKUcPVwqgh+2w6dFILS9edjBMSL4Z9s5yQNfNRKpsm
 er/ggmVwLeXKeg3pKSfqSS3GOZEpouR+aLAZW8tUhK4OHizCDu2N9XcEh2WWnwPM/XMU
 6aJUjFUZQAk5jq4ODM8Fe60xywpKLH8ZAPrHwTvRoAsAk8rQmDOQHnsl71L9uCxQuJ0p
 qDhyn52WPhyshs4J7tm/CozQgMdFFeRs4Y6O2dfUOfkcS6b/UOpDVo2DNfpk8Eq/JhwL
 FVMmjzxoKfPYLjfDH4wDbsWHakbUS5weAX77RgjFFLIH4SECzqB47z/hV9wRXno00GAm
 Gjng==
X-Gm-Message-State: AOAM5305KOt98KrESrOUfXQG0RXNwEFCpa7qJ6xqWyu0cHlAMVA84uAp
 SfesCE8pBY5zuzNwMK4aqBw=
X-Google-Smtp-Source: ABdhPJxjg1yiXefIk0NeL3VjLQ2zbCP7yoFRn/H/W2k2rNszWXwepBIqx8bZOzhUQkVeMcmckHNfJw==
X-Received: by 2002:a05:6402:1110:: with SMTP id
 u16mr32547477edv.253.1600345471990; 
 Thu, 17 Sep 2020 05:24:31 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id b5sm16198291edq.69.2020.09.17.05.24.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Sep 2020 05:24:31 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>, christian.koenig@amd.com
References: <20200916095359.GD438822@phenom.ffwll.local>
 <20200916140710.GA8409@ziepe.ca>
 <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
 <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
 <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
 <CAKMK7uHJNRzCJfWVSmMrLmGXE0qo+OCXiMd+zPTOkeG2pnVrmQ@mail.gmail.com>
 <8d8693db-a3f0-4f5f-3e32-57d23ca620f8@amd.com>
 <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
 <20200917113110.GE8409@ziepe.ca>
 <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
 <20200917121858.GF8409@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <d82f08ee-2dec-18e8-fb06-d26f18ed777a@gmail.com>
Date: Thu, 17 Sep 2020 14:24:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917121858.GF8409@ziepe.ca>
Content-Language: en-US
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
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTcuMDkuMjAgdW0gMTQ6MTggc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gVGh1LCBT
ZXAgMTcsIDIwMjAgYXQgMDI6MDM6NDhQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQW0gMTcuMDkuMjAgdW0gMTM6MzEgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4+PiBPbiBU
aHUsIFNlcCAxNywgMjAyMCBhdCAxMDowOToxMkFNICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3Rl
Ogo+Pj4KPj4+PiBZZWFoLCBidXQgaXQgZG9lc24ndCB3b3JrIHdoZW4gZm9yd2FyZGluZyBmcm9t
IHRoZSBkcm0gY2hhcmRldiB0byB0aGUKPj4+PiBkbWEtYnVmIG9uIHRoZSBpbXBvcnRlciBzaWRl
LCBzaW5jZSB5b3UnZCBuZWVkIGEgdG9uIG9mIGRpZmZlcmVudAo+Pj4+IGFkZHJlc3Mgc3BhY2Vz
LiBBbmQgeW91IHN0aWxsIHJlbHkgb24gdGhlIGNvcmUgY29kZSBwaWNraW5nIHVwIHlvdXIKPj4+
PiBwZ29mZiBtYW5nbGluZywgd2hpY2ggZmVlbHMgYWJvdXQgYXMgcmlza3kgdG8gbWUgYXMgdGhl
IHZtYSBmaWxlCj4+Pj4gcG9pbnRlciB3cmFuZ2xpbmcgLSBpZiBpdCdzIG5vdCBjb25zaXN0ZW50
bHkgYXBwbGllZCB0aGUgcmV2ZXJzZSBtYXAKPj4+PiBpcyB0b2FzdCBhbmQgdW5tYXBfbWFwcGlu
Z19yYW5nZSBkb2Vzbid0IHdvcmsgY29ycmVjdGx5IGZvciBvdXIgbmVlZHMuCj4+PiBJIHdvdWxk
IHRoaW5rIHRoZSBwZ29mZiBoYXMgdG8gYmUgdHJhbnNsYXRlZCBhdCB0aGUgc2FtZSB0aW1lIHRo
ZQo+Pj4gdm0tPnZtX2ZpbGUgaXMgY2hhbmdlZD8KPj4+Cj4+PiBUaGUgb3duZXIgb2YgdGhlIGRt
YV9idWYgc2hvdWxkIGhhdmUgb25lIHZpcnR1YWwgYWRkcmVzcyBzcGFjZSBhbmQgRkQsCj4+PiBh
bGwgaXRzIGRtYSBidWZzIHNob3VsZCBiZSBsaW5rZWQgdG8gaXQsIGFuZCBhbGwgcGdvZmZzIHRy
YW5zbGF0ZWQgdG8KPj4+IHRoYXQgc3BhY2UuCj4+IFllYWgsIHRoYXQgaXMgZXhhY3RseSBsaWtl
IGFtZGdwdSBpcyBkb2luZyBpdC4KPj4KPj4gR29pbmcgdG8gZG9jdW1lbnQgdGhhdCBzb21laG93
IHdoZW4gSSdtIGRvbmUgd2l0aCBUVE0gY2xlYW51cHMuCj4gQlRXLCB3aGlsZSBwZW9wbGUgYXJl
IGxvb2tpbmcgYXQgdGhpcywgaXMgdGhlcmUgYSB3YXkgdG8gZ28gZnJvbSBhIFZNQQo+IHRvIGEg
ZG1hX2J1ZiB0aGF0IG93bnMgaXQ/CgpPbmx5IGEgZHJpdmVyIHNwZWNpZmljIG9uZS4KCkZvciBU
VE0gZHJpdmVycyB2bWEtPnZtX3ByaXZhdGVfZGF0YSBwb2ludHMgdG8gdGhlIGJ1ZmZlciBvYmpl
Y3QuIE5vdCAKc3VyZSBhYm91dCB0aGUgZHJpdmVycyB1c2luZyBHRU0gb25seS4KCldoeSBhcmUg
eW91IGFza2luZz8KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBKYXNvbgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKPiBMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
