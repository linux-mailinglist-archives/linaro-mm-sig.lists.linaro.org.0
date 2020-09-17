Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B521126DA3A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 13:31:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0BB5666D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 11:31:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C9B68666DC; Thu, 17 Sep 2020 11:31:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E80D2666DD;
	Thu, 17 Sep 2020 11:31:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4B522666D9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 11:31:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 38D83666DD; Thu, 17 Sep 2020 11:31:14 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by lists.linaro.org (Postfix) with ESMTPS id C4C99666D9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 11:31:12 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id o5so1751455qke.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 04:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nZ4b46gqz9ZMj0oSIJhPTVW/Re5tOMNlNB8GqNDw+ps=;
 b=qev4j6LL7p06kK2rnp6igYJPfNRsbqI4fMCLgfNJZ7g8RoYN56f1a5hLlzmeN7Lqgq
 cRWgjVYhL0oiJEKk0YPZ1T74aJBxIsLABSzL3GhVAYa+RT4tH6tVYFJH4A/oIUKg7Y4J
 P9X9V6ky1Ms4gkIs8YNJkfgSTNsJYQUpZGtml3Wgvwn/6t+yM5DtDXfFNBJQSxft12WC
 QqRXRmu6OjTQk16LtoI08Am0btlO2qF2Zb/y7409hXomZDioTcdx5P+mOBnMfdM7l16Z
 0u+0vdpcIWa9yBtpaMKocZ/ivxm1Tx9QO+DzmZv2C9R6R1J5+6dQC6kS95ujsQWQFeFV
 eAIQ==
X-Gm-Message-State: AOAM5337Bs0toSIyZbJS+CSfgXQX8Ll39PdZRaq1uag088pZlKWsBEtO
 piNYES0rOlcPvwuf7myuiuGp+w==
X-Google-Smtp-Source: ABdhPJw56svcIeAcnROGFmKsbmVXol3TtQXkSVG9MOLdgGF5odtIzCjySvHoBe12rG9qsPWph3HcsA==
X-Received: by 2002:a37:814:: with SMTP id 20mr27843480qki.142.1600342272474; 
 Thu, 17 Sep 2020 04:31:12 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id y73sm21206411qkb.23.2020.09.17.04.31.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 04:31:11 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kIs86-000Q7S-Qt; Thu, 17 Sep 2020 08:31:10 -0300
Date: Thu, 17 Sep 2020 08:31:10 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200917113110.GE8409@ziepe.ca>
References: <20200914140632.GD1221970@ziepe.ca>
 <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
 <20200916095359.GD438822@phenom.ffwll.local>
 <20200916140710.GA8409@ziepe.ca>
 <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
 <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
 <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
 <CAKMK7uHJNRzCJfWVSmMrLmGXE0qo+OCXiMd+zPTOkeG2pnVrmQ@mail.gmail.com>
 <8d8693db-a3f0-4f5f-3e32-57d23ca620f8@amd.com>
 <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
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

T24gVGh1LCBTZXAgMTcsIDIwMjAgYXQgMTA6MDk6MTJBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKCj4gWWVhaCwgYnV0IGl0IGRvZXNuJ3Qgd29yayB3aGVuIGZvcndhcmRpbmcgZnJvbSB0
aGUgZHJtIGNoYXJkZXYgdG8gdGhlCj4gZG1hLWJ1ZiBvbiB0aGUgaW1wb3J0ZXIgc2lkZSwgc2lu
Y2UgeW91J2QgbmVlZCBhIHRvbiBvZiBkaWZmZXJlbnQKPiBhZGRyZXNzIHNwYWNlcy4gQW5kIHlv
dSBzdGlsbCByZWx5IG9uIHRoZSBjb3JlIGNvZGUgcGlja2luZyB1cCB5b3VyCj4gcGdvZmYgbWFu
Z2xpbmcsIHdoaWNoIGZlZWxzIGFib3V0IGFzIHJpc2t5IHRvIG1lIGFzIHRoZSB2bWEgZmlsZQo+
IHBvaW50ZXIgd3JhbmdsaW5nIC0gaWYgaXQncyBub3QgY29uc2lzdGVudGx5IGFwcGxpZWQgdGhl
IHJldmVyc2UgbWFwCj4gaXMgdG9hc3QgYW5kIHVubWFwX21hcHBpbmdfcmFuZ2UgZG9lc24ndCB3
b3JrIGNvcnJlY3RseSBmb3Igb3VyIG5lZWRzLgoKSSB3b3VsZCB0aGluayB0aGUgcGdvZmYgaGFz
IHRvIGJlIHRyYW5zbGF0ZWQgYXQgdGhlIHNhbWUgdGltZSB0aGUKdm0tPnZtX2ZpbGUgaXMgY2hh
bmdlZD8KClRoZSBvd25lciBvZiB0aGUgZG1hX2J1ZiBzaG91bGQgaGF2ZSBvbmUgdmlydHVhbCBh
ZGRyZXNzIHNwYWNlIGFuZCBGRCwKYWxsIGl0cyBkbWEgYnVmcyBzaG91bGQgYmUgbGlua2VkIHRv
IGl0LCBhbmQgYWxsIHBnb2ZmcyB0cmFuc2xhdGVkIHRvCnRoYXQgc3BhY2UuCgpKYXNvbgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
