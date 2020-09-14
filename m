Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97337268CEF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 16:09:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B15A1617D8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Sep 2020 14:09:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A1A94665F2; Mon, 14 Sep 2020 14:09:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87EC76650E;
	Mon, 14 Sep 2020 14:08:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F21486179C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 14:06:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E3DC7617F1; Mon, 14 Sep 2020 14:06:36 +0000 (UTC)
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by lists.linaro.org (Postfix) with ESMTPS id 75FC16179C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 14:06:35 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id u18so2397190iln.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Sep 2020 07:06:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1e7EGdpnwDvG5r/s0x2CkKUWWFCbx737ZFsalB8mkco=;
 b=p4NMiZNsYvtYlWINSJpO8IR6NWo0xax5oHUn03Xpsadc3+YqYM7cfn1GIow4FakcAo
 2h5www1mYopL9/W/uJFq4msFrjv3VkrrCiBwJTdCCNIlM/RDrWKZpYksqSmWq1eu7kwg
 gCTvHNk08yQauertQwRtavnL6AqAmVQNC+HUV4a+3wSEBB7JcpRQkwYHniBVDRFodwFo
 SM+7aEiwJpPIaRImHWJZ1e6JdPJ3N49qB9sBIRzcOB8ZPB0IHHCsVKjmBTjYpVPdK8SK
 1Akcx0sd7He7VyOove+it5DPpNcvOQFdQPcPdGIdUPKFmHNS0ixsaytWbLPzUzfJKVq2
 GHEg==
X-Gm-Message-State: AOAM530wVvOFfdpwe5cvMIG3RrL7zKJRSoX0B50t11KBJA/ZYEqmh1ZA
 0JWkaXbKlnOi18upQwpHrINAgw==
X-Google-Smtp-Source: ABdhPJyF/sDYVopZg/BDQqrwTkESVkwSEOqsuOwDOcgGLzbWX7RzPa41tgaMCaw6uC7C6w4gVaxWqg==
X-Received: by 2002:a05:6e02:5a5:: with SMTP id
 k5mr11987669ils.28.1600092394945; 
 Mon, 14 Sep 2020 07:06:34 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id v14sm5988511iol.17.2020.09.14.07.06.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 07:06:34 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kHp7o-005y7Z-Sl; Mon, 14 Sep 2020 11:06:32 -0300
Date: Mon, 14 Sep 2020 11:06:32 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20200914140632.GD1221970@ziepe.ca>
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, akpm@linux-foundation.org,
 linux-media@vger.kernel.org
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

T24gTW9uLCBTZXAgMTQsIDIwMjAgYXQgMDM6MzA6NDdQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxNC4wOS4yMCB1bSAxNToyOSBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6
Cj4gPiBIaSBBbmRyZXcsCj4gPiAKPiA+IEknbSB0aGUgbmV3IERNQS1idWYgbWFpbnRhaW5lciBh
bmQgRGFuaWVsIGFuZCBvdGhlcnMgY2FtZSB1cCB3aXRoCj4gPiBwYXRjaGVzIGV4dGVuZGluZyB0
aGUgdXNlIG9mIHRoZSBkbWFfYnVmX21tYXAoKSBmdW5jdGlvbi4KPiA+IAo+ID4gTm93IHRoaXMg
ZnVuY3Rpb24gaXMgZG9pbmcgc29tZXRoaW5nIGEgYml0IG9kZCBieSBjaGFuZ2luZyB0aGUKPiA+
IHZtYS0+dm1fZmlsZSB3aGlsZSBpbnN0YWxsaW5nIGEgVk1BIGluIHRoZSBtbWFwKCkgc3lzdGVt
IGNhbGwKCkl0IGRvZXNuJ3QgbG9vayBvYnZpb3VzbHkgc2FmZSBhcyBtbWFwX3JlZ2lvbigpIGhh
cyBhbiBpbnRlcmVzdGluZyBtaXgKb2YgZmlsZSBhbmQgdm1hLT5maWxlCgpFZyBpdCBjYWxscyBt
YXBwaW5nX3VubWFwX3dyaXRhYmxlKCkgdXNpbmcgYm90aCByb3V0ZXMKCldoYXQgYWJvdXQgc2Vj
dXJpdHk/IElzIGl0IE9LIHRoYXQgc29tZSBvdGhlciByYW5kb20gZmlsZSwgbWF5YmUgaW4KYW5v
dGhlciBwcm9jZXNzLCBpcyBiZWluZyBsaW5rZWQgdG8gdGhpcyBtbWFwPwoKPiA+IFRoZSBiYWNr
Z3JvdW5kIGhlcmUgaXMgdGhhdCBETUEtYnVmIGFsbG93cyBkZXZpY2UgZHJpdmVycyB0bwo+ID4g
ZXhwb3J0IGJ1ZmZlciB3aGljaCBhcmUgdGhlbiBpbXBvcnRlZCBpbnRvIGFub3RoZXIgZGV2aWNl
Cj4gPiBkcml2ZXIuIFRoZSBtbWFwKCkgaGFuZGxlciBvZiB0aGUgaW1wb3J0aW5nIGRldmljZSBk
cml2ZXIgdGhlbgo+ID4gZmluZCB0aGF0IHRoZSBwZ29mZiBiZWxvbmdzIHRvIHRoZSBleHBvcnRp
bmcgZGV2aWNlIGFuZCBzbwo+ID4gcmVkaXJlY3RzIHRoZSBtbWFwKCkgY2FsbCB0aGVyZS4KClNv
IHRoZSBwZ29mZiBpcyBzb21lIHZpcnR1YWxpemVkIHRoaW5nPwoKSmFzb24KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
