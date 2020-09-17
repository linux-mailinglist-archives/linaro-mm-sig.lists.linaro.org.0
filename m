Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0332826E0E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 18:39:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E5A6666DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 16:39:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 229A0666E0; Thu, 17 Sep 2020 16:39:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFDBA666DF;
	Thu, 17 Sep 2020 16:39:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7D28960CB2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 16:39:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 72078666DD; Thu, 17 Sep 2020 16:39:10 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by lists.linaro.org (Postfix) with ESMTPS id 716B260CB2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 16:39:09 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id o16so2857713qkj.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 09:39:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+pVCxdlOuttO0x9cQvyDQMtVpumybNdFktYswl2oQtg=;
 b=h8516glVnU0DoR7f9ioVsofeVn4yfO8wNPwI3lVudrE12SttGQtYjKjOpHTF+wUubO
 //K6hvVU9xbVO5GOcpX38Yg4MwU8zQR0kjspKBMNUmpN9sX2ef/IIPoERHdfQOxSHr+G
 oXvBAdm6lbynjQClWL8CobBC9Bv/YjNSRd70Du4XkCPmytD9/J/f1eP1OlVasNOS4esj
 lrU1sP3sNpDfPvAZ4U4/gxAji+u2QL+QL5DzA0wevbkd/KuVQVL5aZR/Xi5ictSrwxGE
 7bkPRQRT8Cs+T5r7AZA+0CcD/wRXYPJUYMYKY2FEIAe2xfrw9bqywUq0NMNWTIyuYlNQ
 Sjbg==
X-Gm-Message-State: AOAM533tYAS4G3VP1/dNLqNVXfq2ggBKrjGJnB4ERKnH9ANV5RJOejdy
 dwCjhYgzx/tC6FFC9rWni0RvHg==
X-Google-Smtp-Source: ABdhPJzXIO0eWNvXRiCeMQQ1VpPTu2QRRGdP2RU1h44X5j1zQ/qFh5iONStmiiT0w4aqZdD7WTkmUw==
X-Received: by 2002:a37:5145:: with SMTP id f66mr17238436qkb.299.1600360749095; 
 Thu, 17 Sep 2020 09:39:09 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id 8sm207979qkd.47.2020.09.17.09.39.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 09:39:08 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kIww7-000WtZ-PQ; Thu, 17 Sep 2020 13:39:07 -0300
Date: Thu, 17 Sep 2020 13:39:07 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20200917163907.GI8409@ziepe.ca>
References: <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
 <20200917113110.GE8409@ziepe.ca>
 <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
 <20200917121858.GF8409@ziepe.ca>
 <d82f08ee-2dec-18e8-fb06-d26f18ed777a@gmail.com>
 <20200917143551.GG8409@ziepe.ca>
 <5b330920-c789-fac7-e9b1-49f3bc1097a8@gmail.com>
 <20200917152456.GH8409@ziepe.ca>
 <CAKMK7uHQLAHXC_aBZZco0e3tbAqnNuW8QdJk=-V-yM2khw5e=Q@mail.gmail.com>
 <b9e65f47-b5c8-db09-117a-a8e22a5b6c71@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9e65f47-b5c8-db09-117a-a8e22a5b6c71@amd.com>
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

T24gVGh1LCBTZXAgMTcsIDIwMjAgYXQgMDY6MDY6MTRQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiA+ID4gSWYgaXQgaXMgYWxyZWFkeSB0YWtpbmcgYSBwYWdlIGZhdWx0IEknbSBu
b3Qgc3VyZSB0aGUgZXh0cmEgZnVuY3Rpb24KPiA+ID4gY2FsbCBpbmRpcmVjdGlvbiBpcyBnb2lu
ZyB0byBiZSBhIGJpZyBkZWFsLiBIYXZpbmcgYSB1bmlmb3JtIFZNQQo+ID4gPiBzb3VuZHMgc2Fu
ZXIgdGhhbiBldmVyeSBkcml2ZXIgY3VzdG9tIHJvbGxpbmcgc29tZXRoaW5nLgo+ID4gPiAKPiA+
ID4gV2hlbiBJIHVud291bmQgYSBzaW1pbGFyIG1lc3MgaW4gUkRNQSBhbGwgdGhlIGN1c3RvbSBW
TUEgc3R1ZmYgaW4gdGhlCj4gPiA+IGRyaXZlcnMgdHVybmVkIG91dCB0byBiZSBnZW5lcmFsbHkg
YnVnZ3ksIGF0IGxlYXN0Lgo+ID4gPiAKPiA+ID4gSXMgdm1hLT52bV9maWxlLT5wcml2YXRlX2Rh
dGEgdW5pdmVyc2FsbHkgYSBkbWFfYnVmIHBvaW50ZXIgYXQgbGVhc3Q/Cj4gPiBOb3BlLiBJIHRo
aW5rIGlmIHlvdSB3YW50IHRoaXMgd2l0aG91dCBzb21lIGxhcmdlIHNjYWxlIHJld3JpdGUgb2Yg
YQo+ID4gbG90IG9mIGNvZGUgd2UnZCBuZWVkIGEgdm1vcHMtPmdldF9kbWFidWYgb3Igc2ltaWxh
ci4gTm90IHByZXR0eSwgYnV0Cj4gPiB3b3VsZCBnZXQgdGhlIGpvYiBkb25lLgo+IAo+IFllYWgs
IGFncmVlIHRoYXQgc291bmRzIGxpa2UgdGhlIHNpbXBsZXN0IGFwcHJvYWNoLgoKSSBkb24ndCB0
aGluayB0aGF0IHdpbGwgZmx5LCBpdCBpcyBjbGVhcmx5IG9ubHkgcGFwZXJpbmcgb3ZlciBhIG1l
c3MKaW5zaWRlIERSTS9kbWEgYnVmIDpcCgpKYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
