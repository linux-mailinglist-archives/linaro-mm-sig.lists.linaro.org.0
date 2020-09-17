Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B989326DAFE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 14:04:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFC44614FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 12:04:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D4BC7666DE; Thu, 17 Sep 2020 12:04:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6966A666DC;
	Thu, 17 Sep 2020 12:03:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 82267614FE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 12:03:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6FC16666DC; Thu, 17 Sep 2020 12:03:55 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by lists.linaro.org (Postfix) with ESMTPS id E8E6C614FE
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 12:03:53 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id i26so2849842ejb.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 05:03:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=4IJg+4CZG5b0foFWn90FskEpijf8EknkkB/FydWSevk=;
 b=fj3LL4OrUm9vm2pB8u+kukYVQZH0thwDkvGQpeAtIm4X57dOQ5Cd4oeeuJZdqbtNlZ
 mnTn7UtL0KuToSg+S2rrvK31X3g8eV352kVqVanSqqVSn1Ru8NXeJvakkENpWXphJn8u
 8y4OsF1aXGOnZ26nzwKqUVbzK9naKgcXvPH1ofxdpgHEw76FS2urtBTMgXQMSYXUdJW8
 gOAexGqsWbaaW+tZXU4dLp7LPUFgZ2fOVdbsVUorR3LUyq5SDwWlqUsYCDG7E9ffzJGv
 +iStL0P/SkPxyQPnXcpoSj1ZWx1BehD3Fnv/aJ7WduRs2Kz5XsnYMWYtGTAz3wToscxe
 d62A==
X-Gm-Message-State: AOAM532Fecl/TiFRct3MkNqUPKQsffe+ZQOkZ9NVDo+izbK2DDe7xi0p
 KKsuuxCqA/yhikUa8wqt4cs=
X-Google-Smtp-Source: ABdhPJxQ/GtwTry9ihPN5KEPP052Fm0uzzwbkUZn/afLWALJ8NH4ADJ6T2No/Zdu/rqor4uEEJWmkA==
X-Received: by 2002:a17:906:d14e:: with SMTP id
 br14mr28329723ejb.299.1600344233035; 
 Thu, 17 Sep 2020 05:03:53 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id o3sm16325516edt.79.2020.09.17.05.03.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Sep 2020 05:03:50 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>, Daniel Vetter <daniel@ffwll.ch>
References: <20200914140632.GD1221970@ziepe.ca>
 <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
 <20200916095359.GD438822@phenom.ffwll.local> <20200916140710.GA8409@ziepe.ca>
 <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
 <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
 <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
 <CAKMK7uHJNRzCJfWVSmMrLmGXE0qo+OCXiMd+zPTOkeG2pnVrmQ@mail.gmail.com>
 <8d8693db-a3f0-4f5f-3e32-57d23ca620f8@amd.com>
 <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
 <20200917113110.GE8409@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
Date: Thu, 17 Sep 2020 14:03:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917113110.GE8409@ziepe.ca>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
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

QW0gMTcuMDkuMjAgdW0gMTM6MzEgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gVGh1LCBT
ZXAgMTcsIDIwMjAgYXQgMTA6MDk6MTJBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPgo+
PiBZZWFoLCBidXQgaXQgZG9lc24ndCB3b3JrIHdoZW4gZm9yd2FyZGluZyBmcm9tIHRoZSBkcm0g
Y2hhcmRldiB0byB0aGUKPj4gZG1hLWJ1ZiBvbiB0aGUgaW1wb3J0ZXIgc2lkZSwgc2luY2UgeW91
J2QgbmVlZCBhIHRvbiBvZiBkaWZmZXJlbnQKPj4gYWRkcmVzcyBzcGFjZXMuIEFuZCB5b3Ugc3Rp
bGwgcmVseSBvbiB0aGUgY29yZSBjb2RlIHBpY2tpbmcgdXAgeW91cgo+PiBwZ29mZiBtYW5nbGlu
Zywgd2hpY2ggZmVlbHMgYWJvdXQgYXMgcmlza3kgdG8gbWUgYXMgdGhlIHZtYSBmaWxlCj4+IHBv
aW50ZXIgd3JhbmdsaW5nIC0gaWYgaXQncyBub3QgY29uc2lzdGVudGx5IGFwcGxpZWQgdGhlIHJl
dmVyc2UgbWFwCj4+IGlzIHRvYXN0IGFuZCB1bm1hcF9tYXBwaW5nX3JhbmdlIGRvZXNuJ3Qgd29y
ayBjb3JyZWN0bHkgZm9yIG91ciBuZWVkcy4KPiBJIHdvdWxkIHRoaW5rIHRoZSBwZ29mZiBoYXMg
dG8gYmUgdHJhbnNsYXRlZCBhdCB0aGUgc2FtZSB0aW1lIHRoZQo+IHZtLT52bV9maWxlIGlzIGNo
YW5nZWQ/Cj4KPiBUaGUgb3duZXIgb2YgdGhlIGRtYV9idWYgc2hvdWxkIGhhdmUgb25lIHZpcnR1
YWwgYWRkcmVzcyBzcGFjZSBhbmQgRkQsCj4gYWxsIGl0cyBkbWEgYnVmcyBzaG91bGQgYmUgbGlu
a2VkIHRvIGl0LCBhbmQgYWxsIHBnb2ZmcyB0cmFuc2xhdGVkIHRvCj4gdGhhdCBzcGFjZS4KClll
YWgsIHRoYXQgaXMgZXhhY3RseSBsaWtlIGFtZGdwdSBpcyBkb2luZyBpdC4KCkdvaW5nIHRvIGRv
Y3VtZW50IHRoYXQgc29tZWhvdyB3aGVuIEknbSBkb25lIHdpdGggVFRNIGNsZWFudXBzLgoKQ2hy
aXN0aWFuLgoKPgo+IEphc29uCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdAo+IExpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwo+IGh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
