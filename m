Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CD519288C61
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 17:16:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 678B56650A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Oct 2020 15:16:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 53DFA66518; Fri,  9 Oct 2020 15:16:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B05F06606C;
	Fri,  9 Oct 2020 15:15:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 50EFF60F40
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:15:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4261A6606C; Fri,  9 Oct 2020 15:15:47 +0000 (UTC)
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by lists.linaro.org (Postfix) with ESMTPS id ADA6760F40
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Oct 2020 15:15:41 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id h12so6632335qtu.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Oct 2020 08:15:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=XeahOZa88YOWCvFbh6+bgMvAS5KgvoSIrQZEwsz1AvI=;
 b=ijaCp7cq4FZDO1HU0siGmJJyDUJZTIfw+qPobra6IAKHH3WskSXcex4/Lr/82T8KZP
 OlYc0jLYxqwotORwjq01bIZyNPI+ozfjYgyBXj5mfdBzHnAgCGKiriK2lONqqX7X0g1c
 /7gbWXKq3zRWEUE1M93OqkbGSihG6zr45qu5fuIGdNQdoUasqct+3zcfppxF3TxHAqlP
 9EsLiawHim/sK37V4ZLifA6nWhgnpVLL+o8ddboTmwgaTMJf8sPARDa92EWVEhI3yUG6
 EjN4U3XabQkYDt+otRPCFfDWGbK3s8A6A03o0VAE26/quWhkjXgJG9yVj83Kg1oOH1Nu
 JxFA==
X-Gm-Message-State: AOAM531yk1rjFD0T/iIYzR4Smnbs7NnkVXWyMc/NiaedsFQdC2m0WRn7
 OoOnojSLWAQJj8AJgt++buzBVw==
X-Google-Smtp-Source: ABdhPJxmLOKDbXxWMI0YoJdQfdZgk6XHAKS3TkXBLEezFKBn9UGmtIW842jk7ARXlak9j8uix2/hmg==
X-Received: by 2002:ac8:545a:: with SMTP id d26mr14359060qtq.124.1602256541398; 
 Fri, 09 Oct 2020 08:15:41 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id s123sm6228708qkd.128.2020.10.09.08.15.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:15:40 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kQu7Q-0020Yl-8k; Fri, 09 Oct 2020 12:15:40 -0300
Date: Fri, 9 Oct 2020 12:15:40 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20201009151540.GX5177@ziepe.ca>
References: <20201009150342.1979-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009150342.1979-1-christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: jhubbard@nvidia.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org, willy@infradead.org, daniel@ffwll.ch, airlied@redhat.com,
 akpm@linux-foundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/6] mm: mmap: fix fput in error path
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

T24gRnJpLCBPY3QgMDksIDIwMjAgYXQgMDU6MDM6MzdQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBQYXRjaCAiNDk1YzEwY2MxYzBjIENIUk9NSVVNOiBkbWEtYnVmOiByZXN0b3Jl
IGFyZ3MuLi4iCj4gYWRkcyBhIHdvcmthcm91bmQgZm9yIGEgYnVnIGluIG1tYXBfcmVnaW9uLgo+
IAo+IEFzIHRoZSBjb21tZW50IHN0YXRlcyAtPm1tYXAoKSBjYWxsYmFjayBjYW4gY2hhbmdlCj4g
dm1hLT52bV9maWxlIGFuZCBzbyB3ZSBtaWdodCBjYWxsIGZwdXQoKSBvbiB0aGUgd3JvbmcgZmls
ZS4KPiAKPiBSZXZlcnQgdGhlIHdvcmthcm91bmQgYW5kIHByb3BlciBmaXggdGhpcyBpbiBtbWFw
X3JlZ2lvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+Cj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAyMiArKysrKy0t
LS0tLS0tLS0tLS0tLS0tCj4gIG1tL21tYXAuYyAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jCj4gaW5kZXggYTZiYTRkNTk4ZjBlLi5lZGQ1NzQwMmE0OGEgMTAwNjQ0Cj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IEBAIC0xMTQzLDkgKzExNDMsNiBAQCBFWFBPUlRf
U1lNQk9MX0dQTChkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKTsKPiAgaW50IGRtYV9idWZfbW1hcChz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKPiAgCQkg
dW5zaWduZWQgbG9uZyBwZ29mZikKPiAgewo+IC0Jc3RydWN0IGZpbGUgKm9sZGZpbGU7Cj4gLQlp
bnQgcmV0Owo+IC0KPiAgCWlmIChXQVJOX09OKCFkbWFidWYgfHwgIXZtYSkpCj4gIAkJcmV0dXJu
IC1FSU5WQUw7Cj4gIAo+IEBAIC0xMTYzLDIyICsxMTYwLDEzIEBAIGludCBkbWFfYnVmX21tYXAo
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4gIAkJ
cmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICAJLyogcmVhZGp1c3QgdGhlIHZtYSAqLwo+IC0JZ2V0X2Zp
bGUoZG1hYnVmLT5maWxlKTsKPiAtCW9sZGZpbGUgPSB2bWEtPnZtX2ZpbGU7Cj4gLQl2bWEtPnZt
X2ZpbGUgPSBkbWFidWYtPmZpbGU7Cj4gLQl2bWEtPnZtX3Bnb2ZmID0gcGdvZmY7Cj4gKwlpZiAo
dm1hLT52bV9maWxlKQo+ICsJCWZwdXQodm1hLT52bV9maWxlKTsKClRoaXMgaWYgaXMgcmVkdW5k
YW50IHRvbwoKQnV0IG90aGVyd2lzZQoKUmV2aWV3ZWQtYnk6IEphc29uIEd1bnRob3JwZSA8amdn
QG52aWRpYS5jb20+CgpUaGFua3MsCkphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
