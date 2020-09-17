Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2B926DED0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 16:55:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A2EC608E0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 14:55:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EC3E4666DC; Thu, 17 Sep 2020 14:55:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A50360C0C;
	Thu, 17 Sep 2020 14:54:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 68D6B608E0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 14:54:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5DCB460C0C; Thu, 17 Sep 2020 14:54:48 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by lists.linaro.org (Postfix) with ESMTPS id 23B0A608E0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 14:54:47 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id q13so3684301ejo.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 07:54:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=c1K4OLtO/JfamxhTGQNbBjJeRfDJiu5hBoeNqA7D5Kw=;
 b=EWdUT20InzDpfBcC8yBTKkqxFHBEJXF2rkimIk+KFtSFNnWHLtlGY/ADLpJsfAylEh
 GP3kAuHPwLLD2nTYunUsFb0/L70AA/PdNSd1ubXhCSAjt9s72/3kKSiOfXu8/zofvQlb
 cro6FgzA9eLVevlkUHjsWhLHRr3NYohyje7MR9mfawrLvDEIsSYM77rjNstUcFRjrpsA
 N3RAXG7Hm84u93BW81FQzJtTxW7MmL9bbtLjkgDfVtg8Krrv4kb/DaT//b5tJHrpZQ7+
 Wy7Ew+AcCit2lbHnL46mOMn6gFB8S5F4m65K2Mk2FRsT/Rxpcld8m9R77qfkqrXxFq3A
 TEFA==
X-Gm-Message-State: AOAM5331Ff6fDTeZNZNohYqz+FrRzP/GlREYg6w84nBk0NavaXrT0KRu
 83k3e6CJTsjO2+eZnht0CfY=
X-Google-Smtp-Source: ABdhPJyRIXuxIHC4AEt2itGA+aidcLmov+Te1dwtEYl317M/Ql/irqZHREoF1KD7oRMw6129NC5jPQ==
X-Received: by 2002:a17:906:660f:: with SMTP id
 b15mr32495703ejp.333.1600354486253; 
 Thu, 17 Sep 2020 07:54:46 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id j15sm114248ejs.5.2020.09.17.07.54.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Sep 2020 07:54:45 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>, christian.koenig@amd.com
References: <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
 <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
 <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
 <CAKMK7uHJNRzCJfWVSmMrLmGXE0qo+OCXiMd+zPTOkeG2pnVrmQ@mail.gmail.com>
 <8d8693db-a3f0-4f5f-3e32-57d23ca620f8@amd.com>
 <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
 <20200917113110.GE8409@ziepe.ca>
 <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
 <20200917121858.GF8409@ziepe.ca>
 <d82f08ee-2dec-18e8-fb06-d26f18ed777a@gmail.com>
 <20200917143551.GG8409@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <5b330920-c789-fac7-e9b1-49f3bc1097a8@gmail.com>
Date: Thu, 17 Sep 2020 16:54:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917143551.GG8409@ziepe.ca>
Content-Language: en-US
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

