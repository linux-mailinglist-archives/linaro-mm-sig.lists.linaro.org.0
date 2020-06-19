Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A75219F97
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:06:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC22B66034
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:06:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BCAC9664F9; Thu,  9 Jul 2020 12:06:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63F6366703;
	Thu,  9 Jul 2020 11:34:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BF86F665BB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 19:51:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B42E0665BF; Fri, 19 Jun 2020 19:51:45 +0000 (UTC)
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by lists.linaro.org (Postfix) with ESMTPS id 0563A665BB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 19:51:45 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id r22so8629993qke.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 12:51:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zP3mPfj8fYVGpA7X3i9lQw/wDhwl6Nv+h6HgzhW86WQ=;
 b=BjlKbSVOUXhcyKU+6Y0lwPbt4BnLM3bdRQL9641rN1lkFONJH3b01HLF7pcj9/jPci
 nr8O1qjo3dynlgJ2rBtmnNpHEkNzQul98nVqECOlO+iYF3zbxofX8QkIRYa9nBDLZdxy
 fGxa8da+erDkPkCf3mg3yot5RBo7hZT3wpg6/s/TSC5r0rkjnFt1Gq0Pg8VRQC3InTyS
 9BgYyjaMiM3tHoViJvNCa/dGiE0GDfmY/WFqloZBIXeXKbORPAjeUYyATbCJj1pcQpPk
 GnvtSAyblCH9N6vY6UKyl5HzgxaE0rWmDb7Z7KDvZTPCqRg8BD0pogw+ePAawGWy1szv
 rbyg==
X-Gm-Message-State: AOAM532DL5XjZZVAu8tgcaUN+PvKx2kKEdNCTa3jcwRSK3BL8X6UYzAt
 MQlQTKk7jbcbGC3TCsimyXlbOg==
X-Google-Smtp-Source: ABdhPJyeNbiGf5pDE6/nVlB6izIza9irK+wIFfmkUW9Wq6/rfhl4M8xllFEi5LwJ5619wnq0QRE14Q==
X-Received: by 2002:a37:b401:: with SMTP id d1mr5401845qkf.206.1592596304691; 
 Fri, 19 Jun 2020 12:51:44 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id a81sm7609057qkb.24.2020.06.19.12.51.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 12:51:44 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jmN39-00B0gQ-Jd; Fri, 19 Jun 2020 16:51:43 -0300
Date: Fri, 19 Jun 2020 16:51:43 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Felix Kuehling <felix.kuehling@amd.com>
Message-ID: <20200619195143.GS6578@ziepe.ca>
References: <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <CADnq5_Pw_85Kzh1of=MbDi4g9POeF3jO4AJ7p2FjY5XZW0=vsQ@mail.gmail.com>
 <86f7f5e5-81a0-5429-5a6e-0d3b0860cfae@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86f7f5e5-81a0-5429-5a6e-0d3b0860cfae@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <jglisse@redhat.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
 annotations
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDM6MzA6MzJQTSAtMDQwMCwgRmVsaXggS3VlaGxpbmcg
d3JvdGU6Cj4gV2UgaGF2ZSBhIHBvdGVudGlhbCBwcm9ibGVtIHdpdGggQ1BVIHVwZGF0aW5nIHBh
Z2UgdGFibGVzIHdoaWxlIHRoZSBHUFUKPiBpcyByZXRyeWluZyBvbiBwYWdlIHRhYmxlIGVudHJp
ZXMgYmVjYXVzZSA2NCBiaXQgQ1BVIHRyYW5zYWN0aW9ucyBkb24ndAo+IGFycml2ZSBpbiBkZXZp
Y2UgbWVtb3J5IGF0b21pY2FsbHkuCgpFeGNlcHQgZm9yIDMyIGJpdCBwbGF0Zm9ybXMgYXRvbWlj
aXR5IGlzIGd1YXJlbnRlZWQgaWYgeW91IHVzZSB1bmNhY2hlZAp3cml0ZXEoKSB0byBhbGlnbmVk
IGFkZHJlc3Nlcy4uCgpUaGUgbGludXggZHJpdmVyIG1vZGVsIGJyZWFrcyBvZiB0aGUgd3JpdGVY
KCkgc3R1ZmYgaXMgbm90IGF0b21pYy4KCkphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
