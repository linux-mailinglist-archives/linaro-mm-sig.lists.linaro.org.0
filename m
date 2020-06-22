Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E27219FB3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:10:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F702618E3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:10:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5E9A666588; Thu,  9 Jul 2020 12:10:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA4BE66715;
	Thu,  9 Jul 2020 11:34:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AD0A661633
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 11:46:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 85D1E61754; Mon, 22 Jun 2020 11:46:20 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by lists.linaro.org (Postfix) with ESMTPS id 9417661633
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 11:46:19 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id l17so15083061qki.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 04:46:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NBKzXepzy68inRcMiAHpgcaZ+EYis2uiV6fI4xhZtmM=;
 b=kqzI4j+NVUu2373Kc0UoOqQx9u9mgmy0NYswAkU3EIzOZxdjvgd81sJ+l8xaZbBqph
 pEkThzVIRsuFOTyybVW9psVM2gawJs2csq/+5qGoMqhni2jJkFnnQmXJLctLkpuELmK6
 zwGXEHUNCf01P/tI9h2srhhN1pVN/8eChB6iC1Y4H9MyhyDVU6Q8XJmSx7OXQCEzpKUa
 blVDb3nTLweFkyfGFJc/+4p70QTmaoveuwd3ZQCZaldASbsOjiXBZjiGEt2/kuAFluyA
 BzpyjAx6Y2GtZ87GHL2YIIbmvXuorDRwraG5vCv+lYR6K5jP5T3plU1b1Wcru/D0JXZH
 5zPg==
X-Gm-Message-State: AOAM531XqRaNVaFCUG06KvqW9+VIOZqJ9Cw9Eidqh4327zLo8266olrg
 Dco6kH+kWoCm25EaEzKNVCYRXg==
X-Google-Smtp-Source: ABdhPJxthYjyMVCe6ZAxMUNKsmIMBTQD1YPg4YWyLhscgW6iJ+jy7QK2ERT6it0ZxPEWrnvgAqzIOg==
X-Received: by 2002:ae9:c00d:: with SMTP id u13mr15622504qkk.434.1592826379164; 
 Mon, 22 Jun 2020 04:46:19 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id r37sm14964604qtk.34.2020.06.22.04.46.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 04:46:18 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jnKu1-00Brwt-CA; Mon, 22 Jun 2020 08:46:17 -0300
Date: Mon, 22 Jun 2020 08:46:17 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jerome Glisse <jglisse@redhat.com>
Message-ID: <20200622114617.GU6578@ziepe.ca>
References: <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <20200619181849.GR6578@ziepe.ca>
 <56008d64-772d-5757-6136-f20591ef71d2@amd.com>
 <20200619195538.GT6578@ziepe.ca>
 <20200619203147.GC13117@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619203147.GC13117@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Felix Kuehling <felix.kuehling@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Mika Kuoppala <mika.kuoppala@intel.com>
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDQ6MzE6NDdQTSAtMDQwMCwgSmVyb21lIEdsaXNzZSB3
cm90ZToKPiBOb3QgZG9hYmxlIGFzIHBhZ2UgcmVmY291bnQgY2FuIGNoYW5nZSBmb3IgdGhpbmdz
IHVucmVsYXRlZCB0byBHVVAsIHdpdGgKPiBKb2huIGNoYW5nZXMgd2UgY2FuIGlkZW50aWZ5IEdV
UCBhbmQgd2UgY291bGQgcG90ZW50aWFseSBjb3B5IEdVUGVkIHBhZ2UKPiBpbnN0ZWFkIG9mIENP
VyBidXQgdGhpcyBjYW4gcG90ZW50aWFseSBzbG93IGRvd24gZm9yaygpIGFuZCBpIGFtIG5vdCBz
dXJlCj4gaG93IGFjY2VwdGFibGUgdGhpcyB3b3VsZCBiZS4gQWxzbyB0aGlzIGRvZXMgbm90IHNv
bHZlIEdVUCBhZ2FpbnN0IHBhZ2UKPiB0aGF0IGFyZSBhbHJlYWR5IGluIGZvcmsgdHJlZSBpZSBw
YWdlIFAwIGlzIGluIHByb2Nlc3MgQSB3aGljaCBmb3JrcywKPiB3ZSBub3cgaGF2ZSBwYWdlIFAw
IGluIHByb2Nlc3MgQSBhbmQgQi4gTm93IHdlIGhhdmUgcHJvY2VzcyBBIHdoaWNoIGZvcmtzCj4g
YWdhaW4gYW5kIHdlIGhhdmUgcGFnZSBQMCBpbiBBLCBCLCBhbmQgQy4gSGVyZSBCIGFuZCBDIGFy
ZSB0d28gYnJhbmNoZXMKPiB3aXRoIHJvb3QgaW4gQS4gQiBhbmQvb3IgQyBjYW4ga2VlcCBmb3Jr
aW5nIGFuZCBncm93IHRoZSBmb3JrIHRyZWUuCgpGb3IgYSBsb25nIHRpbWUgbm93IFJETUEgaGFz
IGJyb2tlbiBDT1cgcGFnZXMgd2hlbiBjcmVhdGluZyB1c2VyIERNQQpyZWdpb25zLgoKVGhlIHBy
b2JsZW0gaGFzIGJlZW4gdGhhdCBmb3JrIHJlLUNPVydzIHJlZ2lvbnMgdGhhdCBoYWQgdGhlaXIg
Q09XCmJyb2tlbi4KClNvLCBpZiB5b3UgYnJlYWsgdGhlIENPVyB1cG9uIG1hcHBpbmcgYW5kIHBy
ZXZlbnQgZm9yayAoYW5kIG90aGVycykKZnJvbSBjb3B5aW5nIERNQSBwaW5uZWQgdGhlbiB5b3Un
ZCBjb3ZlciB0aGUgY2FzZXMuCgo+IFNlbWFudGljIHdhcyBjaGFuZ2Ugd2l0aCAxNzgzOTg1NmZk
NTg4ZjRhYjZiNzg5ZjQ4MmVkM2ZmZDdjNDAzZTFmIHRvIHNvbWUKPiB3aGF0ICJmaXgiIHRoYXQg
YnV0IEdVUCBmYXN0IGlzIHN0aWxsIHN1Y2NlcHRpYmxlIHRvIHRoaXMuCgpBaCwgc28gZXZlcnlv
bmUgYnJlYWtzIHRoZSBDT1cgbm93LCBub3QganVzdCBSRE1BLi4KCldoYXQgZG8geW91IG1lYW4g
J0dVUCBmYXN0IGlzIHN0aWxsIHN1Y2NlcHRpYmxlIHRvIHRoaXMnID8KCkphc29uCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