QW0gMTcuMDkuMjAgdW0gMTY6MzUgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gVGh1LCBT
ZXAgMTcsIDIwMjAgYXQgMDI6MjQ6MjlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQW0gMTcuMDkuMjAgdW0gMTQ6MTggc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4+PiBPbiBU
aHUsIFNlcCAxNywgMjAyMCBhdCAwMjowMzo0OFBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOgo+Pj4+IEFtIDE3LjA5LjIwIHVtIDEzOjMxIHNjaHJpZWIgSmFzb24gR3VudGhvcnBlOgo+
Pj4+PiBPbiBUaHUsIFNlcCAxNywgMjAyMCBhdCAxMDowOToxMkFNICswMjAwLCBEYW5pZWwgVmV0
dGVyIHdyb3RlOgo+Pj4+Pgo+Pj4+Pj4gWWVhaCwgYnV0IGl0IGRvZXNuJ3Qgd29yayB3aGVuIGZv
cndhcmRpbmcgZnJvbSB0aGUgZHJtIGNoYXJkZXYgdG8gdGhlCj4+Pj4+PiBkbWEtYnVmIG9uIHRo
ZSBpbXBvcnRlciBzaWRlLCBzaW5jZSB5b3UnZCBuZWVkIGEgdG9uIG9mIGRpZmZlcmVudAo+Pj4+
Pj4gYWRkcmVzcyBzcGFjZXMuIEFuZCB5b3Ugc3RpbGwgcmVseSBvbiB0aGUgY29yZSBjb2RlIHBp
Y2tpbmcgdXAgeW91cgo+Pj4+Pj4gcGdvZmYgbWFuZ2xpbmcsIHdoaWNoIGZlZWxzIGFib3V0IGFz
IHJpc2t5IHRvIG1lIGFzIHRoZSB2bWEgZmlsZQo+Pj4+Pj4gcG9pbnRlciB3cmFuZ2xpbmcgLSBp
ZiBpdCdzIG5vdCBjb25zaXN0ZW50bHkgYXBwbGllZCB0aGUgcmV2ZXJzZSBtYXAKPj4+Pj4+IGlz
IHRvYXN0IGFuZCB1bm1hcF9tYXBwaW5nX3JhbmdlIGRvZXNuJ3Qgd29yayBjb3JyZWN0bHkgZm9y
IG91ciBuZWVkcy4KPj4+Pj4gSSB3b3VsZCB0aGluayB0aGUgcGdvZmYgaGFzIHRvIGJlIHRyYW5z
bGF0ZWQgYXQgdGhlIHNhbWUgdGltZSB0aGUKPj4+Pj4gdm0tPnZtX2ZpbGUgaXMgY2hhbmdlZD8K
Pj4+Pj4KPj4+Pj4gVGhlIG93bmVyIG9mIHRoZSBkbWFfYnVmIHNob3VsZCBoYXZlIG9uZSB2aXJ0
dWFsIGFkZHJlc3Mgc3BhY2UgYW5kIEZELAo+Pj4+PiBhbGwgaXRzIGRtYSBidWZzIHNob3VsZCBi
ZSBsaW5rZWQgdG8gaXQsIGFuZCBhbGwgcGdvZmZzIHRyYW5zbGF0ZWQgdG8KPj4+Pj4gdGhhdCBz
cGFjZS4KPj4+PiBZZWFoLCB0aGF0IGlzIGV4YWN0bHkgbGlrZSBhbWRncHUgaXMgZG9pbmcgaXQu
Cj4+Pj4KPj4+PiBHb2luZyB0byBkb2N1bWVudCB0aGF0IHNvbWVob3cgd2hlbiBJJ20gZG9uZSB3
aXRoIFRUTSBjbGVhbnVwcy4KPj4+IEJUVywgd2hpbGUgcGVvcGxlIGFyZSBsb29raW5nIGF0IHRo
aXMsIGlzIHRoZXJlIGEgd2F5IHRvIGdvIGZyb20gYSBWTUEKPj4+IHRvIGEgZG1hX2J1ZiB0aGF0
IG93bnMgaXQ/Cj4+IE9ubHkgYSBkcml2ZXIgc3BlY2lmaWMgb25lLgo+IFNvdW5kcyBPSwo+Cj4+
IEZvciBUVE0gZHJpdmVycyB2bWEtPnZtX3ByaXZhdGVfZGF0YSBwb2ludHMgdG8gdGhlIGJ1ZmZl
ciBvYmplY3QuIE5vdCBzdXJlCj4+IGFib3V0IHRoZSBkcml2ZXJzIHVzaW5nIEdFTSBvbmx5Lgo+
IFdoeSBhcmUgZHJpdmVycyBpbiBjb250cm9sIG9mIHRoZSB2bWE/IEkgd291bGQgdGhpbmsgZG1h
X2J1ZiBzaG91bGQgYmUKPiB0aGUgdm1hIG93bmVyLiBJSVJDIG1vZHVsZSBsaWZldGltZSBjb3Jy
ZWN0bmVzcyBlc3NlbnRpYWxseSBoaW5ncyBvbgo+IHRoZSBtb2R1bGUgb3duZXIgb2YgdGhlIHN0
cnVjdCBmaWxlCgpCZWNhdXNlIHRoZSBwYWdlIGZhdWx0IGhhbmRsaW5nIGlzIGNvbXBsZXRlbHkg
ZHJpdmVyIHNwZWNpZmljLgoKV2UgY291bGQgaW5zdGFsbCBzb21lIERNQS1idWYgdm1vcHMsIGJ1
dCB0aGF0IHdvdWxkIGp1c3QgYmUgYW5vdGhlciAKbGF5ZXIgb2YgcmVkaXJlY3Rpb24uCgo+PiBX
aHkgYXJlIHlvdSBhc2tpbmc/Cj4gSSdtIHRoaW5raW5nIGFib3V0IHVzaW5nIGZpbmRfdm1hIG9u
IHNvbWV0aGluZyB0aGF0IGlzIG5vdAo+IGdldF91c2VyX3BhZ2VzKCknYWJsZSB0byBnbyB0byB0
aGUgdW5kZXJseWluZyBvYmplY3QsIGluIHRoaXMgY2FzZSBkbWEKPiBidWYuCj4KPiBTbywgdXNl
ciBWQSAtPiBmaW5kX3ZtYSAtPiBkbWFfYnVmIG9iamVjdCAtPiBkbWFfYnVmIG9wZXJhdGlvbnMg
b24gdGhlCj4gbWVtb3J5IGl0IHJlcHJlc2VudHMKCkFoLCB5ZXMgd2UgYXJlIGFscmVhZHkgZG9p
bmcgdGhpcyBpbiBhbWRncHUgYXMgd2VsbC4gQnV0IG9ubHkgZm9yIApETUEtYnVmcyBvciBtb3Jl
IGdlbmVyYWxseSBidWZmZXJzIHdoaWNoIGFyZSBtbWFwZWQgYnkgdGhpcyBkcml2ZXIgaW5zdGFu
Y2UuCgpTb21lIGFwcGxpY2F0aW9ucyBhcmUgYnJhaW5kZWFkIGVub3VnaCB0byBtbWFwKCkgYSBi
dWZmZXIgYW5kIHRoZW4gZ2l2ZSAKdXMgYmFjayB0aGUgQ1BVIHBvaW50ZXIgYW5kIHJlcXVlc3Qg
dG8gbWFrZSBpdCBhIGhhbmRsZSAodXNlcnB0cikgYWdhaW4uCgpUaGF0IGlzIGNsZWFybHkgZm9y
YmlkZGVuIGJ5IE9wZW5HTCwgT3BlbkNMIGFuZCBWdWxrYW4sIGJ1dCB0aGV5IHVzZSBpdCAKYW55
d2F5LgoKQ2hyaXN0aWFuLgoKPgo+IEphc29uCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdAo+IExpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IGh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
