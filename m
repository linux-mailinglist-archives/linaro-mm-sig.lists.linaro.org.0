Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB6C30EDC4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 08:53:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EB326675C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 07:53:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9103F6675F; Thu,  4 Feb 2021 07:53:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B00466758;
	Thu,  4 Feb 2021 07:53:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C18860EE1
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 07:53:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82D1566758; Thu,  4 Feb 2021 07:53:20 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by lists.linaro.org (Postfix) with ESMTPS id 456B760EE1
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 07:53:19 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id r12so3654516ejb.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 23:53:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=J5U7ZYjn0rPv+kixT24fufumtWsmbJ865vX1gjaUF0g=;
 b=dnnOg/9jmopga8ZUkD/840acL2ZUhS245hVy8WvOMDAfCiI/fypGSx0uYjRuoB6Xro
 E39DMD9KUOZojP/JOEPIZP8UtqdBArK61sr2h7ujuERpEACTJxdUNS947Ezmeafc5QhQ
 RH2l8hRDaDPMJT8Cu8gnyvN/INafj6wO6ZCyru6bgtVrVYHZOim/JHE4Glh52pAiOkZK
 4TmMMOTggJr0eXEUKKhMJXwTZY2Ihe2A7BpgyVc4RBRADPcHMDiavMje2mFiGvYPHOWM
 A6DnUoCxVMtGkGnpSd4yACKOdEAjBWPH2ay/k4A16hTQaVH6/+fLZ+QjamGYZdZ+9xzN
 3g4Q==
X-Gm-Message-State: AOAM532nAcInB5wX37OH6inGePi/MlTkTmkyVLlKWFS9zhdjV4H1dvu0
 TFnT+qMfXcGmZhu2gH6sbUA=
X-Google-Smtp-Source: ABdhPJxmOioRMuyDm1Puy9HUCj+qibrAoLklBS9/vQschT6m+hlxaFoBzExrk2acsmkXA8jSOENf/g==
X-Received: by 2002:a17:907:9810:: with SMTP id
 ji16mr6686661ejc.394.1612425198446; 
 Wed, 03 Feb 2021 23:53:18 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id p16sm2010968edw.44.2021.02.03.23.53.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Feb 2021 23:53:17 -0800 (PST)
To: Suren Baghdasaryan <surenb@google.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
 <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <96fb8d14-fd9d-c21d-fa9d-81748421c6d3@gmail.com>
Date: Thu, 4 Feb 2021 08:53:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 Liam Mark <lmark@codeaurora.org>, Minchan Kim <minchan@kernel.org>,
 Android Kernel Team <kernel-team@android.com>,
 James Jones <jajones@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Christoph Hellwig <hch@infradead.org>, Linux MM <linux-mm@kvack.org>,
 John Stultz <john.stultz@linaro.org>, Matthew Wilcox <willy@infradead.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Brian Starkey <Brian.Starkey@arm.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

QW0gMDMuMDIuMjEgdW0gMjE6MjAgc2NocmllYiBTdXJlbiBCYWdoZGFzYXJ5YW46Cj4gW1NOSVBd
Cj4gSWYgdGhlcmUgaXMgYSByZWFzb24gdG8gc2V0IHRoaXMgZmxhZyBvdGhlciB0aGFuIGhpc3Rv
cmljYWwgdXNlIG9mCj4gY2FydmVvdXQgbWVtb3J5IHRoZW4gd2Ugd2FudGVkIHRvIGNhdGNoIHN1
Y2ggY2FzZXMgYW5kIGZpeCB0aGUgZHJpdmVycwo+IHRoYXQgbW92ZWQgdG8gdXNpbmcgZG1hYnVm
IGhlYXBzLiBIb3dldmVyIG1heWJlIHRoZXJlIGFyZSBvdGhlcgo+IHJlYXNvbnMgYW5kIGlmIHNv
IEkgd291bGQgYmUgdmVyeSBncmF0ZWZ1bCBpZiBzb21lb25lIGNvdWxkIGV4cGxhaW4KPiB0aGVt
LiBUaGF0IHdvdWxkIGhlbHAgbWUgdG8gY29tZSB1cCB3aXRoIGEgYmV0dGVyIHNvbHV0aW9uLgoK
V2VsbCBvbmUgbWFqb3IgcmVhc29uIGZvciB0aGlzIGlzIHRvIHByZXZlbnQgYWNjb3VudGluZyBv
ZiBETUEtYnVmIHBhZ2VzLgoKU28geW91IGFyZSBnb2luZyBpbiBjaXJjbGVzIGhlcmUgYW5kIHRy
eWluZyB0byBjaXJjdW12ZW50IGFuIGludGVudGlvbmFsIApiZWhhdmlvci4KCkRhbmllbCBpcyBy
aWdodCB0aGF0IHRoaXMgaXMgdGhlIGNvbXBsZXRlbHkgd3JvbmcgYXBwcm9hY2ggYW5kIHdlIG5l
ZWQgCnRvIHRha2UgYSBzdGVwIGJhY2sgYW5kIHRoaW5rIGFib3V0IGl0IG9uIGEgaGlnaGVyIGxl
dmVsLgoKR29pbmcgdG8gcmVwbGF5IHRvIGhpcyBtYWlsIGFzIHdlbGwuCgpSZWdhcmRzLApDaHJp
c3RpYW4uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
