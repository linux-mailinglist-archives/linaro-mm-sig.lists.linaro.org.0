Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 35876219F46
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:48:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 609CB664F9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:48:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5165166558; Thu,  9 Jul 2020 11:48:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F66066604;
	Thu,  9 Jul 2020 11:34:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E315A60A08
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 14:53:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D600D61633; Tue, 16 Jun 2020 14:53:14 +0000 (UTC)
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1580F60A08
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 14:53:14 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id fc4so9607523qvb.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 07:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=H9Q21GJcnralnv81ky+DYZCuyhzGkXe+xlvLrhcRUVI=;
 b=Ut6Xw7NUsUPvrWLgqdjHYXMoYkvJDHlKdMANKPFsJ/A0u3gYApfQ8HOhCMwl/bKkBW
 9kya3l/s7WZLpqwc3nKqRSfLsSsGPWHImh27ai5JB5NPyL3XLdAsWITLNU2j/ufp8m6x
 OrdTYTLcMgdxTgrBtJSSMLQqwyTgG1rsczCG+dOLRVdTtxg4qhQdwU8vGp3jT3C+47Xh
 4/iWcfwj1QyZPaUMYV6XBxKNSjIZHZCm0j9ZiOn/EEJr6gekWb4JcE7wNXjjRqIEewr9
 yZxnztWAeRMQdTMydgACNrW5Onyqja5tB61kLqaIVmfAOm6ZbIlop4rbHadPrSJnJg+z
 8svA==
X-Gm-Message-State: AOAM531S6X1M46vZ/yrvpYpA4LVE+to6i+AuhdVvb41V2mLzKxUucBoI
 ukZ1qOEIRMJNNwd3jRmdOt7vbUiLpYNygA==
X-Google-Smtp-Source: ABdhPJzP5DGSQb5Sh+luEoCiwZvsmX+7FP3MYwRCXpBsltvvGKDh3l1qc0mmf+FYXhbSQFkMBoXxZQ==
X-Received: by 2002:a0c:e9cd:: with SMTP id q13mr2731630qvo.23.1592319193724; 
 Tue, 16 Jun 2020 07:53:13 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id g9sm14433034qtq.66.2020.06.16.07.53.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 07:53:13 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jlCxc-0096j7-MB; Tue, 16 Jun 2020 11:53:12 -0300
Date: Tue, 16 Jun 2020 11:53:12 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Thomas =?utf-8?B?SGVsbHN0csO2bSAoSW50ZWwp?= <thomas_os@shipmail.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Message-ID: <20200616145312.GC6578@ziepe.ca>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616120719.GL20149@phenom.ffwll.local>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
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

T24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDI6MDc6MTlQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiA+ID4gSSd2ZSBwaW5nZWQgYSBidW5jaCBvZiBhcm1zb2MgZ3B1IGRyaXZlciBwZW9w
bGUgYW5kIGFzayB0aGVtIGhvdyBtdWNoIHRoaXMKPiA+ID4gaHVydHMsIHNvIHRoYXQgd2UgaGF2
ZSBhIGNsZWFyIGFuc3dlci4gT24geDg2IEkgZG9uJ3QgdGhpbmsgd2UgaGF2ZSBtdWNoCj4gPiA+
IG9mIGEgY2hvaWNlIG9uIHRoaXMsIHdpdGggdXNlcnB0ciBpbiBhbWQgYW5kIGk5MTUgYW5kIGht
bSB3b3JrIGluIG5vdXZlYXUKPiA+ID4gKGJ1dCBub3V2ZWF1IEkgdGhpbmsgZG9lc24ndCB1c2Ug
ZG1hX2ZlbmNlIGluIHRoZXJlKS4gCj4gPiAKPiA+IFJpZ2h0LCBub3Igd2lsbCBSRE1BIE9EUC4g
Cj4gCj4gSG0sIHdoYXQncyB0aGUgY29udGV4dCBoZXJlPyBJIHRob3VnaHQgUkRNQSBzaWRlIHlv
dSByZWFsbHkgZG9uJ3Qgd2FudAo+IGRtYV9mZW5jZSBpbiBtbXVfbm90aWZpZXJzLCBzbyBub3Qg
Y2xlYXIgdG8gbWUgd2hhdCB5b3UncmUgYWdyZWVpbmcgb24KPiBoZXJlLgoKcmRtYSBkb2VzIG5v
dCB1c2UgZG1hX2ZlbmNlIGF0IGFsbCwgYW5kIHRob3VnaCBpdCBpcyBoYXJkIHRvIHRlbGwsIEkK
ZGlkbid0IG5vdGljZSBhIGRtYV9mZW5jZSBpbiB0aGUgbm91dmVhdSBpbnZhbGlkYXRpb24gY2Fs
bCBwYXRoLgoKQXQgdGhlIHZlcnkgbGVhc3QgSSB0aGluayB0aGVyZSBzaG91bGQgYmUgc29tZSBi
aWcgd2FybmluZyB0aGF0CmRtYV9mZW5jZSBpbiBub3RpZmllcnMgc2hvdWxkIGJlIGF2b2lkZWQu
CgpJZSBpdCBpcyBzdHJhbmdlIHRoYXQgdGhlIG5ldyB0b3RhbGx5LW5vdC1hLWdwdSBkcml2ZXJz
IHVzZSBkbWFfZmVuY2UsCnRoZXkgc3VyZWx5IGRvbid0IGhhdmUgdGhlIHNhbWUgY29uc3RyYWlu
dHMgYXMgdGhlIGV4aXN0aW5nIEdQVSB3b3JsZCwKYW5kIGl0IHdvdWxkIGJlIGFubm95aW5nIHRv
IHNlZSBkbWFfZmVuY2Ugbm90aWZpZXJzIHNwcmluZyB1cCBpbiB0aGVtCgpKYXNvbgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
