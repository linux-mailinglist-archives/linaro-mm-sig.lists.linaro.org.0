Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A2A324E74
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Feb 2021 11:46:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0994966787
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Feb 2021 10:46:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F27D86678A; Thu, 25 Feb 2021 10:46:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1A4366789;
	Thu, 25 Feb 2021 10:45:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E562166525
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 10:45:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D624966789; Thu, 25 Feb 2021 10:45:47 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id C09F066525
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 10:45:46 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id x16so4235912wmk.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 02:45:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3idtwS6zYmBRk0u2V+/NLyjIX5bD4fwV71S/p31/Emk=;
 b=ICUTqcMhmvKSYBbWxanp13/MP/HSK8AqRq0McrmOxiWOxyuSrx208ZadwjvgUShMlI
 8BZmITeZD+KRS2u2AD1AtFU1gsGs8DIXpfk/LqbOo34I3c7KDDYnvHbxPUTrYmD8jN+o
 qNvYto3FM+RETrgCmSMwNZC0YmU8/qwc/poMjnZso/6fry+O0NOoyH8dzmahc9whjjBo
 T2BqCy5L9NDuSkgp0Q214XDvyrrUEnLIShtkpxwJR5I5fYJH60xD2/5OS3YiLUJZR+y+
 5YcEimeF4Jiw13fQb5dqB+TKfbod/eW+NZUHQL7/j3Z8HxSUam27pQ30LGYxEbsaZjwY
 SYRw==
X-Gm-Message-State: AOAM533gNC+HyDtOZ5haqSD8/Wl7bBlbUZoxx/y81bB1A4RihpQODYFV
 88xVpJnj53aNXgXehct7ynSrBAHleE78Aw==
X-Google-Smtp-Source: ABdhPJxiL7xIc7cnoY5mDWFeLwU9JFNqQVi3g5zMbx77RZ3f+ZhOBSDI2s6aRAhBEpxtlkq3F4PzzA==
X-Received: by 2002:a05:600c:350a:: with SMTP id
 h10mr2644384wmq.142.1614249945915; 
 Thu, 25 Feb 2021 02:45:45 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a14sm9232064wrg.84.2021.02.25.02.45.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Feb 2021 02:45:45 -0800 (PST)
Date: Thu, 25 Feb 2021 11:45:43 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YDd/1xvDoctHWgdD@phenom.ffwll.local>
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
 <20210224184657.GR2643399@ziepe.ca>
 <b364d7e9-b323-e590-359d-32e067f3f5ee@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b364d7e9-b323-e590-359d-32e067f3f5ee@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require VM_PFNMAP vma for
 mmap
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

T24gVGh1LCBGZWIgMjUsIDIwMjEgYXQgMTE6MzA6MjNBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiAKPiAKPiBBbSAyNC4wMi4yMSB1bSAxOTo0NiBzY2hyaWViIEphc29uIEd1bnRo
b3JwZToKPiA+IE9uIFdlZCwgRmViIDI0LCAyMDIxIGF0IDA5OjQ1OjUxQU0gKzAxMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gPiAKPiA+ID4gSG0gSSBmaWd1cmVkIGV2ZXJ5b25lIGp1c3QgdXNl
cyBNQVBfU0hBUkVEIGZvciBidWZmZXIgb2JqZWN0cyBzaW5jZQo+ID4gPiBDT1cgcmVhbGx5IG1h
a2VzIGFic29sdXRlbHkgbm8gc2Vuc2UuIEhvdyB3b3VsZCB3ZSBlbmZvcmNlIHRoaXM/Cj4gPiBJ
biBSRE1BIHdlIHRlc3QKPiA+IAo+ID4gZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvaWJfY29yZV91
dmVyYnMuYzogICAgICAgaWYgKCEodm1hLT52bV9mbGFncyAmIFZNX1NIQVJFRCkpCj4gPiAKPiA+
IER1cmluZyBtbWFwIHRvIHJlamVjdCB1c2Ugb2YgTUFQX1BSSVZBVEUgb24gQkFSIHBhZ2VzLgo+
IAo+IFRoYXQncyBhIHJlYWxseSBnb29kIGlkZWEuIE1BUF9QUklWQVRFIGFuZCBhbnkgZHJpdmVy
IG1hcHBpbmdzIGRvZXNuJ3QKPiByZWFsbHkgd29yayBhdCBhbGwuCgpZZWFoIEkgZmVlbCBsaWtl
IHRoaXMgaXMgdGhlIG5leHQgcGF0Y2ggd2UgbmVlZCB0byBhZGQgb24gdGhpcyBsaXR0bGUKc2Vy
aWVzIG9mIGxvY2tpbmcgZG93biBkbWEtYnVmIG1tYXAgc2VtYW50aWNzLiBQcm9iYWJseSBzaG91
bGQgYWxzbyBwdXNoCnRoZXNlIGludG8gZHJtIGdlbSBtbWFwIGNvZGUgKGFuZCBtYXliZSB0dG0g
Y2FuIHN3aXRjaCBvdmVyIHRvIHRoYXQsIGl0J3MKcmVhbGx5IHRoZSBzYW1lKS4KCk9uZSBhdCBh
IHRpbWUuCi1EYW5pZWwKPiAKPiBDaHJpc3RpYW4uCj4gCj4gPiAKPiA+IEphc29uCj4gCgotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDov
L2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
